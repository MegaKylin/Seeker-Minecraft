##
 # stop.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute unless entity @e[tag=SMS,tag=running,tag=!disable_music] run function seeker:music/stop

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
