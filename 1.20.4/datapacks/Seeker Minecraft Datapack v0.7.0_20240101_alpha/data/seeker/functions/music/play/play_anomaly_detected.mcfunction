##
 # play_anomaly_detected.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=anomaly_detected,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=anomaly_detected,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Anomaly Detected\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Anomaly Detected\" ...", "color": "white"}]

playsound seeker:music.anomaly_detected record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 155s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
