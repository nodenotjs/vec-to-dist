# vec-to-dist

A library for calculating distance between vectors accurately even over large distances

## ⁉️ Implementing in your Datapack

First, install the datapack on your world or embed it in your datapack

The only command in this datapack is `/function vectodist:calc`. Let's take a look at how it works!

Let's start by calculating the distance of a simple vector 3:

```mcfunction
data modify storage vtd vec set value [1d, 1d, 1d]
function vectodist:calc
```

This will set the fakeplayer `dist` of the `vtd` score to 1732.
Note that the value is scaled by x1000, so we can say it has 3 decimals of precision