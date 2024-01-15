##
 # play_milkshake.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=milkshake,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=milkshake,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Milkshake\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Milkshake\" ...", "color": "white"}]

playsound seeker:music.milkshake record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 205s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
