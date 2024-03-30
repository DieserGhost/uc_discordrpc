local ESX = nil

local ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)
    end

    while true do 
        local PlayerESXName = GetPlayerName(PlayerId())
        local PlayerESXJob = ""
        if ESX.PlayerData.job then
            PlayerESXJob = ESX.PlayerData.job.name
        else
            PlayerESXJob = "No Job"
        end
        local playerId = GetPlayerServerId(PlayerId())
        
        local appId = YOUR_DISCORD_APP_ID -- Deine Discord-App-ID hier einfügen
        local smallPic = 'small'
        local bigPic = 'big'

        SetDiscordAppId(appId)

        -- Discord Rich Presence aktualisieren
        SetRichPresence("Name: " .. PlayerESXName .. "\nJob: " .. PlayerESXJob .. "\nID: " .. playerId)
        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('UltraCity')
        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('FiveM - 7290')

        Citizen.Wait(1000) 
    end
end)


