##
 # all_mobs.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> teleport up to game area
# normal mobs teleportation
execute as @s[type=!#megakylin:flying_mobs] at @s unless block ~ ~191 ~ #megakylin:placeholder_blocks run tp @s[y=-64,dy=191] ~ ~192 ~
# flying mobs teleportation
execute as @s[type=#megakylin:flying_mobs] at @s run tp @s[y=-64,dy=191] ~ ~192 ~
# modify nbt
execute as @s at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value false

#> teleport down to to be copied area
# modify nbt
execute as @s at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value true
# all mobs teleportation
execute as @s at @s unless block ~ ~-193 ~ #megakylin:placeholder_blocks run tp @s[y=128,dy=191] ~ ~-192 ~
