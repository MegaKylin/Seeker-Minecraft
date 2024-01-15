##
 # play_ecstatic_wave.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=ecstatic_wave,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=ecstatic_wave,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Ecstatic Wave\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Ecstatic Wave\" ...", "color": "white"}]

playsound seeker:music.ecstatic_wave record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 250s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
