# info-beamer pi restart

a very small info-beamer package that restarts the raspberry pi on a schedule.

## usage

1. in info-beamer hosted, open the package list and press "add package".
2. enter this url: `https://github.com/JoelFernandez0306/Info-Beamer-Pi-Restart.git`
3. create a setup based on the package and assign it to your device(s).
4. choose the restart hour, minute and which weekdays it should run on.

to get later changes, open the package page and press "check for updates".

[![import](https://cdn.infobeamer.com/s/img/import.png)](https://info-beamer.com/use?url=https://github.com/JoelFernandez0306/Info-Beamer-Pi-Restart.git)

the default is every day at 04:00.

## manual restart

to restart the device right away, switch on "restart now" in the package config and save. the device restarts within about 10 seconds.

after the restart, switch it off again. to restart manually a second time, it has to go from off to on again. the switch being left on does nothing by itself, so it can never cause a reboot loop. a manual restart ignores the 10 minute boot guard.

## notes

- the time is the device's local time, so set the correct timezone for the device in info-beamer.
- the package asks for the `reboot` permission in `node.json`.
- the device is never restarted within 10 minutes of booting. this avoids reboot loops if the clock is wrong right after boot.
- the package shows nothing on screen, it only runs the `service` script.
