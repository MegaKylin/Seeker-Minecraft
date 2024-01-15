##
 # enable_music.mcfunction
 # 
 #
 # Created by Music.
##

tag @e[tag=SMS] remove disable_music

execute if entity @e[tag=SMS,tag=running] run function seeker:music/stop
function seeker:music/random_music

function seeker:menu/open_options
