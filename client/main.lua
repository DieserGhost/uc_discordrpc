Citizen.CreateThread(function()
    while true do 
        local PlayerName = GetPlayerName(PlayerId())
        local playerId = GetPlayerServerId(PlayerId())
        local playerGroup = GetPlayerGroup(PlayerId()) 
        
        local appId = YOUR_DISCORD_APP_ID
        local smallPic = 'small'
        local bigPic = 'big'

        SetDiscordAppId(appId)

        SetRichPresence("ID: " .. playerId .. "\nRang: " .. playerGroup .. "\nName: " .. PlayerName)
        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('UltraCity')
        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('FiveM - 7290')

        Citizen.Wait(1000) 
    end
end)
