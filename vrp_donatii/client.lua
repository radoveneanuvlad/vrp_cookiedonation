---------------------------------------------------------------
--                Made by .𝕭𝕽𝕰 WXcookiE#0007                --
--                Script Name : vrp_donatii                  --
--                Don't Try to Repost Or Sell                --
--                   MADE FOR JOKER#6920                     --
---------------------------------------------------------------
local meniu = false

RegisterNetEvent("meniu")
AddEventHandler(
    "meniu",
    function()
        meniu = not meniu
    end
)

Citizen.CreateThread(
    function()
        while true do
            Wait(0)
            RegisterCommand(
                "donatii",
                function()
                    meniu = not meniu
                end
            )
            if meniu then
                ShowCursorThisFrame() --Astea de aici in jos iti blocheaza movement-ul
                DisableControlAction(0, 24, true)
                DisableControlAction(0, 47, true)
                DisableControlAction(0, 58, true)
                DisableControlAction(0, 263, true)
                DisableControlAction(0, 264, true)
                DisableControlAction(0, 257, true)
                DisableControlAction(0, 140, true)
                DisableControlAction(0, 141, true)
                DisableControlAction(0, 142, true)
                DisableControlAction(0, 143, true)
                DisableControlAction(0, 1, true)
                DisableControlAction(0, 2, true)
                DrawRect(0.500, 0.500, 0.500, 0.500, 0, 0, 0, 120)
                drawtxt("Donatii", 1, 1, 0.500, 0.200, 0.70, 46, 163, 152, 255)
                DrawRect(0.500, 0.215, 0.120, 0.045, 0, 0, 0, 120)
                drawtxt("~r~[ ~w~Iesi? ~r~]", 1, 1, 0.720, 0.200, 0.70, 255, 0, 0, 255)
                drawtxt("~b~V~y~I~r~P", 1, 1, 0.330, 0.300, 0.70, 46, 163, 152, 255)
                drawtxt("~r~[~w~VIP 1~r~]", 1, 1, 0.300, 0.360, 0.70, 46, 163, 152, 255)
                drawtxt("~r~[~w~VIP 2~r~]", 1, 1, 0.300, 0.420, 0.70, 46, 163, 152, 255)
                drawtxt("~r~[~w~VIP 3~r~]", 1, 1, 0.300, 0.480, 0.70, 46, 163, 152, 255)
                drawtxt("~r~5 EURO", 1, 1, 0.360, 0.360, 0.70, 46, 163, 152, 255)
                drawtxt("~r~10 EURO", 1, 1, 0.360, 0.420, 0.70, 46, 163, 152, 255)
                drawtxt("~r~20 EURO", 1, 1, 0.360, 0.480, 0.70, 46, 163, 152, 255)
                drawtxt("~p~PREMIUM MENIU", 1, 1, 0.330, 0.550, 0.70, 46, 163, 152, 255)
                drawtxt("~r~40 EURO", 1, 1, 0.330, 0.600, 0.70, 46, 163, 152, 255)
                --buton doneaza
                DrawRect(0.500, 0.700, 0.120, 0.045, 255, 223, 0, 255)
                drawtxt("D O N E A Z A", 1, 1, 0.500, 0.688, 0.70, 0, 0, 0, 255)
                --mafie
                drawtxt("~bl~M~w~A~bl~F~w~I~bl~E", 1, 1, 0.500, 0.300, 0.70, 0, 0, 0, 255)
                drawtxt("~r~[~w~MAFIE FULL~r~]", 1, 1, 0.450, 0.360, 0.70, 46, 163, 152, 255)
                drawtxt("~r~50 EURO", 1, 1, 0.520, 0.360, 0.70, 46, 163, 152, 255)
                --schimbi tu
                drawtxt("SCHIMBI TU", 1, 1, 0.650, 0.360, 0.70, 46, 163, 152, 255)
                drawtxt("SCHIMBI TU", 1, 1, 0.650, 0.420, 0.70, 46, 163, 152, 255)
                drawtxt("SCHIMBI TU", 1, 1, 0.650, 0.480, 0.70, 46, 163, 152, 255)
                drawtxt("SCHIMBI TU", 1, 1, 0.650, 0.300, 0.70, 46, 163, 152, 255)
                drawtxt("SCHIMBI TU", 1, 1, 0.500, 0.550, 0.70, 46, 163, 152, 255)
                drawtxt("SCHIMBI TU", 1, 1, 0.500, 0.600, 0.70, 46, 163, 152, 255)
                drawtxt("Pual", 1, 1, 0.650, 0.550, 0.70, 46, 163, 152, 255)
                drawtxt("SCHIMBI TU", 1, 1, 0.650, 0.600, 0.70, 46, 163, 152, 255)
                if isCursorInPosition(0.500, 0.688, 0.20, 0.20) and IsControlJustPressed(0, 18) then
                    TriggerServerEvent("doneaza")
                end
                if isCursorInPosition(0.720, 0.200, 0.15, 0.15) and IsControlJustPressed(0, 18) then
                    meniu = not meniu
                end
            end
        end
    end
)

function drawtxt(text, font, centre, x, y, scale, r, g, b, a)
    y = y - 0.010
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function isCursorInPosition(x, y, width, height)
    local sx, sy = 1920, 1080
    local cx, cy = GetNuiCursorPosition()
    local cx, cy = (cx / sx), (cy / sy)

    local width = width / 2
    local height = height / 2

    if (cx >= (x - width) and cx <= (x + width)) and (cy >= (y - height) and cy <= (y + height)) then
        return true
    else
        return false
    end
end
