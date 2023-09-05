[https://i.imgur.com/jQ5hOSd.png]

For more FiveM Resources 

https://solos.tebex.io/ 

# Vehicle Rental 

Requires: 
ox_lib
ox_inventory 

Frameworks: QB | ESX

# Preview 



# Item:

/ox_inventory > /data > items.lua 

** Add rentalpapers.png to /ox_inventory/web/images/ **

```lua
['rentalpapers'] = {
    label = "Rental Papers",
    weight = 0,
    stack = false,
    close = false,
    description = "Rental Papers",
    client = {
        image = "rentalpapers.png",
    },
},
```
