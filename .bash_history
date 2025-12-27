hostname -I
sudo nmcli connection modify "netplan-wlan0-KR2026" ipv4.addresses 10.0.0.200/24 ipv4.method manual
sudo nmcli connection modify "netplan-wlan0-KR2026" ipv4.gateway 10.0.0.1 ipv4.dns "8.8.8.8,1.1.1.1"
sudo nmcli connection up "netplan-wlan0-KR2026"
sudo raspi-config
curl -sSL https://install.pi-hole.net | bash
pihole-a-p
pihole -a -p
pihole setpassword
sudo pihole setpassword
http://10.0.0.200/admin
exit
sudo poweroff
libcamera-hello --list-cameras
pihole status
pihole disable
sudo apt update
sudo apt install libcamera-apps -y
libcamera-hello --list-cameras
rpicam-hello --list-cameras
vcgencmd get_camera
sudo poweroff
rpicam-hello --list-cameras
vcgencmd get_camera
sudo poweroff
rpicam-hello --list-cameras
vcgencmd get_camera
rpicam-hello --list-cameras
sudo poweroff
rpicam-hello --list-cameras
vcgencmd get_camera
sudo nano /boot/firmware/config.txt
sudo reboot
rpicam-hello --list-cameras
vcgencmd get_camera
sudo poweroff
rpicam-hello --list-cameras
vcgencmd get_camera
sudo poweroff
rpicam-hello --list-cameras
libcamera-hello
rpicam-hello -t 0
ricam-hello -t 0
rpicam-still -o ~/test.jpg
rpicam-hello -t 0 --qt-preview
rpicam-still -o ~/test.jpg
c;ear
clear
sudo apt update && sudo apt upgrade -y
sudo poweroff
sudo apt update
sudo apt upgrade -y
sudo apt install python3-picamera2 python3-opencv python3-numpy -y
nano motion_detector.py
python3 motion_detector.py
nano motion_detector.py
python3 motion_detector.py
sudo dphys-swapfile swapoff
sudo nano /etc/rpi/swap.conf.d/80-use-swapfile.conf
python3 -m http.server 8000
mkdir ~/captures
cd ~/captures
python3 -m http.server 8000
sudo mkdir -p /etc/rpi/swap.conf.d/
sudo nano /etc/rpi/swap.conf.d/80-use-swapfile.conf
sudo systemctl restart rpi-swap
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
free -h
python3 motion_detector.py
rm motion_detector.py
nano motion_detector.py
python3 motion_detector.py
nano motion_detector.py
python3 motion_detector.py
git init
git add motion_detector.py
git commit -m "Initial commit: Headless motion detection for Pi Zero 2 W"
git config --global user.email "raghavbgupta2007@gmail.com"
git config --global user.name "Raghav Gupta"
git init
git add motion_detector.py
git commit -m "Initial commit: Pi Zero 2 W motion detection system"
git branch -M main
git remote add origin https://github.com/YourUsername/pi-motion-security.git
git remote add origin https://github.com/Rgupta100/pi-motion-security.git
git remote set-url origin https://github.com/Rgupta100/pi-motion-security.git
git push -u origin main
git remote set-url origin https://github.com/Rgupta100/Pi-Motion-Camera.git
git push -u origin main
sudo shutdown now
sudo raspi-config
ls /dev/spi*
sudo pip install st7735 pillow --break-system-packages
nano test_screen.py
python test_screen.py
sudo pip install gpiodevice --break-system-packages
python test_screen.py
test_screen.py
sudo pip install st7735 pillow --break-system-packages
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
sudo raspi-config
sudo reboot
sudo apt-get install -y i2c-tools
i2cdetect -y 1
sudo pip install luma.oled --break-system-packages
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python test_screen.py
nano test_screen.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py

python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
pip install gpiozero
sudo apt update
sudo apt install python3-gpiozero python3-psutil
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py

python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
python screen_project.py
nano screen_project.py
git config --global user.name "Raghav Gupta"
git config --global user.email "raghavbgupta2007@gmail.com"
git init
git add screen_project.py
git commit -m "First version of OLED dashboard"
git remote add origin https://github.com/Rgupta100/Pi-OLED-Dashboard.git
git branch -M main
git push -u origin main
sudo poweroff
sudo apt update
sudo apt install stress
