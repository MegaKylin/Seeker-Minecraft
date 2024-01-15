##
 # flame_step.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s unless entity @e[tag=last_step,distance=..2] run function seeker:effects/player/flame_step/step
