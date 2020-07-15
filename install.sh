#!/bin/bash -x

rm -f *.snap
snapcraft snap
sudo snap remove slack
sudo snap install slack_*_amd64.snap --dangerous 

for x in slack:bluez slack:browser-sandbox slack:camera slack:password-manager-service slack:pulseaudio slack:home slack:config-slack; do
	sudo snap connect $x
done
