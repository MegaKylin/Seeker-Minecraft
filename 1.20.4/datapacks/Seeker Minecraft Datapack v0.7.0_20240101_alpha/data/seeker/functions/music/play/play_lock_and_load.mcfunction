##
 # play_lock_and_load.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=lock_and_load,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=lock_and_load,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Lock & Load\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Lock & Load\" ...", "color": "white"}]

playsound seeker:music.lock_and_load record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 180s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
