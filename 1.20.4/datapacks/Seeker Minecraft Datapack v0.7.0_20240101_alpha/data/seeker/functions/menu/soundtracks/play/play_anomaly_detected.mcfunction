##
 # play_anomaly_detected.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:music/stop

tag @e[tag=music,tag=anomaly_detected] add play
function seeker:music/play/play_anomaly_detected
