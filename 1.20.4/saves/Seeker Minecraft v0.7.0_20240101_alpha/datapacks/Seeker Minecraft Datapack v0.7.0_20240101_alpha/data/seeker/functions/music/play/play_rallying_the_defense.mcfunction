##
 # play_rallying_the_defense.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=rallying_the_defense,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=rallying_the_defense,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Rallying the Defense\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Rallying the Defense\" ...", "color": "white"}]

playsound seeker:music.rallying_the_defense record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 130s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
