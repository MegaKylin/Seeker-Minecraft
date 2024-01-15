##
 # play_battle_of_kings.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=battle_of_kings,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=battle_of_kings,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Battle of Kings\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Battle of Kings\" ...", "color": "white"}]

playsound seeker:music.battle_of_kings record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 205s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
