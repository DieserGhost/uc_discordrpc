
Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)
    end

    while true do 
        local PlayerESXName = GetPlayerName(PlayerId())
        local playerId = GetPlayerServerId(PlayerId())
        local playerGroup = ""

        playerGroup = GetPlayerGroup(PlayerId())
        
        local appId = YOUR_DISCORD_APP_ID
        local smallPic = 'small'
        local bigPic = 'big'

        SetDiscordAppId(appId)

        SetRichPresence("ID: " .. playerId .. "\nRang: " .. PlayerESXJob .. "\nName: " .. PlayerESXName)
        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('UltraCity')
        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('FiveM - 7290')

        Citizen.Wait(1000) 
    end
end)


