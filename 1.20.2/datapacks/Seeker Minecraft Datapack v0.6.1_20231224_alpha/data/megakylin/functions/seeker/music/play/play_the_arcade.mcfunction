##
 # play_the_arcade.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=the_arcade,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=the_arcade,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"The Arcade\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"The Arcade\" ...", "color": "white"}]

playsound minecraft:music.seeker.the_arcade record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 210s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
