![solos](https://github.com/SolosV1/solos-rentals/assets/108097907/8e56354b-9ee1-4566-83b1-04619b71fe43)

**Other FiveM Resources** | https://solos.tebex.io/ 

**Discord**               | https://discord.gg/UNbCJUrncS

# Vehicle Rental 
- Customize vehicle and pricing options
- Add as many locations as you'd like (Each location can have different vehicles)
- Players receive rental papers with meta data displaying renter's name, vehicle, and licence plate

# Compatibility

**Requires:** ox_lib | ox_inventory 

**Frameworks:** QB | ESX

**Targets:** qb-target | ox_target

# Preview

https://youtu.be/NMyKnpPYqCA 

# Gallery

![FiveM_b2699_GTAProcess_lVuAgry0md](https://github.com/SolosV1/solos-rentals/assets/108097907/497e9bf7-0522-4d5e-93a9-92ff466c6747)
![FiveM_b2699_GTAProcess_ZU03FpehGK](https://github.com/SolosV1/solos-rentals/assets/108097907/cbfbdc3a-7783-4b51-b9fa-3bf3058b6d61)
![FiveM_b2699_GTAProcess_RixfU7t61q](https://github.com/SolosV1/solos-rentals/assets/108097907/579328cf-332a-492d-a111-81c7497b0372)

# Installation:

1. add `solos-rentals-main` to your resources folder | Make sure folder is UNZIPPED!

2. `ensure solos-rentals` in server.cfg if necessary

3. Add `Rental Papers` item to inventory:

**Add rentalpapers.png to /ox_inventory/web/images/**

In /ox_inventory > /data > items.lua add the following:

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
4. Restart server

5. Enjoy!