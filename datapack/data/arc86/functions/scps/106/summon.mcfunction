function arc86:scps/106/cleanup
summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{Count:1,id:carrot_on_a_stick,tag:{CustomModelData:9012}}],HandItems:[{Count:1,id:carrot_on_a_stick,tag:{CustomModelData:9014}},{Count:1,id:carrot_on_a_stick,tag:{CustomModelData:9013}}],Tags:[scp106, 106-model],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},Invisible:1b}

summon minecraft:wandering_trader ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Willing:0b,DespawnDelay:2147483647,Tags:[scp106,106-pather,106-pather-preload],Offers:{},Attributes:[{Name:generic.movement_speed,Base:0.9}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],WanderTarget:{},NoAI:0b}
