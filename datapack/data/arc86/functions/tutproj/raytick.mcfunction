# this is ran by /schedule
execute as @e[tag=tutproj-ray-start] at @s facing -108.5 154.7 76.5 run function arc86:tutproj/start_ray
schedule function arc86:tutproj/raytick 20t
