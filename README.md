# CS 442 Week 1 – Enhanced Counter App

**Name:** Rafia Naeem
**Roll Number:** 04072313032

## App Screenshot

![Running App](Screenshot%202026-09-11%20152151.png)

## Reflection

`setState(() { ... })` tells Flutter that a value used by the app has changed and the screen needs to update. When I change the counter or reset count inside `setState()`, Flutter rebuilds the widgets and shows the new values. Without `setState()`, Flutter is not notified about the change, so the updated value would not automatically appear on the screen.
