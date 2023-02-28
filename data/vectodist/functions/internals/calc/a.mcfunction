data modify entity @s Pos set from storage vtd vec
data modify storage vtd tempvec set from storage vtd vec

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1 ~ ~
data modify storage vtd tempvecnorm set from entity @s Pos

execute store result score x vtd run data get storage vtd tempvec[0]
execute store result score y vtd run data get storage vtd tempvec[1]
execute store result score z vtd run data get storage vtd tempvec[2]

scoreboard players set mx vtd 0
scoreboard players set my vtd 0
scoreboard players set mz vtd 0

# Get decimals
function vectodist:internals/calc/get_decimals
function vectodist:internals/calc/multiply_by_decimals_and_sum

scoreboard players set dist vtd 0
scoreboard players operation dist vtd += mx vtd
scoreboard players operation dist vtd += my vtd
scoreboard players operation dist vtd += mz vtd
scoreboard players operation dist vtd /= 10 vtd
execute if score dist vtd matches ..-1 run scoreboard players operation dist vtd *= -1 vtd

kill @s