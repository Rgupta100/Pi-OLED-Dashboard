# Pi OLED Dashboard

A 128×64 SSD1306 OLED wired to a Raspberry Pi over I²C, showing live system
stats — IP, CPU temperature, CPU usage, RAM, free disk, and Wi-Fi SSID —
refreshed once a second.

## Hardware

SSD1306 OLED on **I²C bus 1, address 0x3C**.

| OLED | Pi |
|---|---|
| VCC | 3.3 V (pin 1) |
| GND | GND (pin 6) |
| SDA | GPIO 2 (pin 3) |
| SCL | GPIO 3 (pin 5) |

Enable I²C with `sudo raspi-config` → Interface Options → I²C, then confirm the
display is present:

```bash
i2cdetect -y 1
```

You should see `3c`. If the address differs, change it in the source.

## What it shows

| Row | Field | Source |
|---|---|---|
| 0 | IP address | `hostname -I` |
| 10 | CPU temperature | `gpiozero.CPUTemperature` |
| 20 | CPU usage % | `psutil.cpu_percent` |
| 30 | RAM used (MB) | `psutil.virtual_memory` |
| 40 | Free disk (GB) | `shutil.disk_usage("/")` |
| 50 | Wi-Fi SSID | `iwconfig wlan0` |

### Temperature alarm

Normal rendering is replaced by a full-screen warning that flashes three times
when the CPU leaves a safe band:

- **above 70 °C** → `Temp Too HIGH`
- **below 10 °C** → `Temp Too LOW`

## Setup

```bash
sudo apt install -y python3-pil i2c-tools wireless-tools
pip3 install luma.oled psutil gpiozero
python3 screen_project.py
```

Fonts come from `/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf` — install
`fonts-dejavu-core` if that path is missing.

## Notes and limitations

- **Refresh is 1 Hz**, set by `time.sleep(1)` at the end of the loop. No CPU
  overhead figure has been measured for this script.
- `psutil.cpu_percent(interval=None)` returns usage since the *previous* call,
  so the first reading of each run is meaningless.
- The Wi-Fi SSID is scraped by splitting `iwconfig` output on whitespace and
  quotes. It breaks if the interface isn't `wlan0`, if the Pi is on Ethernet, or
  if `iwconfig` output is localised. `iwconfig` is deprecated in favour of `iw`.
- The temperature alarm blocks for ~6 s while flashing, during which nothing
  else updates.
- No error handling around the subprocess calls — an unplugged Wi-Fi adapter
  raises `CalledProcessError` and kills the loop.
- Runs in the foreground. For a permanent display, wrap it in a systemd unit.

## Files

```
screen_project.py        the dashboard
test_screen.py           display smoke test
test_screen_project.py   stat-gathering test
```

## Related

[`OLED_Database`](https://github.com/Rgupta100/OLED_Database) extends this by
logging the same metrics to SQLite with SQLAlchemy instead of only displaying
them.
