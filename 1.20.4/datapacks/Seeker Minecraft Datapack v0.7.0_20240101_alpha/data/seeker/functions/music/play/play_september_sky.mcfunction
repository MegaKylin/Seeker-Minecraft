##
 # play_september_sky.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=september_sky,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=september_sky,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"September Sky\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"September Sky\" ...", "color": "white"}]

playsound seeker:music.september_sky record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 190s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
