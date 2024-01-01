##
 # reset.mcfunction
 # seeker
 #
 # Created by MegaKylin.
##

gamerule commandBlockOutput false
gamerule sendCommandFeedback false

schedule function megakylin:seeker/reset_system 2s
schedule function megakylin:seeker/welcome_title 2s
schedule function megakylin:seeker/music/reset 2s
schedule function megakylin:seeker/scoreboard/reset/current_block_clone_number 4s
schedule function megakylin:seeker/scoreboard/reset/total_block_clone_number 4s
schedule function megakylin:seeker/menu/reset 4s
