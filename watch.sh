#!/bin/sh
while true; do 
	clear
	node datapack/absub.js
	node datapack/voicelog.js
	node datapack/version.js
	node resourcepack/lang.js
	node resourcepack/meta.js
	./update_rpack.sh &
	echo -n updating resourcepack...
	rsync -r datapack/* vps:compose/data/mc/world/datapacks/arc86/ --delete
	echo "datapack!"
	sleep 1;
done;