function CreateNpc(model, coords)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(GetHashKey(model)) do
        Wait(1)
    end

    local npc = CreatePed(4, GetHashKey(model), coords.x, coords.y, coords.z - 1.0, coords.h, false, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetPedDefaultComponentVariation(npc)
    return npc
end

function CreateBlip(coords, sprite, color, display, scale, label)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, color)
    SetBlipDisplay(blip, display)
    SetBlipScale(blip, scale)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(label)
    EndTextCommandSetBlipName(blip)
    return blip
end

for k,v in pairs(Config.marchand) do
    local npc = CreateNpc(v.npc, {x = v.coord.x, y = v.coord.y, z = v.coord.z, h = v.coord.h})
    local menuId = ("sell_%s"):format(k)

    if v.blip and v.blip.visible then
        local blip = CreateBlip({x = v.coord.x, y = v.coord.y, z = v.coord.z}, v.blip.sprite, v.blip.color, v.blip.display, v.blip.scale, v.blip.name)
    end

	exports.ox_target:addLocalEntity(npc, {
        label = v.label,
        icon = 'fa-solid fa-tag',
        onSelect = function()
            ESX.TriggerServerCallback("ox_sellshop:GetItemslabel", function(itemsLabel)
                lib.registerContext({
                    id = menuId,
                    title = v.blip and v.blip.name or v.label,
                    options = ESX.Table.Map(v.sellItems, function(data)
                        return {
                            title = ("%s - %s%s"):format(itemsLabel[data.item], data.price, "$"),
                            description = ("Vendre %s pour %s%s"):format(itemsLabel[data.item], data.price, "$"),
                            icon = 'fa-solid fa-box',
                            onSelect = function()
                                TriggerServerEvent('ox_sellshop:sellItem', data.item, data.price, data.currency)
                                
                                -- On réaffiche le menu immédiatement après l'envoi de l'event
                                lib.showContext(menuId)
                            end
                        }
                    end)
                })
                lib.showContext(menuId)
            end, ESX.Table.Map(v.sellItems, function(data)
                return {item = data.item}
            end))
        end
    })
end