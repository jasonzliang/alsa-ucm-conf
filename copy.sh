#!/usr/bin/bash

sudo rsync -avz --delete ucm /usr/share/alsa/
sudo rsync -avz --delete ucm2 /usr/share/alsa/
sudo chmod 755 $(find /usr/share/alsa -type d)
sudo chmod 644 $(find /usr/share/alsa -type f)
sudo chown -R root /usr/share/alsa
sudo chgrp -R root /usr/share/alsa
pulseaudio -k && sudo alsa force-reload
