##
 # play_cloister_of_redemption.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute if entity @e[tag=cloister_of_redemption,tag=locked] run tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "New soundtrack has been unlocked, please check it in \"Soundtrack Menu\". ", "color": "white"}]
tag @e[tag=cloister_of_redemption,tag=locked] remove locked

title @a actionbar [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Cloister of Redemption\" ...", "color": "white"}]
tellraw @a [{"text": "[Seeker Minecraft System] ", "color": "gold"}, {"text": "Playing \"Cloister of Redemption\" ...", "color": "white"}]

playsound seeker:music.cloister_of_redemption record @a ~ ~ ~ 1 1 1
schedule function seeker:music/random_music 185s

execute as @a[tag=is_checking_soundtrack] run function seeker:menu/open_soundtracks
