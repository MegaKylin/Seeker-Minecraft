##
 # play_setting_sail.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=setting_sail,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=setting_sail,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Setting Sail\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Setting Sail\" ...", "color": "white"}]

playsound seeker:music.setting_sail record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 180s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
