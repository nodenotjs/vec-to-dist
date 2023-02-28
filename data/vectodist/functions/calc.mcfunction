## DESCRIPTION:
##   Calculates the magnitude of a vector 3.
##   The output is scaled in x1000 to support 3 decimals of precision
##
##   The function does not take the decimals of the vector into account. If you want more precision, increase its scale
##
## IN:
##   [STOAGE] vtd vec (array of 3 doubles. example: [1.0d, 1.0d, 1.0d])
## OUT:
##   [SCORE] dist vtd 
# by: N0de#0001 | _N0de

execute positioned 0.0 0.0 0.0 summon marker run function vectodist:internals/calc/a
# execute as 3c427e05-a39d-3c0a-5997-94330d125aa3 run function vectodist:internals/calc/a
# The use of the helper was discarded because it can be faulty if the entity is not loaded for some reason, thus breaking the datapack