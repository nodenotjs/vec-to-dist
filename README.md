# vec-to-dist

A library for calculating distance between vectors accurately even over large distances

## ⁉️ Implementing in your Datapack

First, install the datapack on your world or embed it in your datapack

The only command in this datapack is `/function vectodist:calc`. Let's take a look at how it works!

Let's start by calculating the distance of a simple vector 3:

```mcfunction
data modify storage vtd vec set value [1000d, 1000d, 1000d]
function vectodist:calc
```

This will set the fakeplayer `dist` of the `vtd` score to 1731.

You notice that there is 1 decimal inaccuracy in this particular case, since the correct value would be 1732, but this is usually irrelevant. Below I explain the reason for this

Now let's calculate the distance of a player based on another player with 3 decimals of precision

```mcfunction
# Objective created with the intention of a tutorial.
scoreboard objectives add tmp_math dummy


data modify storage tmp Position1 set from entity _N0de Pos
data modify storage tmp Position2 set from entity AnotherPlayer Pos


execute store result score x tmp_math run data get storage vtd Position1[0] 1000
execute store result score y tmp_math run data get storage vtd Position1[1] 1000
execute store result score z tmp_math run data get storage vtd Position1[2] 1000

execute store result score x2 tmp_math run data get storage vtd Position2[0] 1000
execute store result score y2 tmp_math run data get storage vtd Position2[1] 1000
execute store result score z2 tmp_math run data get storage vtd Position2[2] 1000

# Defines the array if it doesn't exist
data modify storage vec set value [0d,0d,0d]

execute store result storage vtd vec[0] double 1 run scoreboard players operation x tmp_math -= x2 tmp_math
execute store result storage vtd vec[1] double 1 run scoreboard players operation y tmp_math -= y2 tmp_math
execute store result storage vtd vec[2] double 1 run scoreboard players operation z tmp_math -= z2 tmp_math

function vectodist:calc
```

This will calculate the distance between the two entities.

_The library doesn't yet have a function to subtract the vectors automatically._

## Important Notes:

The multiplication method has a small inaccuracy, which I plan to improve in the future.

You notice that there is 1 decimal inaccuracy in this particular case, since the correct value would be 1732, but this is usually irrelevant
If you want precision, I always recommend scaling the input value a bit to get a more precise result. The more scaled, the higher the precision

Extremely high values also have a small inaccuracy. Example: at the edge of the world (magnitude 4M, vec = [299999999.0d,0.0d,299999999.0d] (x10 scale)) there is a difference of ~4800 blocks. Note that this magnitude is gigantic and you will hardly reach this point. If for some reason you get to this value, you probably shouldn't be on such a high scale
