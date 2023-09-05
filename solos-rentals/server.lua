local QBCore = GetResourceState('qb-core') == 'started' and exports['qb-core']:GetCoreObject()
local ESX = GetResourceState('es_extended') == 'started' and exports.es_extended:getSharedObject()

local function PlayerName(src)
    if QBCore then 
        local Player = QBCore.Functions.GetPlayer(src)
        return Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname
    elseif ESX then 
        local Player = ESX.GetPlayerFromId(src)
        local first, last
        if Player.get and Player.get('firstName') and Player.get('lastName') then
            first = Player.get('firstName')
            last = Player.get('lastName')
        else
            local name = MySQL.Sync.fetchAll('SELECT `firstname`, `lastname` FROM `users` WHERE `identifier`=@identifier', { ['@identifier'] = ESX.GetIdentifier(source) })
            first, last = name[1]?.firstname or ESX.GetPlayerName(source), name[1]?.lastname or ''
        end
        return first..' '..last
    end
end

RegisterNetEvent('solos-rentals:server:RentVehicle', function(vehicle, price, plate)
    local src = source
    local player_name = PlayerName(src)
    exports.ox_inventory:AddItem(src, 'rentalpapers', 1, 
        {description = 'Owner: '..player_name..' | Plate: '..plate..' | Vehicle: '..vehicle:gsub("^%l", string.upper)}
    )

end)