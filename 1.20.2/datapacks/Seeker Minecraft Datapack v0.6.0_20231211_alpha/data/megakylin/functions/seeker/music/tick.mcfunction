##
 # tick.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @a "tick"
playsound block.note_block.bell block @a ~ ~ ~ 1 1 1

schedule function megakylin:seeker/music/tick 5s
