##
 # play_escape_from_the_temple.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=escape_from_the_temple,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=escape_from_the_temple,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Escape from the Temple\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Escape from the Temple\" ...", "color": "white"}]

playsound seeker:music.escape_from_the_temple record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 245s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
