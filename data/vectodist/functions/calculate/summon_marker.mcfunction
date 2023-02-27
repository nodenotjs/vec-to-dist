# If you are using 1.19.4+:
#execute summon minecraft:marker positioned 0 0 0 run function vectodist:calculate/marker

# If you are using 1.17.X - 1.19.3:
summon minecraft:marker ~ ~ ~ {Tags:[vtd.init]}
execute as @e[type=marker,limit=1] positioned 0 0 0 run function vectodist:calculate/marker

# If you are using 1.13.X - 1.16.X:
#summon minecraft:marker ~ ~ ~ {Tags:[vtd.init]}
#execute as @e[type=marker,limit=1] positioned 0 0 0 run function vectodist:calculate/marker