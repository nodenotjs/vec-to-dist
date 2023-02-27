# vec-to-dist

Converts a Vector3 to distance using a distance approximation method with tp


# Pros and Cons:

### Pros: 
The advantage of this method over using math is that it works without the danger of overflow over basically any distance.

### Cons:
The downside is that it is heavy and not as accurate at long distances.


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