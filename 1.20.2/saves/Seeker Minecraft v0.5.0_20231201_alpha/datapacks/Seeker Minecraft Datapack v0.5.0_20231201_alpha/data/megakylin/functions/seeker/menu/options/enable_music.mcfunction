##
 # enable_music.mcfunction
 # 
 #
 # Created by Music.
##

tag @e[tag=SMS] remove disable_music

execute if entity @e[tag=SMS,tag=running] run function megakylin:seeker/music/stop
function megakylin:seeker/music/random_music

function megakylin:seeker/menu/open_options
