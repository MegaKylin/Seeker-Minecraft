##
 # play_aduro.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=aduro,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=aduro,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Aduro\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Aduro\" ...", "color": "white"}]

playsound seeker:music.aduro record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 180s append

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
