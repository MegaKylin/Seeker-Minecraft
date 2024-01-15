##
 # play_electroids.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=electroids,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=electroids,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Electroids\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Electroids\" ...", "color": "white"}]

playsound seeker:music.electroids record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 120s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
