##
 # play_streets_of_the_unknown.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=streets_of_the_unknown,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=streets_of_the_unknown,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Streets of the Unknown\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Streets of the Unknown\" ...", "color": "white"}]

playsound minecraft:music.seeker.streets_of_the_unknown record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 170s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
