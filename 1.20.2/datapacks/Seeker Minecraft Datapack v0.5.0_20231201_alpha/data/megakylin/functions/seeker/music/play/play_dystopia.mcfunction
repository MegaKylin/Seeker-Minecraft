##
 # play_dystopia.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=dystopia,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=dystopia,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Dystopia\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Dystopia\" ...", "color": "white"}]

playsound minecraft:music.seeker.dystopia record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 195s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
