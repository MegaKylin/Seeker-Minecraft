##
 # all_mobs.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> teleport up to game area
# normal mobs teleportation
execute as @s[type=!#megakylin:flying_mobs,type=!end_crystal,tag=NE] at @s unless block ~ ~127 ~ #megakylin:placeholder_blocks run tp @s[y=0,dy=127] ~ ~128 ~
# flying mobs teleportation
execute as @s[type=#megakylin:flying_mobs,tag=NE] at @s run tp @s[y=0,dy=127] ~ ~128 ~
# end crystal teleportation
execute as @s[type=end_crystal,tag=NE] at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run summon minecraft:end_crystal ~ ~128 ~
execute as @s[type=end_crystal,tag=NE] at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run kill @s
# modify nbt
execute as @s[tag=NE] at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value false

#> teleport down to to be copied area
# modify nbt
execute as @s[tag=NE] at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value true
# all mobs teleportation
execute as @s[type=!end_crystal,tag=NE] at @s unless block ~ ~-129 ~ minecraft:barrier run tp @s[y=128,dy=127] ~ ~-128 ~
