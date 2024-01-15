##
 # play_ephemeral_reign.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=ephemeral_reign,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=ephemeral_reign,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Ephemeral Reign\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Ephemeral Reign\" ...", "color": "white"}]

playsound seeker:music.ephemeral_reign record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 175s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
