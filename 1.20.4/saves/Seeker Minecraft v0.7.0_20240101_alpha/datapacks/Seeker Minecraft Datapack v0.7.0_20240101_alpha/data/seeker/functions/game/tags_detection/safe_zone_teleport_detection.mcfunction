##
 # safe_zone_teleport_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s[predicate=seeker:dimensions/overworld] at @s run tag @s[y=-64,dy=191] add SZT
execute as @s[predicate=seeker:dimensions/the_nether] at @s run tag @s[y=0,dy=127] add SZT
execute as @s[predicate=seeker:dimensions/the_end] at @s run tag @s[y=0,dy=127] add SZT
