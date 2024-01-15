##
 # play_gold_coast.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=gold_coast,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=gold_coast,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Gold Coast\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Gold Coast\" ...", "color": "white"}]

playsound seeker:music.gold_coast record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 200s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
