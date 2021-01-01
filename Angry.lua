local itemIds = {
    [173008] = "6970:4540", -- Grand Inquisitor Aurica
    [173007] = "6450:5270", -- Grand Inquisitor Nicu
    [173006] = "7210:5320", -- High Inquisitor Dacian
    [173000] = "7530:4420", -- High Inquisitor Gabi
    [173005] = "6980:5230", -- High Inquisitor Magda
    [173001] = "7120:4240", -- High Inquisitor Radu
    [172996] = "6908:4720", -- Inquisitor Sorin
    [172997] = "6730:4340", -- Inquisitor Petre
    [172998] = "6470:4640", -- Inquisitor Otilia
    [172999] = "7620:5210", -- Inquisitor Traian
};

SLASH_SINSTONES1 = '/sinstones';
function SlashCmdList.SINSTONES(msg, editBox)
    for bag = 0, NUM_BAG_SLOTS do
        local slots = GetContainerNumSlots(bag)
        for slot = 1, slots do
            local itemLink, _, _, itemID = select(7, GetContainerItemInfo(bag, slot))
            local coords = itemIds[itemID]
            if coords ~= nil then
                SendChatMessage(itemLink .. " |cffffff00|Hworldmap:1525:" .. coords .. "|h[|A:Waypoint-MapPin-ChatIcon:13:13:0:0|a Map Pin Location]|h|r", "PARTY")
            end
        end
    end
end
