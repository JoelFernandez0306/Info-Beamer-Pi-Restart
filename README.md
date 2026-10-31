# info-beamer pi restart

a very small info-beamer package that restarts the raspberry pi on a schedule.

## usage

1. in info-beamer hosted, open the package list and press "add package".
2. enter this url: `https://github.com/JoelFernandez0306/Info-Beamer-Pi-Restart.git`
3. create a setup based on the package and assign it to your device(s).
4. enter a restart time for each weekday, as 24 hour `hh:mm`. leave a day empty to skip it.

to get later changes, open the package page and press "check for updates".

[![import](https://cdn.infobeamer.com/s/img/import.png)](https://info-beamer.com/use?url=https://github.com/JoelFernandez0306/Info-Beamer-Pi-Restart.git)

the default is 04:00 on every day. for example, monday `03:30`, saturday `06:00`, sunday empty.

## manual restart

to restart the device right away, switch on "restart now" in the package config and save. the device restarts within about 10 seconds.

after the restart, switch it off again. to restart manually a second time, it has to go from off to on again. the switch being left on does nothing by itself, so it can never cause a reboot loop. a manual restart ignores the 10 minute boot guard.

## notes

- the time is the device's local time, so set the correct timezone for the device in info-beamer.
- the package asks for the `run-as-root` and `unboxed` permissions in `node.json`, which the service needs to run the reboot command. info-beamer only applies permission changes after the device has been restarted once, so power cycle the device after adding the package or after a permission change.
- the service prints what it does, prefixed with `[restart]`. check the device's service log if a restart does not happen.
- the device is never restarted within 10 minutes of booting. this avoids reboot loops if the clock is wrong right after boot.
- the service is written for python 2.7, because that is all info-beamer os ships. it also runs on python 3.
- the package shows nothing on screen, it only runs the `service` script.
