##
 # flying_mobs.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s[type=minecraft:bat,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[type=minecraft:bee,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[type=minecraft:allay,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~
execute as @s[type=minecraft:phantom,tag=Overworld] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=-64,dy=191] ~ ~192 ~

execute as @s[type=minecraft:ghast,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~
execute as @s[type=minecraft:ender_dragon,tag=NE] at @s if block ~ 129 ~ minecraft:bedrock run tp @s[y=0,dy=127] ~ ~128 ~
