##
 # disable_music.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tag @e[tag=SMS] add disable_music

execute if entity @e[tag=SMS,tag=running] run function seeker:music/stop

function seeker:menu/open_options
