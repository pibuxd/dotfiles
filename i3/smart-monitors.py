import subprocess

def screens():
    output = [l for l in subprocess.check_output(["xrandr"]).decode("utf-8").splitlines()]
    return [l.split()[0] for l in output if " connected " in l]

monitors = screens()

xd = subprocess.call('xrandr --output HDMI1 --primary --mode 1920x1200 --rate 60 --right-of eDP1', shell = True)

if xd == 0:
    subprocess.call('xrandr --output eDP1 --mode 1920x1080 --rate 60 --left-of HDMI1', shell = True)

if len(monitors) == 2 and monitors[1] == 'HDMI1' and xd == 1:
    subprocess.call('xrandr --output HDMI1 --primary --mode 1920x1080 --rate 120 --right-of eDP1', shell = True)
    subprocess.call('xrandr --output eDP1 --mode 1920x1080 --rate 60 --left-of HDMI1', shell = True)

else:
    subprocess.call('xrandr --output eDP1 --primary --mode 1920x1080 --rate 60', shell = True)

if len(monitors) == 2:
    subprocess.call("xrandr --output HDMI1 --primary", shell = True)
