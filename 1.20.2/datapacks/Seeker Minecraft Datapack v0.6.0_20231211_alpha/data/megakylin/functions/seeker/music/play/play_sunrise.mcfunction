##
 # play_sunrise.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=sunrise,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=sunrise,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Sunrise\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Sunrise\" ...", "color": "white"}]

playsound minecraft:music.seeker.sunrise record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 150s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
