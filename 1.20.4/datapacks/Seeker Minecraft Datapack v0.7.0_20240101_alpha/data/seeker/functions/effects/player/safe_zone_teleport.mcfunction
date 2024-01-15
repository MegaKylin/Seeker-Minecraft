##
 # safe_zone_teleportation.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @e[tag=SMSZ,tag=arrived] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 1 1000 normal
execute as @e[tag=SMSZ,tag=arrived] at @s run playsound minecraft:entity.enderman.teleport player @p[distance=..1] ~ ~ ~ 1 1
