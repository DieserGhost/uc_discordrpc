local ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    while true do 
        local PlayerESXName = ESX.PlayerData.name
        local PlayerESXJob = ESX.PlayerData.job.name
        local playerId = GetPlayerServerId(PlayerId())
        local playerGroup = GetPlayerGroup(PlayerId()) 
        
        local appId = YOUR_DISCORD_APP_ID -- Deine Discord-App-ID hier einfügen
        local smallPic = 'small'
        local bigPic = 'big'

        SetDiscordAppId(appId)

        -- Discord Rich Presence aktualisieren
        SetRichPresence("Name: " .. PlayerESXName .. "\nJob: " .. PlayerESXJob .. "\nID: " .. playerId .. "\nGroup: " .. playerGroup)
        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('UltraCity')
        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('FiveM - 7290')

        Citizen.Wait(1000) 
    end
end)
