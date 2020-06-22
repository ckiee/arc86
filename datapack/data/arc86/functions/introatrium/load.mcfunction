# not only called on load, this is also called in prepare
kill @e[tag=introatrium-point]
kill @e[tag=introatrium-wasmoving]
tag @e[tag=introatrium-point,tag=used] remove used