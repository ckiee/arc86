# not only called on load, this is also called in prepare
kill @e[tag=bridve-point]
kill @e[tag=bridve-wasmoving]
tag @e[tag=bridve-point,tag=used] remove used