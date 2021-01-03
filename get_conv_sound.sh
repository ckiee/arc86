#!/bin/sh
wget "$1" -O tmp_sound
ffmpeg -i tmp_sound "resourcepack/assets/arc86/sounds/$2.ogg"
rm tmp_sound
./update_rpack.sh
