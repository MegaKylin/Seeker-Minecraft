##
 # play_beyond_the_stars.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=beyond_the_stars,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=beyond_the_stars,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Beyond the Stars\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Beyond the Stars\" ...", "color": "white"}]

playsound minecraft:music.seeker.beyond_the_stars record @a ~ ~ ~ 1 1 1 
schedule function megakylin:seeker/music/random_music 220s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
