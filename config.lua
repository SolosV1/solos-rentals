config = {}

-- target resource (only one of these can be true)
-------------------------------------------------------
config.qbtarget = false  
config.oxtarget = true  
-------------------------------------------------------


config.pedmodel = 'a_m_m_prolhost_01' -- ped model hash

config.scenario = 'WORLD_HUMAN_CLIPBOARD' -- scenario for ped to play, false to disable

config.locations = {
    ['legion'] = {
        ped = true, -- if false uses boxzone (below)

        coords = vector4(214.79, -806.52, 30.81, 337.16),
        
        -------- boxzone (only used if ped is false) --------

        length = 1.0,  
        width = 1.0,   
        minZ = 30.81,  
        maxZ = 30.81,  
        debug = false, 

        -----------------------------------------------------
        vehicles = {
            ['asea']        = {     -- vehicle model name
                price = 250,        -- ['vehicle'] = price
                image = false,      -- image for menu, false for no image
            },
            ['sentinel']    = {
                price = 500, 
                image = false,
            },
            ['bison']       = {
                price = 1000, 
                image = 'https://i.imgur.com/6dzUGIP.png',
            },
            ['patriot']     = {
                price = 1500, 
                image = false,
            },
            ['stretch']     = {
                price = 20000000, 
                image = false,
            },

        },

        vehiclespawncoords = vector4(212.64, -797.12, 30.87, 339.09), -- where vehicle spawns when rented

    },

    -- add as many locations as you'd like with any type of vehicle (air, water, land) follow same format as above
}

