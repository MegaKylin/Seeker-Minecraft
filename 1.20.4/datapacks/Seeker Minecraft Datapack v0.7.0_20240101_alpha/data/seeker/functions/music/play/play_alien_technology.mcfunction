##
 # play_alien_technology.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=alien_technology,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=alien_technology,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Alien Technology\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Alien Technology\" ...", "color": "white"}]

playsound seeker:music.alien_technology record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 90s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
