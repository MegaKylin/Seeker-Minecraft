##
 # teleport.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s [{"text": "[Seeker Minecraft System] ","color": "gold"}, {"text": "You are out of the game area and will be teleported to the \"Safe Zone\". ", "color": "white"}]

function seeker:game/safe_zone/create_platform

effect give @s minecraft:resistance 30 10

execute as @s[predicate=seeker:dimensions/overworld] at @s run tp ~ ~192 ~
execute as @s[predicate=seeker:dimensions/the_nether] at @s run tp ~ ~128 ~
execute as @s[predicate=seeker:dimensions/the_end] at @s run tp ~ ~128 ~

execute as @s at @s run tag @e[tag=SMSZ,distance=..1] add arrived

tellraw @s [{"text": "[Seeker Minecraft System] ","color": "gold"}, {"text": "Teleport complete! You have 30 seconds of invincibility! Good Luck!", "color": "white"}]

schedule function seeker:effects/player/safe_zone_teleport 0.1s

execute as @e[tag=SMSZ,tag=!arrived] at @s run schedule function seeker:game/safe_zone/remove_platform 10s
