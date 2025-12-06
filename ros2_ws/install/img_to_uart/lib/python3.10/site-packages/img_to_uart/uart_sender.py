import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import serial
import time
import numpy as np


class UartSender(Node):
    def __init__(self):
        super().__init__('uart_sender')

        # --- CONFIGURATION ---
        self.serial_port = '/dev/ttyUSB1'
        self.baud_rate = 115200 
        self.target_size = (64, 64)
        self.subscription = self.create_subscription(
            Image,
            '/image_raw',
            self.listener_callback,
            10)
        self.br = CvBridge()
        
        # Connection setup
        self.ser = None
        try:
            self.ser = serial.Serial(self.serial_port, self.baud_rate, timeout=1)
            # Clear buffers 
            self.ser.reset_input_buffer()
            self.ser.reset_output_buffer()
            self.get_logger().info(f"Connected to UART at {self.serial_port}")
        except serial.SerialException as e:
            self.get_logger().error(f"Could not open serial port: {e}")

    def listener_callback(self, data):
        if self.ser is None:
            return

        try:
            # 1. Convert to OpenCV
            current_frame = self.br.imgmsg_to_cv2(data, "bgr8")
        except Exception as e:
            self.get_logger().error(f"Conversion error: {e}")
            return

        # 2. Resize and Grayscale
        small_frame = cv2.resize(current_frame, self.target_size)
        gray_frame = cv2.cvtColor(small_frame, cv2.COLOR_BGR2GRAY)

        # 3. Normalize (0 to 1)
        normalized_frame = (gray_frame / 255.0).astype(np.float32)
        flat_data = normalized_frame.flatten()

        # ------------- 4. Create Text Block -------------
        # We format exactly like the SD card: "0.5412\n"
        
        lines = [f"{pixel:.6f}" for pixel in flat_data] # Using 6 decimals matches standard float precision
        text_payload = "\n".join(lines) + "\n" # Join with newlines and add one at the end

        # 5. Send over UART
        try:
            # Encode to bytes (ASCII)
            byte_data = text_payload.encode('utf-8')
            
            # Write data
            bytes_written = self.ser.write(byte_data)
            
            # Optional: Flush to ensure it leaves the PC buffer immediately
            self.ser.flush() 
            
            self.get_logger().info(f"Sent frame: {len(lines)} pixels, {bytes_written} bytes.")
            
        except serial.SerialException as e:
             self.get_logger().error(f"Serial write failed: {e}")


def main(args=None):
    rclpy.init(args=args)
    uart_sender = UartSender()
    try:
        rclpy.spin(uart_sender)
    except KeyboardInterrupt:
        pass
    finally:
        if uart_sender.ser:
            uart_sender.ser.close()
        uart_sender.destroy_node()
        rclpy.shutdown()



# --------------VISUALIZER NODE---------------
# class ImageVisualizer(Node):
#     def __init__(self):
#         super().__init__('uart_sender') # We keep the node name the same for simplicity

#         # Subscribe to the camera topic
#         self.subscription = self.create_subscription(
#             Image,
#             '/image_raw',
#             self.listener_callback,
#             10)
#         self.br = CvBridge()
#         self.get_logger().info("Visualizer started! Waiting for incoming images...")

#     def listener_callback(self, data):
#         try:
#             # 1. Convert ROS Image message to OpenCV image
#             current_frame = self.br.imgmsg_to_cv2(data, "bgr8")
#             # small_frame = cv2.resize(current_frame, (64, 64))

#             # 2. Display the image in a window
#             cv2.imshow("ROS 2 Camera Feed", current_frame)

#             # 3. Required by OpenCV to update the window (1ms delay)
#             cv2.waitKey(1)

#         except Exception as e:
#             self.get_logger().error(f"Error processing image: {e}")

# def main(args=None):
#     rclpy.init(args=args)
#     visualizer = ImageVisualizer()

#     try:
#         rclpy.spin(visualizer)
#     except KeyboardInterrupt:
#         pass
#     finally:
#         # Clean up
#         visualizer.destroy_node()
#         rclpy.shutdown()
#         cv2.destroyAllWindows()

if __name__ == '__main__':
    main()