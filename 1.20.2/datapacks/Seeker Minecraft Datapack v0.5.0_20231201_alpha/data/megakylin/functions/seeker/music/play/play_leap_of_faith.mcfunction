##
 # play_leap_of_faith.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=leap_of_faith,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=leap_of_faith,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Leap of Faith\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Leap of Faith\" ...", "color": "white"}]

playsound minecraft:music.seeker.leap_of_faith record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 290s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
