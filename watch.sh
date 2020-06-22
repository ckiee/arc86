#!/bin/sh
while true; do 
	rsync -r datapack/* vps:compose/data/mc/world/datapacks/arc86/ --delete;
	# for f in pack/assets/minecraft/sounds/*.mp3; 
	# 	do ffmpeg -i $f $(basename $f .mp3).ogg;
	# 	rm $f
	# 	mv $(basename $f .mp3).ogg $(dirname $f)/
	# done
	cd pack
	zip -qr /tmp/pack.zip *
	cd ..
	rsync /tmp/pack.zip vps:compose/data/cdn/arc86pack.zip
	sleep 1;
done;