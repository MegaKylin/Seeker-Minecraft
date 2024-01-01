##
 # reset.mcfunction
 # seeker
 #
 # Created by MegaKylin.
##

gamerule commandBlockOutput false
gamerule sendCommandFeedback true

schedule function megakylin:seeker/reset_system 2s
schedule function megakylin:seeker/welcome_title 2s
schedule function megakylin:seeker/music/reset 2s
schedule function megakylin:seeker/game/reset/scoreboard/current_block_clone_number 4s
schedule function megakylin:seeker/menu/reset 4s
