# C-Waterloss
[Discord](https://discord.gg/YvThXdz59G)


# Preview Updated
[Video](https://streamable.com/por9u4)

# Feature
- Removes phone and radio when in water and with the config you can give back items when out of water
- Lots of config options
- Optimized at 0.00ms idle and 0.01ms while in use
- Drag and drop
- Open Source

# Installation
1. Download From [github](https://github.com/SirCyirx/C-WaterLoss)
2. Rename The Folder From C-WaterLoss-main to C-WaterLoss.
3. Put The Folder In Your Resources Folder.
4. use this path [qb]/qb-core/shared/items.lua and put this anywhere
```lua
brokenphone                        = { name = 'brokenphone', label = 'Damaged Iphone', weight = 1000, type = 'item', image = 'phone.png', unique = true, useable = false, shouldClose = false, combinable = nil, description = 'Broken Iphone that no longer works. Where can i fix it???' },
```
```lua
brokenradio                        = { name = 'brokenradio', label = 'Damaged Radio', weight = 1000, type = 'item', image = 'radio.png', unique = true, useable = false, shouldClose = false, combinable = nil, description = 'Broken Iphone that no longer works. Where can i fix it???' },
```

5. Restart Your Server.

# Dependencies
1. [qb-core](https://github.com/qbcore-framework/qb-core)
2. [qb-inventory](https://github.com/qbcore-framework/qb-inventory/releases/tag/v1) or [lj-inventory](https://github.com/loljoshie/lj-inventory/releases/tag/1.2)

# Optional dependencies
1. [ox_lib](https://github.com/overextended/ox_lib/releases) 

Put this into your cfg in this in order
```
ensure qb-core
ensure qb-inventory or lj-inventory
ensure C-WaterLoss
```