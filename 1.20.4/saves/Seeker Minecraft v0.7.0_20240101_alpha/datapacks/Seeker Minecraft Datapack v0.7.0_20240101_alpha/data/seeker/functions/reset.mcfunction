##
 # reset.mcfunction
 # seeker
 #
 # Created by MegaKylin.
##

gamerule commandBlockOutput false
gamerule sendCommandFeedback true

schedule function seeker:reset_system 2s
schedule function seeker:music/reset 2s
schedule function seeker:welcome_title 2s
schedule function seeker:scoreboard/reset 4s
schedule function seeker:menu/reset 4s
