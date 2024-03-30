local ESX = nil

ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)
    end

    while true do 
        local playerId = GetPlayerServerId(PlayerId())

        local playerName = ""
        local playerJob = ""
        ESX.TriggerServerCallback('esx:playerLoaded', function(playerLoaded)
            if playerLoaded then
                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    playerName = skin.name
                    playerJob = skin.job.label
                end)
            end
        end)

        local appId = YOUR_DISCORD_APP_ID 
        local smallPic = 'small'
        local bigPic = 'big'

        SetDiscordAppId(appId)

        SetRichPresence("Name: " .. playerName .. "\nJob: " .. playerJob .. "\nID: " .. playerId)
        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('UltraCity')
        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('FiveM - 7290')

        Citizen.Wait(1000) 
    end
end)
