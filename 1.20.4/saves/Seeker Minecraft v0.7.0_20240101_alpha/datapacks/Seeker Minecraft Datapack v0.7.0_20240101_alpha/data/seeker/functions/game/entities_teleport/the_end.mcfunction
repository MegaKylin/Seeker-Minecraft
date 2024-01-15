##
 # the_end.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> teleport up to game area
# normal mobs teleportation
execute as @s[type=!#seeker:flying_mobs,type=!end_crystal] at @s unless block ~ ~127 ~ #seeker:placeholder_blocks run tp @s[y=0,dy=127] ~ ~128 ~
# flying mobs teleportation
execute as @s[type=#seeker:flying_mobs] at @s run tp @s[y=0,dy=127] ~ ~128 ~
# modify nbt
execute as @s at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value false

#> teleport down to to be copied area
# modify nbt
execute as @s at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value true
# all mobs teleportation
execute as @s[type=!end_crystal] at @s unless block ~ ~-129 ~ #seeker:placeholder_blocks run tp @s[y=128,dy=127] ~ ~-128 ~
