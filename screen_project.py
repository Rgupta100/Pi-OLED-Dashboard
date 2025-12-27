from luma.core.interface.serial import i2c
from luma.oled.device import ssd1306
from luma.core.render import canvas
from PIL import ImageFont
from gpiozero import CPUTemperature
import subprocess
import time
import psutil
import shutil

serial = i2c(port=1, address=0x3C)
device = ssd1306(serial)

my_font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf", 10)
my_font_2 = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf", 15)

while True:
	IP = subprocess.check_output(["hostname", "-I"]).decode('utf-8').strip()
	IP = IP.split()
	temp = CPUTemperature()
	temp = temp.temperature
	CPU_Usage = psutil.cpu_percent(interval=None)
	Ram = psutil.virtual_memory()
	Ram_Used = int(Ram.used / (1024 * 1024))
	usage = shutil.disk_usage("/")
	Memory_free =  usage.free / (1024**3)
	Memory_free = round(Memory_free,2)
	wifi = subprocess.check_output(["iwconfig", "wlan0"]).decode("utf-8")
	wifi = wifi.split()
	wifi = wifi[3].split("\"")

	if temp > 70:
		for i in range(3):
			device.clear()
			time.sleep(1)
			with canvas(device) as draw:
				draw.text((0, 25),"Temp Too HIGH",font=my_font_2, fill="white")
			time.sleep(1)
	elif temp < 10:
		for i in range(3):
			device.clear()
			time.sleep(1)
			with canvas(device) as draw:
				draw.text((0, 25),"Temp Too LOW",font=my_font_2, fill="white")
			time.sleep(1)
	else:
		with canvas(device) as draw:
			draw.text((0, 0), "IP = ",font=my_font, fill="white")
			draw.text((23, 0), IP[0] ,font=my_font, fill="white")
			draw.text((0, 10), "Temperature = ",font=my_font, fill="white")
			draw.text((80, 10), str(temp) ,font=my_font, fill="white")
			draw.text((0, 20), "CPU Usage = ",font=my_font, fill="white")
			draw.text((70, 20), str(CPU_Usage) ,font=my_font, fill="white")
			draw.text((0, 30), "Ram Usage = ",font=my_font, fill="white")
			draw.text((70, 30), str(Ram_Used),font=my_font, fill="white")
			draw.text((0, 40), "Memory Free = ",font=my_font, fill="white")
			draw.text((80, 40), str(Memory_free),font=my_font, fill="white")
			draw.text((0, 50), "Wifi = ",font=my_font, fill="white")
			draw.text((33, 50), wifi[1],font=my_font, fill="white")
		time.sleep(1)

