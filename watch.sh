#!/usr/bin/env nix-shell
#!nix-shell -i bash -p nodejs rsync ffmpeg
while true; do 
	clear
	node datapack/absub.js
	node datapack/voicelog.js
	node datapack/version.js
	# node datapack/shake.js run manually
	node resourcepack/lang.js
	node resourcepack/meta.js
	if git status | grep resourcepack | grep -vEq "resourcepack/pack.mcmeta|resourcepack/assets/minecraft/lang/en_us.json"; then
		echo -n updating resourcepack...
		./update_rpack.sh &
	fi
	rsync -r datapack/* bokkusu:~/minecraft/world/datapacks/arc86/ --delete
	echo "datapack!"
	sleep 1;
done;
