local CycloneHelper = CreateFrame("FRAME");

CycloneHelper:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");

CycloneHelper:SetScript("OnEvent", function(self, event, ...)
    local spellWeAreLookingFor = "Ice Barrier";
    local name,_,_,_,_, expirationTime,unitCaster,_,_, spellID = AuraUtil.FindAuraByName(spellWeAreLookingFor, "player", "HELPFUL")
    if not name then return print(spellWeAreLookingFor, " is not active.") end

    local remainingTime = expirationTime - GetTime();

    local spellName, _, icon, castTime, minRange, maxRange = GetSpellInfo(12826);
    local castTimeInSeconds = castTime / 1000;

    if remainingTime >= castTimeInSeconds then
        -- dont cast yet, too early
    else
        -- now we can cast
    end

    print(spellWeAreLookingFor, " remaining time:", remainingTime, "seconds")
end)
