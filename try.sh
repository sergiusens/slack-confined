#!/bin/bash -x

snapcraft try
sudo snap try $(pwd)/prime

for x in slack:bluez slack:browser-sandbox slack:camera slack:password-manager-service slack:pulseaudio slack:home slack:config-slack; do
	sudo snap connect $x
done
