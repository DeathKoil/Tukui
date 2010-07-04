------------------------------------------------------------------------
--	First Time Launch and On Login file
------------------------------------------------------------------------

local function install()
	-- because we don't really need to set cVar multiple time.
	if TukuiData.SetCVar ~= true then
		SetCVar("buffDurations", 1)
		SetCVar("lootUnderMouse", 1)
		SetCVar("autoSelfCast", 1)
		SetCVar("showItemLevel", 1)
		SetCVar("equipmentManager", 1)
		SetCVar("mapQuestDifficulty", 1)
		SetCVar("previewTalents", 1)
		SetCVar("scriptErrors", 0)
		SetCVar("nameplateShowFriends", 0)
		SetCVar("nameplateShowFriendlyPets", 0)
		SetCVar("nameplateShowFriendlyGuardians", 0)
		SetCVar("nameplateShowFriendlyTotems", 0)
		SetCVar("nameplateShowEnemies", 1)
		SetCVar("nameplateShowEnemyPets", 1)
		SetCVar("nameplateShowEnemyGuardians", 1)
		SetCVar("nameplateShowEnemyTotems", 1)
		SetCVar("ShowClassColorInNameplate", 1)
		SetCVar("screenshotQuality", 8)
		SetCVar("cameraDistanceMax", 50)
		SetCVar("cameraDistanceMaxFactor", 3.4)
		SetCVar("showClock", 0)
		SetCVar("nameplateAllowOverlap", 1)
		SetCVar("chatMouseScroll", 1)
		SetCVar("chatStyle", "classic")
		SetCVar("WholeChatWindowClickable", 0)
		SetCVar("ConversationMode", "inline")
		SetCVar("CombatDamage", 1)
		SetCVar("CombatHealing", 1)
		SetCVar("showTutorials", 0)
		SetCVar("showNewbieTips", 0)
		SetCVar("hidePartyInRaid", 1)
		SetCVar("Maxfps", 120)
		SetCVar("autoDismountFlying", 1)
		SetCVar("autoQuestWatch", 1)
		SetCVar("autoQuestProgress", 1)
		SetCVar("showLootSpam", 1)
		SetCVar("guildMemberNotify", 1)
		SetCVar("chatBubblesParty", 0)
		SetCVar("chatBubbles", 0)	
		SetCVar("UnitNameOwn", 0)
		SetCVar("UnitNameNPC", 0)
		SetCVar("UnitNameNonCombatCreatureName", 0)
		SetCVar("UnitNamePlayerGuild", 1)
		SetCVar("UnitNamePlayerPVPTitle", 1)
		SetCVar("UnitNameFriendlyPlayerName", 0)
		SetCVar("UnitNameFriendlyPetName", 0)
		SetCVar("UnitNameFriendlyGuardianName", 0)
		SetCVar("UnitNameFriendlyTotemName", 0)
		SetCVar("UnitNameEnemyPlayerName", 0)
		SetCVar("UnitNameEnemyPetName", 0)
		SetCVar("UnitNameEnemyGuardianName", 0)
		SetCVar("UnitNameEnemyTotemName", 0)
		SetCVar("UberTooltips", 1)
		SetCVar("removeChatDelay", 1)
		
		if TukuiDB.myname == "Tukz" then	
			-- setting this the creator or tukui only, because a lot of people don't like this change.
			SetCVar("secureAbilityToggle", 0)
		end
	end
	
	-- Var ok, now setting chat frames.					
	FCF_ResetChatWindows()
	FCF_SetLocked(ChatFrame1, 1)
	FCF_DockFrame(ChatFrame2)
	FCF_SetLocked(ChatFrame2, 1)
	FCF_OpenNewWindow("Whispers")
	FCF_SetLocked(ChatFrame3, 1)
	FCF_DockFrame(ChatFrame3)
	
	for i = 1, NUM_CHAT_WINDOWS do
		local chatFrameId = _G["ChatFrame"..i]:GetID()
		local chatName = FCF_GetChatWindowInfo(chatFrameId)
		
		_G["ChatFrame"..i]:SetSize(TukuiDB:Scale(TukuiDB["panels"].tinfowidth -6), TukuiDB:Scale(111))
		
		-- this is the default width and height of tukui chats.
		SetChatWindowSavedDimensions(chatFrameId, TukuiDB:Scale(TukuiDB["panels"].tinfowidth -6), TukuiDB:Scale(111))
		
		-- move general bottom left or Loot (if found) on right.
		if i == 1 then
			_G["ChatFrame"..i]:ClearAllPoints()
			_G["ChatFrame"..i]:SetPoint("BOTTOMLEFT", TukuiInfoLeft, "TOPLEFT", TukuiDB:Scale(3), TukuiDB:Scale(10))
		end
				
		-- save new default position and dimension
		FCF_SavePositionAndDimensions(_G["ChatFrame"..i])
		
		-- set default tukui font size
		FCF_SetChatWindowFontSize(nil, _G["ChatFrame"..i], 12)
	end
			
	ChatFrame_RemoveAllMessageGroups(ChatFrame1)
	ChatFrame_AddMessageGroup(ChatFrame1, "SAY")
	ChatFrame_AddMessageGroup(ChatFrame1, "EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame1, "YELL")
	ChatFrame_AddMessageGroup(ChatFrame1, "GUILD")
	ChatFrame_AddMessageGroup(ChatFrame1, "OFFICER")
	ChatFrame_AddMessageGroup(ChatFrame1, "GUILD_ACHIEVEMENT")
	ChatFrame_AddMessageGroup(ChatFrame1, "WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_SAY")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_YELL")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_BOSS_EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_BOSS_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame1, "PARTY")
	ChatFrame_AddMessageGroup(ChatFrame1, "PARTY_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "RAID")
	ChatFrame_AddMessageGroup(ChatFrame1, "RAID_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "RAID_WARNING")
	ChatFrame_AddMessageGroup(ChatFrame1, "BATTLEGROUND")
	ChatFrame_AddMessageGroup(ChatFrame1, "BATTLEGROUND_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame1, "BG_HORDE")
	ChatFrame_AddMessageGroup(ChatFrame1, "BG_ALLIANCE")
	ChatFrame_AddMessageGroup(ChatFrame1, "BG_NEUTRAL")
	ChatFrame_AddMessageGroup(ChatFrame1, "SYSTEM")
	ChatFrame_AddMessageGroup(ChatFrame1, "ERRORS")
	ChatFrame_AddMessageGroup(ChatFrame1, "AFK")
	ChatFrame_AddMessageGroup(ChatFrame1, "DND")
	ChatFrame_AddMessageGroup(ChatFrame1, "IGNORED")
	ChatFrame_AddMessageGroup(ChatFrame1, "ACHIEVEMENT")
	ChatFrame_AddMessageGroup(ChatFrame1, "BN_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame1, "BN_CONVERSATION")
	ChatFrame_AddMessageGroup(ChatFrame1, "LOOT")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONEY")
				
	-- Setup the whisper chat frame
	ChatFrame_RemoveAllMessageGroups(ChatFrame3)
	ChatFrame_AddMessageGroup(ChatFrame3, "BN_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame3, "WHISPER")
			
	-- enable classcolor automatically on login and on each character without doing /configure each time.
	ToggleChatColorNamesByClassGroup(true, "SAY")
	ToggleChatColorNamesByClassGroup(true, "EMOTE")
	ToggleChatColorNamesByClassGroup(true, "YELL")
	ToggleChatColorNamesByClassGroup(true, "GUILD")
	ToggleChatColorNamesByClassGroup(true, "OFFICER")
	ToggleChatColorNamesByClassGroup(true, "GUILD_ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "WHISPER")
	ToggleChatColorNamesByClassGroup(true, "PARTY")
	ToggleChatColorNamesByClassGroup(true, "PARTY_LEADER")
	ToggleChatColorNamesByClassGroup(true, "RAID")
	ToggleChatColorNamesByClassGroup(true, "RAID_LEADER")
	ToggleChatColorNamesByClassGroup(true, "RAID_WARNING")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND_LEADER")	
	ToggleChatColorNamesByClassGroup(true, "CHANNEL1")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL2")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL3")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL4")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL5")
		   
	TukuiInstallv1060 = true
	TukuiData.SetCVar = true
			
	ReloadUI()
end

local function DisableTukui()
	DisableAddOn("Tukui"); 
	ReloadUI()
end

------------------------------------------------------------------------
--	Popups
------------------------------------------------------------------------

StaticPopupDialogs["DISABLE_UI"] = {
	text = tukuilocal.popup_disableui,
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = DisableTukui,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs["INSTALL_UI"] = {
	text = tukuilocal.popup_install,
	button1 = ACCEPT,
	button2 = CANCEL,
    OnAccept = install,
	OnCancel = function() TukuiInstallv1060 = true TukuiData.SetcVar = true end,
    timeout = 0,
    whileDead = 1,
}

StaticPopupDialogs["DISABLE_RAID"] = {
	text = tukuilocal.popup_2raidactive,
	button1 = "DPS - TANK",
	button2 = "HEAL",
	OnAccept = function() DisableAddOn("Tukui_Heal_Layout") EnableAddOn("Tukui_Dps_Layout") ReloadUI() end,
	OnCancel = function() EnableAddOn("Tukui_Heal_Layout") DisableAddOn("Tukui_Dps_Layout") ReloadUI() end,
	timeout = 0,
	whileDead = 1,
}

------------------------------------------------------------------------
--	On login function, look for some infos!
------------------------------------------------------------------------

local TukuiOnLogon = CreateFrame("Frame")
TukuiOnLogon:RegisterEvent("PLAYER_ENTERING_WORLD")
TukuiOnLogon:SetScript("OnEvent", function()
        TukuiOnLogon:UnregisterEvent("PLAYER_ENTERING_WORLD")
        TukuiOnLogon:SetScript("OnEvent", nil)
		
		--set tukui action bar
		if TukuiDB["actionbar"].enable == true then
			SetActionBarToggles( 1, 1, 1, 1, 0 )
			SetCVar("alwaysShowActionBars", 0)
			
			if TukuiDB["actionbar"].showgrid == true then
				ActionButton_HideGrid = function() end
				for i = 1, 12 do
					local button = _G[format("ActionButton%d", i)]
					button:SetAttribute("showgrid", 1)
					ActionButton_ShowGrid(button)

					button = _G[format("BonusActionButton%d", i)]
					button:SetAttribute("showgrid", 1)
					ActionButton_ShowGrid(button)
					
					button = _G[format("MultiBarRightButton%d", i)]
					button:SetAttribute("showgrid", 1)
					ActionButton_ShowGrid(button)

					button = _G[format("MultiBarBottomRightButton%d", i)]
					button:SetAttribute("showgrid", 1)
					ActionButton_ShowGrid(button)
					
					button = _G[format("MultiBarLeftButton%d", i)]
					button:SetAttribute("showgrid", 1)
					ActionButton_ShowGrid(button)
					
					button = _G[format("MultiBarBottomLeftButton%d", i)]
					button:SetAttribute("showgrid", 1)
					ActionButton_ShowGrid(button)
				end
			end
		end
	
		if TukuiDB.getscreenresolution == "800x600"
			or TukuiDB.getscreenresolution == "1024x768"
			or TukuiDB.getscreenresolution == "720x576"
			or TukuiDB.getscreenresolution == "1024x600" -- eeepc reso
			or TukuiDB.getscreenresolution == "1152x864" then
				SetCVar("useUiScale", 0)
				StaticPopup_Show("DISABLE_UI")
		else
			SetCVar("useUiScale", 1)
			if TukuiDB["general"].multisampleprotect == true then
				SetMultisampleFormat(1)
			end
			SetCVar("uiScale", TukuiDB["general"].uiscale)
			if not TukuiInstallv1060 == true then
				StaticPopup_Show("INSTALL_UI")
			end
		end
		
		if (IsAddOnLoaded("Tukui_Dps_Layout") and IsAddOnLoaded("Tukui_Heal_Layout")) then
			StaticPopup_Show("DISABLE_RAID")
		end
		
		SetCVar("showArenaEnemyFrames", 0)
		
		-- force lua error enable for PTR
		-- SetCVar("scriptErrors", 1)
		
		-- force chat CVar to be applied
		SetCVar("chatStyle", "classic")
		SetCVar("WholeChatWindowClickable", 0)
		SetCVar("ConversationMode", "inline")
				
		print(tukuilocal.core_welcome1..TukuiDB.version)
		print(tukuilocal.core_welcome2)
end)

------------------------------------------------------------------------
--	UI HELP
------------------------------------------------------------------------

-- Print Help Messages
local function UIHelp()
	print(" ")
	print(tukuilocal.core_uihelp1)
	print(tukuilocal.core_uihelp2)
	print(tukuilocal.core_uihelp3)
	print(tukuilocal.core_uihelp4)
	print(tukuilocal.core_uihelp5)
	print(tukuilocal.core_uihelp6)
	print(tukuilocal.core_uihelp7)
	print(tukuilocal.core_uihelp8)
	print(tukuilocal.core_uihelp9)
	print(tukuilocal.core_uihelp10)
	print(tukuilocal.core_uihelp11)
	print(tukuilocal.core_uihelp12)
	print(tukuilocal.core_uihelp13)
	print(tukuilocal.core_uihelp15)
	print(" ")
	print(tukuilocal.core_uihelp14)
end

SLASH_UIHELP1 = "/UIHelp"
SlashCmdList["UIHELP"] = UIHelp

SLASH_CONFIGURE1 = "/resetui"
SlashCmdList.CONFIGURE = function() StaticPopup_Show("INSTALL_UI") end