data modify storage vtd vec set value [1d, 1d, 1d]

execute store result storage vtd vec[0] double 1 run data get storage vtd vec[0] 100
execute store result storage vtd vec[1] double 1 run data get storage vtd vec[1] 100
execute store result storage vtd vec[2] double 1 run data get storage vtd vec[2] 100

function vectodist:calc
tellraw @a {"score":{"objective":"vtd","name":"dist"}}