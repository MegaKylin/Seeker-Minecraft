##
 # save_zone.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> add tag
execute as @s[tag=Overworld] at @s run tag @s[y=-64,dy=191] add SMT
execute as @s[tag=NE] at @s run tag @s[y=0,dy=127] add SMT

#> text
tellraw @s[tag=SMT] [{"text": "[Seeker Minecraft System] ","color": "gold"}, {"text": "You are out of the game area and will be teleported to the \"Save Zone\". ", "color": "white"}]

#> create platform
execute as @s[tag=Overworld,tag=SMT] at @s run summon minecraft:armor_stand ~ ~192 ~ {CustomName: '{"text":"Seeker Minecraft Save Zone"}', Invisible: true, Invulnerable: true, NoGravity: true, Tags: ["SMSZ"]}
execute as @s[tag=NE,tag=SMT] at @s run summon minecraft:armor_stand ~ ~128 ~ {CustomName: '{"text":"Seeker Minecraft Save Zone"}', Invisible: true, Invulnerable: true, NoGravity: true, Tags: ["SMSZ"]}
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:air
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:water
execute as @e[tag=SMSZ] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:glowstone replace minecraft:lava

#> effects
effect give @s[tag=SMT] minecraft:resistance 30 10

#> teleport
execute as @s[tag=Overworld,tag=SMT] at @s run tp ~ ~192 ~
execute as @s[tag=NE,tag=SMT] at @s run tp ~ ~128 ~

#> effects
execute as @s[tag=SMT] at @s run particle minecraft:portal ~-4 ~-4 ~-4 ~4 ~4 ~4 5 1000 normal
execute as @s[tag=SMT] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
execute as @s[tag=SMT] at @s run tag @e[tag=SMSZ,distance=..1] add Arrived

#> text
tellraw @s[tag=SMT] [{"text": "[Seeker Minecraft System] ","color": "gold"}, {"text": "Teleport complete! You have 30 seconds of invincibility! Good Luck!", "color": "white"}]

execute as @e[tag=Arrived] at @s run tag @p[distance=..1] remove SMT

#> remove platform
execute as @e[tag=Arrived] at @s unless entity @p[distance=..8] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:air replace minecraft:glowstone
execute as @e[tag=Arrived] at @s unless entity @p[distance=..8] run kill @s
