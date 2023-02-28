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

The multiplication method has a small inaccuracy, which I plan to improve in the future.
You notice that there is 1 decimal inaccuracy in this particular case, since the correct value would be 1732, but this is usually irrelevant

If you want precision, I always recommend scaling the input value a bit to get a more precise result. The more scaled, the higher the precision

Extremely high values also have a small inaccuracy. Example: at the edge of the world (magnitude 4M, vec = [299999999.0d,0.0d,299999999.0d] (x10 scale)) there is a difference of ~4800 blocks. Note that this magnitude is gigantic and you will hardly reach this point. If for some reason you get to this value, you probably shouldn't be on such a high scale
