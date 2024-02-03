#Installtion
put the following below in your cfg

-----------------------------
ensure c-waterloss
-----------------------------

-----------------------------
Dependencies
-----------------------------
qb-core
qb-inventory or lj-inventory

-----------------------------
Optional dependencies
-----------------------------
ox_lib


Items to add to your server
-----------------------------

put the following into your items.lua [qb]\qb-core\shared\items.lua

```brokenphone                        = { name = 'brokenphone', label = 'Damaged Iphone', weight = 1000, type = 'item', image = 'phone.png', unique = true, useable = false, shouldClose = false, combinable = nil, description = 'Broken Iphone that no longer works. Where can i fix it???' },```


----------------------------------------------------------------------------------------------------------
Repairing a broken phone is not yet setup but will be coming out later within a free resource that will be available on my github