Config = {}
Config.Locale = "en"
Config.Mysql = 'oxmysql' -- "ghmattisql", "mysql-async", "oxmysql"
Config.framework = 'ESX' -- ESX or QBCORE
Config.UsePopUI = false -- Create a Thread for checking playercoords and Use POPUI to Trigger Event, set this to false if using rayzone. Popui is originaly built in to RayZone -- DOWNLOAD https://github.com/renzuzu/renzu_popui
Config.Quickpick = false -- if false system will create a garage shell and spawn every vehicle you preview
Config.EnableTestDrive = true
Config.PlateSpace = true -- enable / disable plate spaces (compatibility with esx 1.1?)
Config.SaveJob = true -- this config is to save the value to owned_vehicles.job column
Config.Licensed = false -- Enable Driver Licensed Checker
Config.DisplayCars = true -- enable display of cars
Config.Marker = true -- use draw marker and Iscontrollpress native , popui will not work if this is true

-- VEHICLE THUMBNAILS IMAGE
-- this is standalone
Config.CustomImg = false -- if true your Config.CustomImgColumn IMAGE url will be used for each vehicles else, the imgs/uploads/MODEL.jpg
Config.CustomImgColumn = 'imglink' -- db column name
-- this is standalone
-- Config.use_renzu_vehthumb -- Config.CustomImg must be false
Config.use_renzu_vehthumb = false -- use vehicle thumb generation script
Config.RgbColor = true -- your framework or garage must support custom colors ex. https://github.com/renzuzu/renzu_garage

-- CARKEYS --
--EXTRA
Config.UseArenaSpawn = false -- will use custom location for spawning vehicle in quickpick == false
-- MAIN
VehicleShop = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        title = "Concessionnaire",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        type = 'car',
        job = 'all',
        default_garage = 'A',
        Dist = 4, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 595, scale = 0.7},
        Blipss = true,
        npc = 'cs_paper',
        shop_x = -56.9579150391, 
        shop_y = -1098.7921826172,
        shop_z = 26.422359466553, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = -32.283363342285,
        spawn_y = -1091.0841064453,
        spawn_z = 25.749485015869,
        heading = 340.23065185547, -- Vehicle spawn location,
        displaycars = {
            [1] = {model = 'jester3', value = 100000, coord = vector4(-47.427722930908,-1101.3747558594,25.714616775513,341.64694213867)},
            [2] = {model = 'fmj', value = 1000000, coord = vector4(-44.736125946045,-1094.1976318359,25.748092651367,158.2547454834)},
            [3] = {model = 'adder', value = 1000000, coord = vector4(-40.32751083374,-1095.6105957031,26.009906768799,158.58676147461)},
            [4] = {model = 'zentorno', value = 1000000, coord = vector4(-43.318450927734,-1102.1627197266,25.758722305298,340.29724121094)},
        }
    },

    ['Police Vehicle Shop'] = { -- same with name
        name = "Police Vehicle Shop", --MRPD police shop
        title = "Police Vehicle Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'police',
        type = 'car',
        default_garage = 'Police Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 456.89453125,
        shop_y = -1020.8922729492,
        shop_z = 28.290912628174, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = 449.27224731445,
        spawn_y = -1025.3255615234,
        spawn_z = 27.905115127563,
        heading = 2.6015937328339, -- Vehicle spawn location
        plateprefix = 'LSPD', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=100000,model='police',name="Police Car", grade = 1},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=100000,model='police2',name="Police 2", grade = 2},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=100000,model='police4',name="Police 4", grade = 3},
            {shop='Police Vehicle Shop',brand='Police',stock=50,price=100000,model='police3',name="Police SUV", grade = 4},
        },
    },

    ['Police Plane Shop'] = { -- same with name
        name = "Police Plane Shop", --MRPD police shop
        title = "Police Plane Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'police',
        type = 'air',
        default_garage = 'Police Plane Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 439.74,
        shop_y = -995.89,
        shop_z = 43.69,
        shop_h = 26.420000000,
        spawn_x = 449.21,
        spawn_y = -981.27,
        spawn_z = 44.08,
        heading = 90.0, -- Vehicle spawn location
        plateprefix = 'LSPD', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Police Plane Shop',brand='Police',stock=50,price=1000,model='polmav',name="Police", grade = 1},
            {shop='Police Plane Shop',brand='Police',stock=50,price=1000,model='hydra',name="Police", grade = 2},
            {shop='Police Plane Shop',brand='Police',stock=50,price=1000,model='hydra',name="Police", grade = 3},
            {shop='Police Plane Shop',brand='Police',stock=50,price=1000,model='hydra',name="Police", grade = 4},
        },
    },

    ['Ambumance Vehicle Shop'] = { -- same with name
        name = "Ambumance Vehicle Shop", --MRPD police shop
        title = "Ambumance Vehicle Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'ambulance',
        type = 'car',
        default_garage = 'Ambumance Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 408.00,
        shop_y = -1413.92,
        shop_z = 29.40,
        shop_h = 26.420000000,
        spawn_x = 408.11,
        spawn_y = -1420.44,
        spawn_z = 29.22,
        heading = 229.31, -- Vehicle spawn location
        plateprefix = 'EMS', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Ambumance Vehicle Shop',brand='Ambulance',stock=50,price=100000,model='ambulance',name="Ambulance", grade = 1},
        },
    },

    ['Ambumance Plane Shop'] = { -- same with name
        name = "Ambumance Plane Shop", --MRPD police shop
        title = "Ambumance Plane Shop",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'ambulance',
        type = 'air',
        default_garage = 'Ambumance Plane Garage',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 662, scale = 0.7},
        npc = 'cs_paper',
        shop_x = 287.21,
        shop_y = -1442.63,
        shop_z = 46.51,
        shop_h = 26.420000000,
        spawn_x = 299.34,
        spawn_y = -1453.33,
        spawn_z = 46.90,
        heading = 140.0, -- Vehicle spawn location
        plateprefix = 'EMS', -- carefull using this, maximum should be 4, recommended is 3, use this only for limited vehicles, if you use this parameter in other shop, you might have a limited plates available, ex. LSPD1234 (max char of plate is 8) it means you only have 9999 vehicles possible with this LSPD
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Ambumance Plane Shop',brand='Ambulance',stock=50,price=1000,model='polmav',name="Ambulance", grade = 1},
        },
    },

    -- BOAT shop
    ['Yacht Club'] = { -- same with name
        name = "Yacht Club", --LEGION
        type = 'boat', -- type of shop
        title = "Yacht Club",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        job = 'all',
        default_garage = 'Boat Garage A',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 410, scale = 0.7},
        npc = 'cs_paper',
        Blipss = true,
        shop_x = -806.86,
        shop_y = -1373.83,
        shop_z = 5.15, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = -818.69775390625,
        spawn_y = -1420.5775146484,
        spawn_z = 0.12045155465603,
        heading = 178.27006530762, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=50000,model='dinghy',name="Dinghy"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='dinghy2',name="Dinghy2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='dinghy3',name="Dinghy 3"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='dinghy4',name="Dinghy4"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='marquis',name="Marquiz"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='toro2',name="Toro 2"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='submersible',name="Submersible"},
            {shop='Yacht Club',brand='Normal Boat',stock=50,price=100000,model='submersible2',name="Submersible2"},
        },
    },
    -- PLANE SHOP
    ['Devin Weston'] = { -- same with name
        name = "Devin Weston", --LEGION
        title = "Devin Weston",
        icon = 'https://i.ibb.co/v44KNf3K/pdm.png',
        type = 'air', -- type of shop
        job = 'all',
        default_garage = 'Plane Hangar A',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 423, scale = 0.7},
        npc = 'cs_paper',
        Blipss = true,
        shop_x = -916.04522705078,
        shop_y = -3025.2377929688,
        shop_z = 13.945063591003, -- coordinates for this garage
        shop_h = 26.420000000,
        spawn_x = -985.01806640625,
        spawn_y = -3005.4670410156,
        spawn_z = 14.783501625061,
        heading = 54.631553649902, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=1000,model='hydra',name="Hydra"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='titan',name="Titan"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='luxor2',name="Luxor 2"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='luxor',name="Luxor"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='nimbus',name="Nimbus"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='dodo',name="Dodo"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='duster',name="Duster"},
            {shop='Devin Weston',brand='Propeller Type',stock=50,price=100000,model='nokota',name="Nokota"},
        },
    },
}

Config.EnableVehicleSelling = false -- allow your user to sell the vehicle and deletes it from database
Config.RefundPercent = 70 -- 70% (percentage from original value)
Refund = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        job = 'all',
        Dist = 10, -- distance (DEPRECATED)
        Blip = {color = 38, sprite = 728, scale = 0.5},
        Blipss = true,
        shop_x = -45.81,
        shop_y = -1082.62,
        shop_z = 25.48, -- coordinates for selling / refunding the vehicle
    },
}

lib = nil

function TryOxLib(file)
    local fcall = function()
        local name = ('%s.lua'):format(file)
        local content = LoadResourceFile('ox_lib',name)
        local f, err = load(content)
        return f()
    end
    _, ret = pcall(fcall,false)
    return ret
end