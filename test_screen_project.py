from luma.core.interface.serial import i2c
from luma.oled.device import ssd1306
from luma.core.render import canvas
import time

# Initialize
serial = i2c(port=1, address=0x3C)
device = ssd1306(serial)

print("Starting hardware test...")

# This keeps the script alive for 10 seconds
start_time = time.time()
while time.time() - start_time < 10:
    with canvas(device) as draw:
        # Draw a white border and text
        draw.rectangle(device.bounding_box, outline="white", fill="black")
        draw.text((30, 20), "HARDWARE OK", fill="white")
    time.sleep(0.1)

print("Test complete.")
