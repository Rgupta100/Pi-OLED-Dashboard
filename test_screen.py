from luma.core.interface.serial import i2c
from luma.oled.device import ssd1306
from luma.core.render import canvas
import time

# Initialize the I2C interface on Port 1
# This uses Pins 3 (SDA) and 5 (SCL)
serial = i2c(port=1, address=0x3C)
device = ssd1306(serial)

# Use the 'canvas' context to draw
with canvas(device) as draw:
    # draw.text((x, y), text, fill_color)
    # Centering roughly for a 128x64 screen
    draw.text((30, 25), "Hello World", fill="white")

# Keep the message on the screen for a few seconds
time.sleep(10)
