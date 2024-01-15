##
 # play_the_end_of_mankind.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=the_end_of_mankind,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=the_end_of_mankind,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"The End of Mankind\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"The End of Mankind\" ...", "color": "white"}]

playsound seeker:music.the_end_of_mankind record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 170s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
