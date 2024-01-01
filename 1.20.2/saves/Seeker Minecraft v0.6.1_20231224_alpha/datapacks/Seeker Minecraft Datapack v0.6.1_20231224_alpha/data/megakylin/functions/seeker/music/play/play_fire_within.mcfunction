##
 # play_fire_within.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=fire_within,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=fire_within,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Fire Within\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Fire Within\" ...", "color": "white"}]

playsound minecraft:music.seeker.fire_within record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 200s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
