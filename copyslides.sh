#!/bin/bash
export RSYNC_PASSWORD="***********"

#rsync -arv --delete nieuwsbord@10.0.10.4::assortimens_werknemers/Nieuwsbord /home/pi/Pictures/slides 1>&2
num_files=$(rsync -ar --info=NAME --update --delete nieuwsbord@10.0.10.4::mededelingen/woonkamer /home/pi/Pictures/slides)

if [[ $num_files > 1 ]]; then
  # files were transferred
  #exit 1
  killall feh
else
  # files weren't transferred
  exit 0
fi
