##
 # play_sexergetic.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=sexergetic,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=sexergetic,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Sexergetic\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Sexergetic\" ...", "color": "white"}]

playsound minecraft:music.seeker.sexergetic record @a ~ ~ ~ 1 1 1
schedule function megakylin:seeker/music/random_music 130s

execute as @a[tag=is_checking_soundtrack] run function megakylin:seeker/menu/open_soundtracks
