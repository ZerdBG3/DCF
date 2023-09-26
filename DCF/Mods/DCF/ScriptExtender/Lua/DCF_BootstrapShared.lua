local DCF_Passive = "RAW_DisableSkillCheckCritFail"

local function DCF_CharIsHero(char)
    return char ~= nil and string.find(char.Passives, "WeaponThrow") and string.find(char.Passives, "CombatStartAttack")
end

local function DCF_StatsLoaded()
    for _, name in pairs(Ext.Stats.GetStats("Character")) do
        local char = Ext.Stats.Get(name)

        if DCF_CharIsHero(char) then
            -- Ext.Utils.Print("\nCharacter: " .. name)
            if string.find(char.Passives, DCF_Passive) then
                -- Ext.Utils.Print("\tSkipping; already has passive")
            else
                -- Ext.Utils.Print("\tAdding passive: " .. DCF_Passive)
                char.Passives = DCF_Passive .. ";" .. char.Passives
                -- Ext.Utils.Print("\tPassives: " .. char.Passives)
            end
        end
    end
end

Ext.Events.StatsLoaded:Subscribe(DCF_StatsLoaded)
