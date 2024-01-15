##
 # play_queen_of_the_night.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=queen_of_the_night,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=queen_of_the_night,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Queen of the Night\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Queen of the Night\" ...", "color": "white"}]

playsound seeker:music.queen_of_the_night record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 190s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
