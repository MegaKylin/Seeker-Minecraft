##
 # play_infected_euphoria.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=infected_euphoria,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=infected_euphoria,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Infected Euphoria\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Infected Euphoria\" ...", "color": "white"}]

playsound seeker:music.infected_euphoria record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 170s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
