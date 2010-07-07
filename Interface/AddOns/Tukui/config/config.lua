----------------------------------------------------------------------------
-- General Config
----------------------------------------------------------------------------
TukuiDB["general"] = {
	["autoscale"] = false, -- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.71, -- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["overridelowtohigh"] = true, -- EXPERIMENTAL ONLY! override lower version to higher version on a lower reso.
	["multisampleprotect"] = false, -- i don't recommend this because of shitty border but, voila!
}

TukuiDB["unitframes"] = {
	-- general options
	["enable"] = true, -- -- can i really need to explain this?
	["unitcastbar"] = false, -- enable tukui castbar
	["cblatency"] = false, -- enable castbar latency
	["cbicons"] = true, -- enable icons on castbar
	["auratimer"] = true, -- enable timers on buffs/debuffs
	["auraspiral"] = true, -- enable spiral timer on auras.
	["auratextscale"] = 11, -- the font size of buffs/debuffs timers
	["playerauras"] = false, -- enable auras on player unit frame
	["targetauras"] = true, -- enable auras on target unit frame
	["highThreshold"] = 80, -- hunter high threshold
	["lowThreshold"] = 20, -- global low threshold, for low mana warning.
	["targetpowerpvponly"] = false, -- enable power text on pvp target only
	["totdebuffs"] = false, -- enable tot debuffs (high reso only)
	["focusdebuffs"] = false, -- enable focus debuffs 
	["playerdebuffsonly"] = true, -- enable our debuff only on our current target
	["showfocustarget"] = false, -- show focus target
	["showsmooth"] = true, -- enable smooth bar
	["showthreat"] = false, -- enable the threat bar anchored to info left panel.
	["charportrait"] = true, -- can i really need to explain this?
	["t_mt"] = false, -- enable maintank and mainassist
	["t_mt_power"] = false, -- enable power bar on maintank and mainassist because it's not show by default.
	["combatfeedback"] = true, -- enable combattext on player and target.
	["classcolor"] = true, -- if set to false, use foof color theme. 
	["playeraggro"] = false, -- glow border of player frame change color according to your current aggro.
	["positionbychar"] = true, -- save X, Y position with /uf (movable frame) per character instead of per account.

	-- raid layout
	["showrange"] = true, -- show range opacity on raidframes
	["raidalphaoor"] = 0.4, -- alpha of unitframes when unit is out of range
	["gridposX"] = 18, -- horizontal position starting from left
	["gridposY"] = 0, -- vertical position starting from top
	["gridposZ"] = "TOPLEFT", -- if we want to change the starting position zone
	["gridonly"] = true, -- enable grid only mode for all healer mode raid layout.
	["showgridinparty"] = true, -- will show the grid frames while you are in a party.
	["showgridwhilesolo"] = false, -- will show the grid frames while you are solo.
	["showgridinraid"] = true, -- will show the grid frames while you are in a raid.
	["showsymbols"] = true,	-- show symbol.
	["aggro"] = true, -- show aggro on all raids layouts
	["raidunitdebuffwatch"] = true, -- track important spell to watch in pve for healing mode.
	["gridhealthvertical"] = true, -- enable vertical grow on health bar
	["showplayerinparty"] = true, -- show my player frame in party
	["partyframesinparty"] = false, -- turn off party frames while in a party, useful when you show grid frames in party
	["gridscale"] = .8, -- set the healing grid scaling
	["gridmaxgroup"] = 8, -- max # of group you want to show on grid layout, between 1 and 8

	-- priest only plugin
	["ws_show_time"] = false, -- show time on weakened soul bar
	["ws_show_player"] = true, -- show weakened soul bar on player unit
	["ws_show_target"] = true, -- show weakened soul bar on target unit
	
	-- death knight only plugin
	["runebar"] = true, -- enable tukui runebar plugin
	
	-- shaman only plugin
	["totembar"] = true, -- enable tukui totem bar plugin
	
	-- general uf extra, mostly experimental
	["fadeufooc"] = false, -- fade unitframe when out of combat
	["fadeufoocalpha"] = 0, -- alpha you want out of combat between 0 and 1.
}

TukuiDB["arena"] = {
	["unitframes"] = true, -- enable tukz arena unitframes (requirement : tukui unitframes enabled)
	["spelltracker"] = true, -- enable tukz enemy spell tracker (an afflicted3 or interruptbar alternative)
}

TukuiDB["actionbar"] = {
	["scale"] = .82, -- sets the scale of the unit frames
	["enable"] = true, -- enable tukz action bars
	["hotkey"] = false, -- enable hotkey display because it was a lot requested
	["rightbarmouseover"] = false, -- enable right bars on mouse over
	["shapeshiftmouseover"] = false, -- enable shapeshift or totembar on mouseover
	["hideshapeshift"] = false, -- hide shapeshift or totembar because it was a lot requested.
	["bottomrows"] = 2, -- numbers of row you want to show at the bottom (select between 1 and 2 only)
	["rightbars"] = 0, -- numbers of right bar you want
	["rightbarbuttons"] = 10, --number of buttons you want on each right bar (1-12)
	["actionbarbuttons"] = 15, --number of buttons you want per bottom row (12-24)
	["actionbarbuttonsize"] = 33, -- size of the buttons on the bottom action bars.
	["petbarbuttonsize"] = 24, -- size of the buttons on the pet bar. Also determines the size of the shape shift / totem / stance / presence bar.
	["shapeshiftbuttonsize"] = 22, --size of the shape shift / totem / stance / presence bar.
	["petbarX"] = -35, -- horizontal position starting from left
	["petbarY"] = 175, -- vertical position starting from top
	["petbarZ"] = "BOTTOMRIGHT", -- if we want to change the starting position zone
	["verticlepetbar"] = false, --do you want a verticle or horizontal pet bar?
	["showgrid"] = true, -- show grid on empty button
}

TukuiDB["nameplate"] = {
	["enable"] = true, --use the nameplates?
	["healthheight"] = 9, -- set the height of the health bar
	["healthwidth"] = 100, -- set the width of the health bar
	["castheight"] = 5, -- set the height of the enemy cast bar
	["fontsize"] = 12, -- set the font size use on the name plate
}

TukuiDB["bags"] = {
	["enable"] = true, -- enable an all in one bag mod that fit tukui perfectly
}

TukuiDB["map"] = {
	["enable"] = true, -- reskin the map to fit tukui
}

TukuiDB["loot"] = {
	["lootframe"] = true, -- reskin the loot frame to fit tukui
	["rolllootframe"] = true, -- reskin the roll frame to fit tukui
	["autogreed"] = true, -- auto-dez or auto-greed item at max level.
}

TukuiDB["cooldown"] = {
	["enable"] = true, -- can i really need to explain this?
	["treshold"] = 8, -- show decimal under X seconds and text turn red
}

TukuiDB["datatext"] = {
	["fps_ms"] = 4, -- show fps and ms on panels
	["mem"] = 5, -- show total memory on panels
	["bags"] = 0, -- show space used in bags on panels
	["gold"] = 6, -- show your current gold on panels
	["wowtime"] = 8, -- show time on panels
	["guild"] = 1, -- show number on guildmate connected on panels
	["dur"] = 2, -- show your equipment durability on panels.
	["friends"] = 3, -- show number of friends connected.
	["dps_text"] = 0, -- show a dps meter on panels
	["hps_text"] = 0, -- show a heal meter on panels
	["power"] = 7, -- show your attackpower/spellpower/healpower/rangedattackpower whatever stat is higher gets displayed
	["arp"] = 0, -- show your armor penetration rating on panels.
	["haste"] = 0, -- show your haste rating on panels.
	["crit"] = 0, -- show your crit rating on panels.
	["avd"] = 0, -- show your current avoidance against the level of the mob your targeting
	["armor"] = 0, -- show your armor value against the level mob you are currently targeting

	["battleground"] = true, -- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	["time24"] = false, -- set time to 24h format.
	["localtime"] = true, -- set time to local time instead of server time.
	["font"] = [[fonts\ARIALN.ttf]], -- font used for panels.
	["fontsize"] = 12, -- font size for panels.
}

TukuiDB["chat"] = {
	["enable"] = true, -- blah
	["font"] = [[fonts\ARIALN.ttf]], -- font for chat
}

TukuiDB["panels"] = { 
	["tinfowidth"] = 400, -- the width of left and right stat panels.
}

TukuiDB["tooltip"] = {
	["enable"] = true, -- true to enable this mod, false to disable
	["cursor"] = false, -- enable units tooltip on cursor
	["hidecombat"] = false, -- hide bottom-right tooltip when in combat
	["hidebuttons"] = false, -- always hide action bar buttons tooltip.
	["hideuf"] = false, -- hide tooltip on unitframes
	["tooltipX"] = 0, -- X coord for the tooltip location
	["tooltipY"] = 170, -- Y coord for the tooltip location
	["AttachBagFrame"] = true, --true will put the tooltip at the top of the bag frame when bags are open. False will leave the tooltip in its location when the bags are opened
}

TukuiDB["combatfont"] = {
	["enable"] = true, -- true to enable this mod, false to disable
}

TukuiDB["merchant"] = {
	["enable"] = true, -- true to enable this mod, false to disable
	["sellgrays"] = true, -- automaticly sell grays?
	["autorepair"] = false, -- automaticly repair?
}

TukuiDB["error"] = {
	["enable"] = false, -- true to enable this mod, false to disable
	filter = { -- what messages to not hide
		["Inventory is full."] = true, -- inventory is full will not be hidden by default
	},
}

TukuiDB["invite"] = { 
	["autoaccept"] = false, -- auto-accept invite from guildmate and friends.
}

TukuiDB["watchframe"] = { 
	["movable"] = true, -- disable this if you run "Who Framed Watcher Wabbit" from seerah.
}

TukuiDB["buffreminder"] = {
	["enable"] = true, -- this is now the new innerfire warning script for all armor/aspect class.
	["sound"] = true, -- enable warning sound notification for reminder.
}

----------------------------------------------------------------------------
-- Per Class Config (overwrite general)
-- Class need to be UPPERCASE
----------------------------------------------------------------------------

if TukuiDB.myclass == "PRIEST" then
	-- do some config!
end

----------------------------------------------------------------------------
-- Per Character Name Config (overwrite general and class)
-- Name need to be case sensitive
----------------------------------------------------------------------------

if TukuiDB.myname == "Tukz" then
	TukuiDB["buffreminder"].enable = true
end