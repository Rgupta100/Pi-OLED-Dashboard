import cv2
import numpy as np
from picamera2 import Picamera2
import datetime
import time

# 1. Initialize the Camera
picam2 = Picamera2()

# 2. Configure for Headless mode (No window)
# This prevents the script from hanging in PowerShell
config = picam2.create_video_configuration(main={"size": (640, 480)})
picam2.configure(config)
picam2.start()

print("Monitoring for motion... (Press Ctrl+C to stop)")
time.sleep(2) # Let sensor adjust to light

avg = None

try:
    while True:
        # Capture frame as a numerical array
        frame = picam2.capture_array()
        
        # Convert to Grayscale and Blur for better detection
        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        gray = cv2.GaussianBlur(gray, (21, 21), 0)

        if avg is None:
            avg = gray.copy().astype("float")
            continue

        # Compare current frame to the average background
        cv2.accumulateWeighted(gray, avg, 0.5)
        frameDelta = cv2.absdiff(gray, cv2.convertScaleAbs(avg))
        thresh = cv2.threshold(frameDelta, 25, 255, cv2.THRESH_BINARY)[1]
        thresh = cv2.dilate(thresh, None, iterations=2)

        # If motion pixels exceed threshold, trigger action
        if np.sum(thresh) > 5000:
            ts = datetime.datetime.now().strftime("%Y-%m-%d_%H%M%S")
            print(f"[{ts}] MOTION DETECTED!")
            # Save the image to your home folder
            cv2.imwrite(f"/home/raghav/captures/motion_{ts}.jpg", frame)
            time.sleep(1) # Cooldown to avoid duplicate captures

except KeyboardInterrupt:
    print("\nShutting down safely...")
    picam2.stop()
