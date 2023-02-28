## DESCRIPTION:
##   Calculates the magnitude of a vector 3.
##   The output is scaled in x1000 to support 3 decimals of precision
##   The maximum possible distance to calculate is 2.147.483,647 blocks.
##
##   If your result equals the maximum distance, you can assume that the entity is
##    further away and the datapack will not be able to measure the distance
##
## KNOW ISSUES:
##    The greater the distance, the less accurate (tested on 1.19.4). I could not fix this
##    I don't recommend using this function for high accuracy at long distances
##
## IN:
##   [STOAGE] vtd vec (array of 3 doubles. example: [1.0d, 1.0d, 1.0d])
## OUT:
##   [SCORE] dist vtd (x1000 scaled)
# by: N0de#0001 | _N0de

execute positioned 0.0 0.0 0.0 summon marker run function vectodist:internals/calc/a
# execute as 3c427e05-a39d-3c0a-5997-94330d125aa3 run function vectodist:internals/calc/a