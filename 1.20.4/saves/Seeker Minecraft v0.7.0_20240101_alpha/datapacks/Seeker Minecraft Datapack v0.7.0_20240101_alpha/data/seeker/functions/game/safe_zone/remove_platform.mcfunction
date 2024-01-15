##
 # remove_platform.mcfunction
 # 
 #
 # Created by MegaKylin.
##

fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:air replace minecraft:glowstone
execute as @s at @s positioned ~ ~1 ~ run kill @e[tag=SMSZ_name,distance=..0.5]
kill @s
