---------------------------------------------------------------
--                Made by .𝕭𝕽𝕰 WXcookiE#0007                --
--                Script Name : vrp_donatii                  --
--                Don't Try to Repost Or Sell                --
--                   MADE FOR JOKER#6920                     --
---------------------------------------------------------------
local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vrp_chesturi")

RegisterServerEvent("donatii")
AddEventHandler(
    "donatii",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})

        vRPclient.notify(
            player,
            {GetPlayerName(source) .. " ~h~~p~ai deschis \n ~p~ \n              meniul cu donatii!"}
        )
    end
)

RegisterServerEvent("doneaza")
AddEventHandler(
    "doneaza",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        vRPclient.notify(
            player,
            {GetPlayerName(source) .. "\n~b~~h~DONATIILE SE FAC NUMAI LA\n ~b~ \n               ~h~JOKER#6920"}
        )
    end
)
