data modify storage vtd vec set from entity _N0de Pos

execute store result storage vtd vec[0] double 1 run data get storage vtd vec[0] 1000
execute store result storage vtd vec[1] double 1 run data get storage vtd vec[1] 1000
execute store result storage vtd vec[2] double 1 run data get storage vtd vec[2] 1000

function vectodist:calc
# tellraw @a {"score":{"objective":"vtd","name":"dist"}}