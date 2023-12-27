##
 # play_afterlife_city.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=afterlife_city,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=afterlife_city,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Afterlife City\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Afterlife City\" ...", "color": "white"}]

playsound minecraft:music.seeker.afterlife_city record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 200s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
