import subprocess, os

def screens():
    output = [l for l in subprocess.check_output(["xrandr"]).decode("utf-8").splitlines()]
    return [l.split()[0] for l in output if " connected " in l]

monitors = screens()

if len(monitors) == 2 and monitors[1] == 'HDMI1':
    os.system('xrandr --output HDMI1 --primary --mode 1920x1080 --rate 120')
    os.system('xrandr --output eDP1 --mode 1920x1080 --rate 60 --left-of HDMI1')
else:
    os.system('xrandr --output eDP1 --primary --mode 1920x1080 --rate 60')
