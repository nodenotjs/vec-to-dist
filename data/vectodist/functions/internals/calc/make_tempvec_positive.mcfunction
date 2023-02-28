execute store result score x vtd run data get storage vtd tempvec[0] 1
execute store result score y vtd run data get storage vtd tempvec[1] 1
execute store result score z vtd run data get storage vtd tempvec[2] 1

execute if score x vtd matches ..-1 store result storage vtd tempvec[0] double 1 run scoreboard players operation x vtd *= -1 vtd
execute if score y vtd matches ..-1 store result storage vtd tempvec[1] double 1 run scoreboard players operation y vtd *= -1 vtd
execute if score z vtd matches ..-1 store result storage vtd tempvec[2] double 1 run scoreboard players operation z vtd *= -1 vtd