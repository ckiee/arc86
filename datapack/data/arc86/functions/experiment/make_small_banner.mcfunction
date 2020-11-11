setblock ~ ~ ~ air
execute unless block ~ ~ ~-1 air run summon minecraft:painting ~ ~-1 ~ {Motive: "wanderer", Invulnerable: 1b}
execute unless block ~ ~ ~1 air run summon minecraft:painting ~ ~-1 ~ {Motive: "wanderer", Invulnerable: 1b, Facing: 2b}
execute unless block ~1 ~ ~ air run summon minecraft:painting ~ ~-1 ~ {Motive: "wanderer", Invulnerable: 1b, Facing: 1b}
execute unless block ~-1 ~ ~ air run summon minecraft:painting ~ ~-1 ~ {Motive: "wanderer", Invulnerable: 1b, Facing: 3b}