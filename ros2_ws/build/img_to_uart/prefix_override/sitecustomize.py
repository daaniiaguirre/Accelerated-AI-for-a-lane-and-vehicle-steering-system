import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/ros2_ws/install/img_to_uart'
