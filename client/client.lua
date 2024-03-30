local ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    while true do 
        local PlayerESXName = ESX.PlayerData.name

        local PlayerESXJob = ESX.PlayerData.job.name

        local playerId = GetPlayerServerId(PlayerId())

        local playerGroup = GetPlayerGroup(PlayerId()) 

        local appID = 
        local smallPic = 'small'
        local bigPic = 'bic'

        SetDiscordAppId(appId)

        SetDiscordRichPresenceAsset(bigPic)
        SetDiscordRichPresenceAssetText('UltraCity')

        SetDiscordRichPresenceAssetSmall(smallPic)
        SetDiscordRichPresenceAssetSmallText('FiveM - 7290')

        Citizen.Wait(1000) 
    end
end)

