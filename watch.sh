#!/bin/sh
while true; do 
	./update_pack.sh &
	rsync -r datapack/* vps:compose/data/mc/world/datapacks/arc86/ --delete
	sleep 1;
done;