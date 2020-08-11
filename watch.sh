#!/bin/sh
while true; do 
	node datapack/absub.js
	./update_rpack.sh &
	rsync -r datapack/* vps:compose/data/mc/world/datapacks/arc86/ --delete
	sleep 1;
done;