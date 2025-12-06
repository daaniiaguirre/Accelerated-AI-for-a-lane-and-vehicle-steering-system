import os
import cv2
import numpy as np
import tensorflow as tf
from tensorflow.keras import layers, models
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split

# --- CONFIGURATION ---
IMG_WIDTH = 64
IMG_HEIGHT = 64
INPUT_SHAPE = (IMG_HEIGHT, IMG_WIDTH, 1)
DATA_DIR = "dataset" 

# --- FUNCTION TO EXPORT WEIGHTS TO C HEADER ---
def save_weights_header(model, filename):
    print(f"Exporting weights to {filename}...")
    with open(filename, 'w') as f:
        f.write("#ifndef WEIGHTS_H\n#define WEIGHTS_H\n\n")
        
        for layer in model.layers:
            # We only extract weights from Conv2D and Dense layers
            if isinstance(layer, (layers.Conv2D, layers.Dense)):
                weights = layer.get_weights()
                if len(weights) > 0:
                    w = weights[0] # Kernels / Weights
                    b = weights[1] # Biases
                    
                    name = layer.name
                    
                    # Flatten weights for continuous C-array access
                    w_flat = w.flatten()
                    
                    f.write(f"// Layer: {name}\n")
                    f.write(f"const float {name}_w[{len(w_flat)}] = {{\n")
                    f.write(", ".join(map(str, w_flat)))
                    f.write("\n};\n\n")
                    
                    f.write(f"const float {name}_b[{len(b)}] = {{\n")
                    f.write(", ".join(map(str, b)))
                    f.write("\n};\n\n")
                
        f.write("#endif\n")
        print(f"Success! Weights saved to {filename}")

# --- DATA LOADING & BALANCING ---
def load_balanced_data(data_dir):
    all_images = []
    all_labels = []
    
    print("Loading raw images...")
    valid_folders = ["0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9"]
    
    for folder_name in valid_folders:
        folder_path = os.path.join(data_dir, folder_name)
        if not os.path.isdir(folder_path):
            continue
            
        try:
            label_val = float(folder_name)
            for img_name in os.listdir(folder_path):
                if img_name.endswith(".jpg"):
                    img_path = os.path.join(folder_path, img_name)
                    img = cv2.imread(img_path, 0)
                    if img is None: continue
                    img = cv2.resize(img, (IMG_WIDTH, IMG_HEIGHT))
                    all_images.append(img)
                    all_labels.append(label_val)
        except ValueError:
            continue

    # Convert to numpy arrays
    X_raw = np.array(all_images)
    y_raw = np.array(all_labels)
    
    if len(y_raw) == 0:
        raise Exception("No data found. Check DATA_DIR.")

    # Identify Indices
    idx_left = np.where(y_raw < 0.45)[0] 
    idx_center = np.where((y_raw >= 0.45) & (y_raw <= 0.55))[0]
    idx_right = np.where(y_raw > 0.55)[0]

    # Balance Dataset
    count_left, count_center, count_right = len(idx_left), len(idx_center), len(idx_right)
    print(f"Raw Distribution -> Left: {count_left}, Center: {count_center}, Right: {count_right}")

    # Find minimum count
    min_count = min(count_left, count_center, count_right)
    print(f"Balancing dataset to {min_count} images per group")

    if min_count == 0:
        raise Exception("Cannot balance: One class has 0 images.")

    # Randomly select balanced indices
    np.random.seed(42)  # Set seed for reproducibility
    idx_left_balanced = np.random.choice(idx_left, min_count, replace=False)
    idx_center_balanced = np.random.choice(idx_center, min_count, replace=False)
    idx_right_balanced = np.random.choice(idx_right, min_count, replace=False)
    
    final_indices = np.concatenate([idx_left_balanced, idx_center_balanced, idx_right_balanced])
    np.random.shuffle(final_indices)
    
    #
    X_balanced = X_raw[final_indices].astype('float32') / 255.0 # Normalize to [0, 1]
    X_balanced = X_balanced.reshape(-1, IMG_HEIGHT, IMG_WIDTH, 1) 
    y_balanced = y_raw[final_indices]
    
    return X_balanced, y_balanced

# --- MAIN EXECUTION ---

# 1. Load Data
try:
    X, y = load_balanced_data(DATA_DIR)
except Exception as e:
    print(e)
    exit()

# 2. Split Data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# 3. Define Model
model = models.Sequential([
    layers.Conv2D(4, (3, 3), activation='relu', input_shape=INPUT_SHAPE, name='conv1'),
    layers.MaxPooling2D((2, 2), name='pool1'),
    
    layers.Conv2D(8, (3, 3), activation='relu', name='conv2'),
    layers.MaxPooling2D((2, 2), name='pool2'),
    
    layers.Flatten(name='flatten'),
    
    layers.Dense(16, activation='relu', name='dense1'),
    layers.Dense(1, activation='sigmoid', name='output') 
])

model.compile(optimizer='adam', loss='mse', metrics=['mae'])

# 4. Train
print("Starting training...")
history = model.fit(X_train, y_train, epochs=25, batch_size=16, validation_data=(X_test, y_test))

# 5. Evaluate and Visualize
plt.figure(figsize=(12, 5))

# Plot Loss
plt.subplot(1, 2, 1)
plt.plot(history.history['loss'], label='Train Loss')
plt.plot(history.history['val_loss'], label='Val Loss')
plt.title('Training Loss (MSE)')
plt.legend()

# Plot Predictions
plt.subplot(1, 2, 2)
preds = model.predict(X_test)
plt.scatter(y_test, preds, alpha=0.6, c='blue')
plt.plot([0, 1], [0, 1], 'r--') 
plt.title('Predicted vs Actual (Test Set)')
plt.grid(True)

plt.tight_layout()
plt.savefig("training_performance.jpg", dpi=300)
print("Performance plot saved as 'training_performance.jpg'")
# plt.show() # Commented out so it runs smoothly in terminals

# 6. Save Model
model.save("balanced_car_model.h5")
print("Balanced model saved.")

# 7. EXPORT WEIGHTS DIRECTLY
save_weights_header(model, "weights.h")