##
 # play_dance_of_the_pixies.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=dance_of_the_pixies,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=dance_of_the_pixies,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Dance of the Pixies\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Dance of the Pixies\" ...", "color": "white"}]

playsound seeker:music.dance_of_the_pixies record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 200s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
