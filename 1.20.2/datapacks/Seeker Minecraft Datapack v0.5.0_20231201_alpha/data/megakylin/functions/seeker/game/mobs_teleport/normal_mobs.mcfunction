##
 # normal_mobs.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> Overworld
# teleport up
execute as @s[tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock unless block ~ ~191 ~ minecraft:air run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[tag=Overworld] at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value false
# teleport down
execute as @s[tag=Overworld] at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value true
execute as @s[tag=Overworld] at @s unless block ~ 129 ~ minecraft:bedrock run tp @s[y=128,dy=191] ~ ~-192 ~

# Nether & End
# teleport up
execute as @s[type=!end_crystal,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock unless block ~ ~127 ~ minecraft:air run tp @s[y=0,dy=127] ~ ~128 ~
execute as @s[tag=NE] at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value false
# teleport down
execute as @s[tag=NE] at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value true
execute as @s[type=!end_crystal,tag=NE] at @s unless block ~ 129 ~ minecraft:bedrock run tp @s[y=128,dy=127] ~ ~-128 ~
