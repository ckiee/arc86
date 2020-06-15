#!/bin/sh
while true; do 
	rsync -r datapack/* vps:compose/data/mc/world/datapacks/arc86/ --delete;
	cd pack
	zip -qr /tmp/pack.zip *
	cd ..
	rsync /tmp/pack.zip vps:compose/data/cdn/arc86pack.zip
	sleep 1;
done;