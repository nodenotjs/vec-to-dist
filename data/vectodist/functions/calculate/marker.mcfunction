data modify entity @s Pos set from storage vtd vec
execute at @s facing 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
scoreboard players set dist vtd 0

execute positioned 0.0 0.0 0.0 run function vectodist:calculate/calc_dist

# /kill is heavy and should be avoided in a future datapad update
kill @s