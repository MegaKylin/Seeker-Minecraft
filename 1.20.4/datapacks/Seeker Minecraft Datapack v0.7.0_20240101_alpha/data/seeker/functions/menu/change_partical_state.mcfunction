##
 # change_partical_state.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @s[tag=!case,tag=!show_partical] run function seeker:menu/partical/show_partical
execute if entity @s[tag=!case,tag=show_partical] run function seeker:menu/partical/disable_partical

tag @s remove case
