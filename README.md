# CS 442 Week 1 – Enhanced Counter App

**Name:** Rafia Naeem
**Roll Number:** 04072313032

## App Screenshot

![Running App](Screenshot%202026-09-11%20152151.png)

## What I Learned About `setState()`

When I press the **+** or **Reset** button, the value of the counter changes, but Flutter needs to be told that it should show that change on the screen. That is what `setState()` does—it lets Flutter know that the data has changed and the related widgets should be rebuilt with the new value. Without `setState()`, the value might change in the code, but the screen would continue showing the old value because Flutter was not notified about the change.

