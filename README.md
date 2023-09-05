![solos](https://github.com/SolosV1/solos-rentals/assets/108097907/8e56354b-9ee1-4566-83b1-04619b71fe43)

**Other FiveM Resources** | https://solos.tebex.io/ 

**Discord**               | https://discord.gg/UNbCJUrncS

# Vehicle Rental 
- Customize vehicle and pricing options
- Add as many locations as you'd like (Each lcoation can have different vehicles)
- Players recieve rental papers with meta data displaying renter's name, vehicle, and licence plate

**Requires:** ox_lib | ox_inventory 

**Frameworks:** QB | ESX

# Preview 

https://youtu.be/NMyKnpPYqCA 

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
