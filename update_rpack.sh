#!/usr/bin/env nix-shell
#!nix-shell -i bash -p zip
# for f in pack/assets/minecraft/sounds/*.mp3; 
# 	do ffmpeg -i $f $(basename $f .mp3).ogg;
# 	rm $f
# 	mv $(basename $f .mp3).ogg $(dirname $f)/
# done

cd resourcepack
zip -qr /tmp/pack.zip *
cd ..
rsync /tmp/pack.zip vps:compose/data/cdn/arc86pack.nocache.zip
sha1sum /tmp/pack.zip > /tmp/pack.zip.sha1
rsync /tmp/pack.zip.sha1 vps:compose/data/cdn/arc86pack.sha1.txt
