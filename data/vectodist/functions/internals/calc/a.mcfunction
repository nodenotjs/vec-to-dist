data modify entity @s Pos set from storage vtd vec
data modify storage vtd tempvec set from storage vtd vec

execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1 ~ ~
data modify storage vtd tempvecnorm set from entity @s Pos


execute positioned 0.0 0.0 0.0 run particle dust 1 0 0 .5 ~ ~ ~ 0 0 0 0 1 force
execute at @s run particle dust 0 1 0 1 ~ ~ ~ 0 0 0 0 1 force

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

tellraw @a ["Vec: ", {"nbt":"tempvec","storage":"vtd"}]
tellraw @a ["Normalized: ", {"nbt":"tempvecnorm","storage":"vtd"}]
tellraw @a ["Normalized Decimals X: ",{"score":{"objective":"vtd","name":"nx_1"}},"",{"score":{"objective":"vtd","name":"nx_2"}},"",{"score":{"objective":"vtd","name":"nx_3"}},"",{"score":{"objective":"vtd","name":"nx_4"}},"",{"score":{"objective":"vtd","name":"nx_5"}},"",{"score":{"objective":"vtd","name":"nx_6"}},"",{"score":{"objective":"vtd","name":"nx_7"}},"",{"score":{"objective":"vtd","name":"nx_8"}},""]
tellraw @a ["Normalized Decimals Y: ",{"score":{"objective":"vtd","name":"ny_1"}},"",{"score":{"objective":"vtd","name":"ny_2"}},"",{"score":{"objective":"vtd","name":"ny_3"}},"",{"score":{"objective":"vtd","name":"ny_4"}},"",{"score":{"objective":"vtd","name":"ny_5"}},"",{"score":{"objective":"vtd","name":"ny_6"}},"",{"score":{"objective":"vtd","name":"ny_7"}},"",{"score":{"objective":"vtd","name":"ny_8"}},""]
tellraw @a ["Normalized Decimals Z: ",{"score":{"objective":"vtd","name":"nz_1"}},"",{"score":{"objective":"vtd","name":"nz_2"}},"",{"score":{"objective":"vtd","name":"nz_3"}},"",{"score":{"objective":"vtd","name":"nz_4"}},"",{"score":{"objective":"vtd","name":"nz_5"}},"",{"score":{"objective":"vtd","name":"nz_6"}},"",{"score":{"objective":"vtd","name":"nz_7"}},"",{"score":{"objective":"vtd","name":"nz_8"}},""]
tellraw @a ["Multiplied: ",{"score":{"objective":"vtd","name":"mx"}}," ",{"score":{"objective":"vtd","name":"my"}}," ",{"score":{"objective":"vtd","name":"mz"}}]
tellraw @a [{"text":"Magnitude: ","bold":true},{"score":{"objective":"vtd","name":"dist"}}]
tellraw @a "\n\n\n"
kill @s