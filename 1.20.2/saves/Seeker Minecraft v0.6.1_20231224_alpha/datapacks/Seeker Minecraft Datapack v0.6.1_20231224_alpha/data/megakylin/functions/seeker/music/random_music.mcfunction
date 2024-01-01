##
 # random_music.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tag @e[tag=music] remove play
execute if entity @e[tag=SMS,tag=running,tag=!disable_music] run tag @e[tag=music,tag=!disabled,limit=1,sort=random] add play

execute if entity @e[tag=aduro,tag=play] run function megakylin:seeker/music/play/play_aduro
execute if entity @e[tag=afterlife_city,tag=play] run function megakylin:seeker/music/play/play_afterlife_city
execute if entity @e[tag=alien_technology,tag=play] run function megakylin:seeker/music/play/play_alien_technology
execute if entity @e[tag=anomaly_detected,tag=play] run function megakylin:seeker/music/play/play_anomaly_detected
execute if entity @e[tag=battle_of_kings,tag=play] run function megakylin:seeker/music/play/play_battle_of_kings
execute if entity @e[tag=beyond_the_stars,tag=play] run function megakylin:seeker/music/play/play_beyond_the_stars
execute if entity @e[tag=cloister_of_redemption,tag=play] run function megakylin:seeker/music/play/play_cloister_of_redemption
execute if entity @e[tag=dance_of_the_pixies,tag=play] run function megakylin:seeker/music/play/play_dance_of_the_pixies
execute if entity @e[tag=dystopia,tag=play] run function megakylin:seeker/music/play/play_dystopia
execute if entity @e[tag=ecstatic_wave,tag=play] run function megakylin:seeker/music/play/play_ecstatic_wave
execute if entity @e[tag=electroids,tag=play] run function megakylin:seeker/music/play/play_electroids
execute if entity @e[tag=ephemeral_reign,tag=play] run function megakylin:seeker/music/play/play_ephemeral_reign
execute if entity @e[tag=escape_from_the_temple,tag=play] run function megakylin:seeker/music/play/play_escape_from_the_temple
execute if entity @e[tag=fire_within,tag=play] run function megakylin:seeker/music/play/play_fire_within
execute if entity @e[tag=gold_coast,tag=play] run function megakylin:seeker/music/play/play_gold_coast
execute if entity @e[tag=incursion,tag=play] run function megakylin:seeker/music/play/play_incursion
execute if entity @e[tag=infected_euphoria,tag=play] run function megakylin:seeker/music/play/play_infected_euphoria
execute if entity @e[tag=leap_of_faith,tag=play] run function megakylin:seeker/music/play/play_leap_of_faith
execute if entity @e[tag=lock_and_load,tag=play] run function megakylin:seeker/music/play/play_lock_and_load
execute if entity @e[tag=milkshake,tag=play] run function megakylin:seeker/music/play/play_milkshake
execute if entity @e[tag=queen_of_the_night,tag=play] run function megakylin:seeker/music/play/play_queen_of_the_night
execute if entity @e[tag=rallying_the_defense,tag=play] run function megakylin:seeker/music/play/play_rallying_the_defense
execute if entity @e[tag=september_sky,tag=play] run function megakylin:seeker/music/play/play_september_sky
execute if entity @e[tag=setting_sail,tag=play] run function megakylin:seeker/music/play/play_setting_sail
execute if entity @e[tag=sexergetic,tag=play] run function megakylin:seeker/music/play/play_sexergetic
execute if entity @e[tag=skirt_shaker,tag=play] run function megakylin:seeker/music/play/play_skirt_shaker
execute if entity @e[tag=streets_of_the_unknown,tag=play] run function megakylin:seeker/music/play/play_streets_of_the_unknown
execute if entity @e[tag=sunrise,tag=play] run function megakylin:seeker/music/play/play_sunrise
execute if entity @e[tag=the_arcade,tag=play] run function megakylin:seeker/music/play/play_the_arcade
execute if entity @e[tag=the_end_of_mankind,tag=play] run function megakylin:seeker/music/play/play_the_end_of_mankind
