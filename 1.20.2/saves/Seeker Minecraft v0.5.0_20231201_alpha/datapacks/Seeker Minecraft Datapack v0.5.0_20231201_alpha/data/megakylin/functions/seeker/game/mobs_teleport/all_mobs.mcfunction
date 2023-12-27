##
 # all_mobs.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> Overworld
# teleport up
# normal mobs
execute as @s[tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock unless block ~ ~191 ~ minecraft:air run tp @s[y=-64,dy=191] ~ ~192 ~
# flying mobs
execute as @s[type=minecraft:bat,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[type=minecraft:bee,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[type=minecraft:allay,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[type=minecraft:phantom,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[tag=Overworld] at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value false
# teleport down
execute as @s[tag=Overworld] at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=191] PersistenceRequired set value true
execute as @s[tag=Overworld] at @s unless block ~ 129 ~ minecraft:bedrock run tp @s[y=128,dy=191] ~ ~-192 ~

#> Nether & End
# teleport up
# normal mobs
execute as @s[type=!end_crystal,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock unless block ~ ~127 ~ minecraft:air run tp @s[y=0,dy=127] ~ ~128 ~
# flying mobs
execute as @s[type=minecraft:ghast,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~
execute as @s[type=minecraft:wither,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~
execute as @s[type=minecraft:ender_dragon,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~
execute as @s[tag=NE] at @s unless entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value false
# teleport down
execute as @s[tag=NE] at @s if entity @p[gamemode=!spectator,distance=..8] run data modify entity @s[y=128,dy=127] PersistenceRequired set value true
execute as @s[type=!end_crystal,tag=NE] at @s unless block ~ 129 ~ minecraft:bedrock run tp @s[y=128,dy=127] ~ ~-128 ~
# end crystal
execute as @s[type=end_crystal,tag=NE] at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run summon minecraft:end_crystal ~ ~128 ~
execute as @s[type=end_crystal,tag=NE] at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run kill @s
