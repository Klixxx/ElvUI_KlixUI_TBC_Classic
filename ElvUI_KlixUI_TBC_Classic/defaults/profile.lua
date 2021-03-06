local KUI, T, E, L, V, P, G = unpack(select(2, ...))

if P["KlixUI"] == nil then P["KlixUI"] = {} end

P['KlixUI'] = {
	-- General
    ["general"] = {
        ["loginMessage"] = true,
		["GameMenuScreen"] = true, -- Enable the Styles GameMenu
		["GameMenuButton"] = true, -- Enable the KlixUI GameMenu Button
		["AFK"] = true,
		["AFKChat"] = true,
		['splashScreen'] = true,
		["Movertransparancy"] = .75,
		["style"] = "ALL", -- Styling function
		["iconShadow"] = true, -- Icon Styling function
		["shadowOverlay"] = { -- Screen overlay
			["enable"] = true,
			["alpha"] = 60,
		},
		["minimap"] = {
			["hide"] = false,
		},
    },
	
	-- AddonPanel
	["addonpanel"] = {
		["Enable"] = true,
		["NumAddOns"] = 25,
		['FrameWidth'] = 550,
		['Font'] = "Expressway",
		['FontSize'] = 12,
		['FontFlag'] = "OUTLINE",
		['ButtonHeight'] = 15,
		['ButtonWidth'] = 15,
		['CheckColor'] = {249/255, 96/255, 217/255},
		['ClassColor'] = true,
		['CheckTexture'] = "Klix",
		['FontColor'] = 2,
		['FontCustomColor'] = {r = 1, g = 1, b = 1},
	},
	
	-- Armory
	["armory"] = {
		["enable"] = true,
		["azeritebtn"] = true,
		["naked"] = true,
		["classCrests"] = true,
		["backdrop"] = {
			["selectedBG"] = "NONE",
			["customAddress"] = "",
			["overlay"] = false,
			["alpha"] = .3,
		},
		["durability"] = {
			["enable"] = true,
			["onlydamaged"] = true,
			["font"] = "Expressway",
			["textSize"] = 11,
			["fontOutline"] = "OUTLINE",
		},
		["ilvl"] = {
			["enable"] = true,
			["font"] = "Expressway",
			["textSize"] = 12,
			["fontOutline"] = "OUTLINE",
			["colorStyle"] = "RARITY",
			["color"] = {r = 1, g = 1, b = 0},
		},
		["stats"] = {
			["IlvlFull"] = true,
			["IlvlColor"] = false,
			["AverageColor"] = {r = 0, g = 1, b = .59},
			["OnlyPrimary"] = true,
			["ItemLevel"] = {
				["font"] = "Expressway",
				["size"] = 20,
				["outline"] = "OUTLINE",
			},
			["statFonts"] = {
				["font"] = "Expressway",
				["size"] = 12,
				["outline"] = "OUTLINE",
			},
			["catFonts"] = {
				["font"] = "Expressway",
				["size"] = 12,
				["outline"] = "OUTLINE",
			},
			["List"] = {
				["HEALTH"] = false,
				["POWER"] = false,
				["ALTERNATEMANA"] = false,
				["ATTACK_DAMAGE"] = false,
				["ATTACK_AP"] = false,
				["ATTACK_ATTACKSPEED"] = false,
				["SPELLPOWER"] = false,
				["ENERGY_REGEN"] = false,
				["RUNE_REGEN"] = false,
				["FOCUS_REGEN"] = false,
				["MOVESPEED"] = false,
			},
		},
		["gradient"] = {
			["enable"] = true,
			["colorStyle"] = "VALUE",
			["color"] = {r = 1, g = 1, b = 0},
			["alpha"] = 0.5,
		},
		["indicators"] = {
			["enchant"] = {
				["enable"] = true,
				["glow"] = {
					["enable"] = false,
					["style"] = "AutoCast",
					["color"] = {r = 255/255, g = 0/255, b = 204/255, a = 1},
				},
			},
			["socket"] = {
				["enable"] = true,
				["glow"] = {
					["enable"] = false,
					["style"] = "AutoCast",
					["color"] = {r = 255/255, g = 0/255, b = 17/255, a = 1},
				},
			},
			["transmog"] = {
				["enable"] = true,
			},
			["illusion"] = {
				["enable"] = true,
			},
		},
		["statsPanel"] = {
			["enable"] = true,
			["height"] = 35,
			["position"] = "TOP",
			["customStats"] = "",
		},
	},
	
	-- Bags
	["bags"] = {
		["itemSelect"] = {
			["enable"] = true,
			["displayProgressFrame"] = true,
			["listHandledItems"] = false,
			["processInterval"] = 0.2,
			["processQuestItems"] = 0,
			["processBoEItems"] = 1,
			["thresholdBoE"] = 0,
			["processMissingMogBoE"] = false,
			["processCraftingReagents"] = true,
		},
	},
	
	-- Better Reputation Colors
	["betterreputationcolors"] = {
		[1] = {r = 0.63, g = 0, b = 0},
		[2] = {r = 0.63, g = 0, b = 0},
		[3] = {r = 0.63, g = 0, b = 0},
		[4] = {r = 0.82, g = 0.67, b = 0},
		[5] = {r = 0.32, g = 0.67, b = 0},
		[6] = {r = 0.32, g = 0.67, b = 0},
		[7] = {r = 0.32, g = 0.67, b = 0},
		[8] = {r = 0, g = 0.75, b = 0.44},
	},
	
	-- Blizzard
	["blizzard"] = {
		["rumouseover"] = false,
		["errorframe"] = {
			["height"] = 60,
			["width"] = 512,
		},
	},
	
	-- Chat
	["chat"] = {
	        ["hideChat"] = false,
		["hidePlayerBrackets"] = false,	
		["emotes"] = true,
	

        ["chatFade"] = {
	        ["enable"] = true,
	        	["minAlpha"] = 0.33,
	        	["timeout"] = 15,
	        },
	
		['chatTabSeparator'] = 'HIDEBOTH',
		["rightclickmenu"] = {
			["enable"] = true,
		},
	},
	
	-- Combat Text
	["combattext"] = {
        ["enable"] = true,
        ["xOffset"] = 0,
        ["yOffset"] = 0,
        ["xOffsetPersonal"] = 0,
        ["yOffsetPersonal"] = -100,
        ["font"] = "Expressway",
        ["fontFlag"] = "OUTLINE",
        ["fontShadow"] = false,
        ["damageColor"] = true,
        ["defaultColor"] = "ffff00",
        ["damageColorPersonal"] = false,
	["defaultColorPersonal"] = "ff0000",
        ["truncate"] = true,
        ["truncateLetter"] = true,
        ["commaSeperate"] = true,
        ["sizing"] = {
            ["crits"] = true,
            ["critsScale"] = 1.5,
            ["miss"] = false,
            ["missScale"] = 1.5,
            ["smallHits"] = true,
            ["smallHitsScale"] = 0.66,
			["smallHitsHide"] = false,
            ["autoattackcritsizing"] = true,
        },
        ["animations"] = {
            ["ability"] = "fountain",
			["crit"] = "verticalUp",
            ["miss"] = "verticalUp",
            ["autoattack"] = "fountain",
            ["autoattackcrit"] = "verticalUp",
        },
        ["animationsPersonal"] = {
            ["normal"] = "rainfall",
            ["crit"] = "verticalUp",
            ["miss"] = "verticalUp",
        },
        ["formatting"] = {
            ["size"] = 20,
            ["icon"] = "right",
            ["alpha"] = 1,
        },
        ["useOffTarget"] = true,
        ["offTargetFormatting"] = {
            ["size"] = 15,
            ["icon"] = "right",
            ["alpha"] = 0.5,
        },
    },
	
	-- Cooldowns
	["cooldowns"] = {
		["dimishing"] = {
			["enable"] = true,
			["text"] = {
				["enable"] = false,
				["font"] = "Expressway",
				["fontSize"] = 12,
				["fontOutline"] = "OUTLINE",
			},
		},
		["pulse"] = {
			["enable"] = false,
			["fadeInTime"] = 0.3,
			["fadeOutTime"] = 0.6,
			["maxAlpha"] = 0.8,
			["animScale"] = 1.5,
			["iconSize"] = 50,
			["holdTime"] = 0.3,
			["enablePet"] = false,
			["showSpellName"] = false,
			["x"] = UIParent:GetWidth()/2,
			["y"] = UIParent:GetHeight()/2,
		},
		["enemy"] = {
			["enable"] = true,
			["size"] = 30,
			["direction"] = "RIGHT",
			["show_always"] = false,
			["show_inpvp"] = false,
			["show_inarena"] = true,
		},

	},
	
	-- DataBars
	["databars"] = {
		["enable"] = true,
		["style"] = true,
		["experienceBar"] = {
			["capped"] = true,
			["progress"] = true,
			["xpColor"] = {r = 0, g = 0.4, b = 1, a = 0.8},
			["restColor"] = {r = 1, g = 0, b = 1, a = 0.2},
		},
		["reputationBar"] = {
			["capped"] = true,
			["progress"] = true,
			["color"] = "ascii",
			--["textFormat"] = "Paragon",
			["autotrack"] = true,
		},
		["questXP"] = {
			["enable"] = true,
			["IncludeIncomplete"] = false,
			["CurrentZoneOnly"] = false,
			["CurrentZoneOnly"] = true,
			["tooltip"] = true,
			["Color"] = {r = 217/255, g = 217/255, b = 0},
		},
	},

	-- DataTexts Continue
	["timeDT"] = {
		["size"] = 1.6,
		["date"] = true,
		["played"] = true,
	},

	["profDT"] = {
		["prof"] = "prof1",
		["hint"] = true,
	},
	["titlesDT"] = {
		["useName"] = true,
	},
	
	-- Enhanced Friends List
	["efl"] = {
		["enable"] = true,
		["NameFont"] = "Expressway",
		["NameFontSize"] = 12,
		["NameFontFlag"] = "OUTLINE",
		["InfoFont"] = "Expressway",
		["InfoFontSize"] = 11,
		["InfoFontFlag"] = "OUTLINE",
		["GameIconPack"] = "Launcher",
		["StatusIconPack"] = "D3",
	},
	
	-- GameMenu (chat)
	['gamemenu'] = { 
		['color'] = 2,
		['customColor'] = {r = .9, g = .7, b = 0},
	},
	
	-- LocationPanel
	["locPanel"] = {
		["enable"] = false,
		["style"] = true,
		["autowidth"] = false,
		["width"] = 300,
		["height"] = 21,
		["spacing"] = -1,
		["linkcoords"] = true,
		["template"] = "Transparent",
		["blizzText"] = true,
		["font"] = "Expressway",
		["fontSize"] = 11,
		["fontOutline"] = "OUTLINE",
		["throttle"] = 0.2,
		["format"] = "%.0f",
		["zoneText"] = true,
		["colorType"] = "REACTION",
		["colorType_Coords"] = "DEFAULT",
		["customColor"] = {r = 1, g = 1, b = 1 },
		["customColor_Coords"] = {r = 1, g = 1, b = 1 },
		["combathide"] = false,
		["hidecoords"] = false,
		["hidecoordsInInstance"] = true,
		["mouseover"] = false,
		["malpha"] = 1,
		["tooltip"] = {
			["enable"] = true,
			["combathide"] = true,
			["hint"] = true,
			["status"] = true,
		},
	},
	
	-- Maps
	["maps"] = {
		["minimap"] = {
			["rectangle"] = false,
			["glow"] = true,
			["glowAlways"] = false,
			["hideincombat"] = false,
			["fadeindelay"] = 5,
			["topbar"] = {
				["locationdigits"] = 1,
				["locationtext"] = "VERSION",
			},
			["mail"] = {
				["enhanced"] = true,
				["sound"] = true,
				["hide"] = false,
			},
			["buttons"] = {
				["enable"] = true,
				["barMouseOver"] = true,
				["backdrop"] = true,
				["hideInCombat"] = false,
				["iconSize"] = 24,
				["buttonsPerRow"] = 6,
				["buttonSpacing"] = 2,
				["visibility"] = "[petbattle] hide; show",
				["moveTracker"] = false,
				["moveQueue"] = false,
				["moveMail"] = false,
				["hideGarrison"] = false,
				["moveGarrison"] = false,
			},
			["ping"] = {
				["enable"] = true,
				["position"] = "TOP",
				["xOffset"] = 0,
				["yOffset"] = -20,
			},
			["coords"] = {
				["enable"] = false,
				["display"] = "SHOW",
				["position"] = "BOTTOM",
				["xOffset"] = 0,
				["yOffset"] = 20,
				["format"] = "%.0f",
				["font"] = "Expressway",
				["fontSize"] = 12,
				["fontOutline"] = "OUTLINE",
				["throttle"] = 0.2,
				["color"] = {r = 1,g = 1,b = 1},
			},
			["cardinalPoints"] = {
				["enable"] = true,
				["north"] = true,
				["east"] = true,
				["south"] = true,
				["west"] = true,
				["Font"] = "Expressway",
				["FontSize"] = 11,
				["FontOutline"] = "OUTLINE",
				["color"] = 2,
				["customColor"] = { r = 255/255, g = 227/255, b = 35/255 },
			},
		},
		["worldmap"] = {
			["scale"] = 1,
			["zoom"] = true,
			["reveal"] = {
				["enable"] = true,
				["overlay"] = true,
				["overlayColor"] = { r = 249/255, g = 96/255, b = 217/255, a = 1 },
			},
		},
	},
	
	-- Media
	["media"] = {
		["fonts"] = {
			["zone"] = {
				["font"] = "Expressway",
				["size"] = 32,
				["outline"] = "OUTLINE",
				["width"] = 512,
			},
			["subzone"] = {
				["font"] = "Expressway",
				["size"] = 25,
				["outline"] = "OUTLINE",
				["offset"] = 0,
				["width"] = 512,
			},
			["pvp"] = {
				["font"] = "Expressway",
				["size"] = 22,
				["outline"] = "OUTLINE",
				["width"] = 512,
			},
			["mail"] = {
				["font"] = "Expressway",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["editbox"] = {
				["font"] = "Expressway",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["gossip"] = {
				["font"] = "Expressway",
				["size"] = 12,
				["outline"] = "NONE",
			},
			["objective"] = {
				["font"] = "Expressway",
				["size"] = 12,
				["outline"] = "OUTLINE",
			},
			["objectiveHeader"] = {
				["font"] = "Expressway",
				["size"] = 16,
				["outline"] = "OUTLINE",
			},
			["questFontSuperHuge"] = {
				["font"] = "Expressway",
				["size"] = 24,
				["outline"] = "OUTLINE",
			},
		},
	},
	
	-- MicroBar
	["microBar"] = {
		["enable"] = true,
		['scale'] = 1.0,
		["hideInCombat"] = false,
		["highlight"] = {
			["enable"] = true,
			["buttons"] = false,
		},
		["text"] = {
			["buttons"] = {
				["position"] = "BOTTOM",
			},
			["friends"] = {
				["enable"] = true,
				["textSize"] = 12,
				["xOffset"] = 0,
				["yOffset"] = 5,
			},
			["guild"] = {
				["enable"] = true,
				["textSize"] = 12,
				["xOffset"] = 0,
				["yOffset"] = 5,
			},
			['colors'] = {
				['customColor'] = 1,
				['userColor'] = { r = 1, g = 1, b = 1 },
			},
		},
	},
	
	-- Miscellaneous
	["misc"] = {
		["combatState"] = false,
		["skillGains"] = false,
		["gmotd"] = true,
		["buyall"] = true,
		["cursorFlash"] = {
			["enable"] = false,
			["alpha"] = 0.50,
			["color"] = { r = KUI.r, g = KUI.g, b = KUI.b },
			["visibility"] = "ALWAYS",
		},
		["alreadyknown"] = {
			["enable"] = true,
			["color"] = { r = 0, g = 1, b = 0 },
		},
		["merchant"] = {
			["itemlevel"] = true,
			["equipslot"] = true,
		},
		["auto"] = {
			["auction"] = true,
			["gossip"] = true,
			["invite"] = {
                ["enable"] = true,
                ["ainvkeyword"] = "321",
                ["inviteRank"] = {},
            },
		},
		["panels"] = {
			["top"] = {
				["show"] = false,
				["style"] = true,
				["transparency"] = true,
				["height"] = 12
			},
			["bottom"] = {
				["show"] = false,
				["style"] = true,
				["transparency"] = true,
				["height"] = 12
			},
		},
		["zoom"] = {
			["increment"] = 5,
			["speed"] = 50,
			["distance"] = 60,
			["maxZoom"] = true,
		},
		["popupsEnable"] = true, -- Needs to be seperate, else the config fuck up!
		["popups"] = {
			["ABANDON_QUEST"] = true,
			["ABANDON_QUEST_WITH_ITEMS"] = true,
			["ACTIVATE_FOLLOWER"] = true,
			["AUTOEQUIP_BIND"] = true,
			["BID_BLACKMARKET"] = false,
			["BUYEMALL_CONFIRM"] = false,
			["CONFIM_BEFORE_USE"] = false,
			["CONFIRM_ACCEPT_SOCKETS"] = true,
			["CONFIRM_BINDER"] = false,
			["CONFIRM_BUY_BANK_SLOT"] = true,
			["CONFIRM_BUY_REAGENTBANK_TAB"] = true,
			["CONFIRM_DELETE_EQUIPMENT_SET"] = true,
			["CONFIRM_DELETE_SELECTED_MACRO"] = true,
			["CONFIRM_DELETE_TRANSMOG_OUTFIT"] = true,
			["CONFIRM_FOLLOWER_TEMPORARY_ABILITY"] = true,
			["CONFIRM_FOLLOWER_UPGRADE"] = true,
			["CONFIRM_HIGH_COST_ITEM"] = false, 
			["CONFIRM_LEARN_SPEC"] = true,
			["CONFIRM_LEAVE_INSTANCE_PARTY"] = true,
			["CONFIRM_MAIL_ITEM_UNREFUNDABLE"] = false,
			["CONFIRM_MERCHANT_TRADE_TIMER_REMOVAL"] = true,
			["CONFIRM_PLAYER_CHOICE"] = true,
			["CONFIRM_PURCHASE_NONREFUNDABLE_ITEM"] = false,
			["CONFIRM_PURCHASE_TOKEN_ITEM"] = true,
			["CONFIRM_RECRUIT_FOLLOWER"] = true,
			["CONFIRM_REFUND_TOKEN_ITEM"] = true,
			["CONFIRM_RELIC_REPLACE"] = false,
			["CONFIRM_REMOVE_FRIEND"] = true,
			["CONFIRM_RESET_INSTANCES"] = true,
			["CONFIRM_RESET_TO_DEFAULT_KEYBINDINGS"] = true,
			["CONFIRM_SAVE_EQUIPMENT_SET"] = true,
			["CONFIRM_SUMMON"] = false,
			["CONFIRM_UPGRADE_ITEM"] = true,
			["DANGEROUS_MISSIONS"] = true,
			["DEACTIVATE_FOLLOWER"] = true,
			["DEATH"] = false,
			["DELETE_GOOD_ITEM"] = false,
			["DELETE_ITEM"] = false,
			["DELETE_QUEST_ITEM"] = false,
			["EQUIP_BIND"] = true,
			["EQUIP_BIND_TRADEABLE"] = false,
			["GOSSIP_CONFIRM"] = true,
			["GROUP_ABANDON_CONFIRMATION"] = true,
			["GROUP_INVITE"] = true,
			["GROUP_INVITE_CONFIRMATION"] = true,
			["LFG_OFFER_CONTINUE"] = true,
			["LOOT_BIND"] = true,
			["LOOT_BIND_CONFIRM"] = true,
			["NOT_ENOUGH_POWER_ARTIFACT_RESPEC"] = true,
			["MOGIT_PREVIEW_CLOSE"] = true,
			["ORDER_HALL_TALENT_RESEARCH"] = false,
			["OUTFITTER_CONFIRM_SET_CURRENT"] = true,
			["PARTY_INVITE"] = false,
			["PETBM_DELETE_TEAM"] = true,
			["PREMADEFILTER_CONFIRM_CLOSE"] = true,
			["RECOVER_CORPSE"] = false,
			["RESURRECT_NO_TIMER"] = false,
			["SEND_MONEY"] = false,
			["TALENTS_INVOLUNTARILY_RESET"] = true,
			["TRADE_POTENTIAL_REMOVE_TRANSMOG"] = true,
			["TRANSMOG_APPLY_WARNING"] = false,
			["VOID_DEPOSIT_CONFIRM"] = false,
			["VOID_STORAGE_DEPOSIT_CONFIRMATION"] = false,
			["LFG_LIST_ENTRY_EXPIRED_TOO_MANY_PLAYERS"] = false,
			["CALENDAR_ERROR"] = false,
			["CONFIRM_REPORT_SPAM_CHAT"] = false,
			["BATTLE_PET_PUT_IN_CAGE"] = false,
			["WORLD_QUEST_ENTERED_PROMT"] = false,
			["EXPERIMENTAL_CVAR_WARNING"] = false,
			["CONFIRM_RELIC_TALENT"] = false,
			["CONFIRM_SUMMON"] = false,
			["BUYOUT_AUCTION"] = false,
			["CONFIRM_PROFESSION"] = true,
			["CLIENT_RESTART_ALERT"] = true,
			["CONFIRM_AZERITE_EMPOWERED_SELECT_POWER"] = true,
			["PETRENAMECONFIRM"] = true,
		},
	},
	
	-- Notification
	["notification"] = {
		["enable"] = true,
		["width"] = 300,
		["height"] = 50,
		["fontSize"] = 9,
		["raid"] = false,
		["noSound"] = false,
		["message"] = false,
		["mail"] = true,
		["vignette"] = true,
		["invites"] = true,
		["guildEvents"] = true,
		["quickJoin"] = true,
	},
	
	-- Professions
	["professions"] = {
		["tabs"] = true
	},
	
	-- PvP
	["pvp"] = {
		["killStreaks"] = true,
		["autorelease"] = true,
		["rebirth"] = true,
		["duels"] = {
			["regular"] = false,
			["pet"] = false,
			["announce"] = false,
		},
	},
	
	-- Quest
	["quest"] = {
		["objectiveProgress"] = true,
		["auto"] = {
			["enable"] = true,
			["diskey"] = 2,
			["accept"] = true,
			["complete"] = true,
			["dailiesonly"] = false,
			["pvp"] = true,
			["escort"] = true,
			["inraid"] = true,
			["greeting"] = true,
			["reward"] = false,
		},
	},
	
	-- Raid Marker Bar
	["raidmarkers"] = {
		["enable"] = true,
		["visibility"] = "INPARTY",
		["customVisibility"] = "[noexists, nogroup] hide; show",
		["backdrop"] = true,
		["buttonSize"] = 20,
		["spacing"] = 2,
		["orientation"] = "HORIZONTAL",
		["modifier"] = "shift-",
		["reverse"] = false,
		["raidicons"] = "Anime",
		["mouseover"] = false,
		["notooltip"] = false,
		["quickmark"] = {
			["enable"] = true,
			["markingButton1"] = 'alt',
			["markingButton2"] = 'LeftButton',
		},
	},
	
	-- Reminders
	["reminder"] = {
		["solo"] = {
			["enable"] = true,
			["size"] = 31,
			["strata"] = "LOW",
			["glow"] = true,
		},
		["raid"] = {
			["enable"] = false,
			["visibility"] = "INPARTY",
			["class"] = false,
			["alpha"] = 0.3,
			["size"] = 25,
			["backdrop"] = true,
			["glow"] = true,
			["customVisibility"] = "[noexists, nogroup] hide; show",
		},
	},
	
	-- ToolTip
	["tooltip"] = {
		["tooltip"] = true,
		["titleColor"] = false,
		["memberInfo"] = true,
		["achievement"] = true,
		["keystone"] = true,
		["azerite"] = {
			["enable"] = true,
			["RemoveBlizzard"] = true,
			["OnlySpec"] = false,
			["Compact"] = false,
		},
		["progressInfo"] = {
			["enable"] = true,
			["display"] = "SHIFT",
			["NameStyle"] = "SHORT",
			["DifStyle"] = "SHORT",
			["raids"] = {
				["uldir"] = true,
				["dazaralor"] = true,
				["crucible"] = true,
				["eternalpalace"] = true,
				["nyalotha"] = true,
			},
		},
	},
	
	-- NameHover
	["nameHover"] = {
		["enable"] = true,
		["guild"] = true,
		["guildRank"] = false,
		["race"] = false,
		["realm"] = true,
		["realmAlways"] = false,
		["titles"] = true,
		["font"] = "Expressway",
		["fontSize"] = 7,
		["fontOutline"] = "OUTLINE",
	},
	
	-- UnitFrames
	["unitframes"] = {
		["style"] = true,
		["powerBar"] = true,
		["healerMana"] = false,
		["AuraIconSpacing"] = {
			["spacing"] = 1,
			["units"] = {
				["player"] = true,
				["target"] = true,
				["targettarget"] = true,
				["targettargettarget"] = true,
				["focus"] = true,
				["focustarget"] = true,
				["pet"] = true,
				["pettarget"] = true,
				["arena"] = true,
				["boss"] = true,
				["party"] = true,
				["raid"] = true,
				["raid40"] = true,
				["raidpet"] = true,
				["tank"] = true,
				["assist"] = true,
			},
		},
		['textures'] = {
			['health'] = E.db.unitframe.statusbar,
			['ignoreTransparency'] = false,
			['power'] = E.db.unitframe.statusbar,
		},
		["eliteicon"] = {
			["enable"] = true,
			["size"] = 18,
			["point"] = "CENTER",
			["relativePoint"] = "TOPRIGHT",
			["xOffset"] = -1,
			["yOffset"] = 0,
			["strata"] = '3-MEDIUM',
			["level"] = 12,
		},
		["attackicon"] = {
			["enable"] = true,
			["size"] = 18,
			["point"] = "CENTER",
			["relativePoint"] = "TOPLEFT",
			["xOffset"] = 1,
			["yOffset"] = 0,
			["strata"] = '3-MEDIUM',
			["level"] = 12,
		},
		['icons'] = {
			['role'] = "SupervillainUI",
			['rdy'] = "BenikUI",
			['klixri'] = true,
		},
	},
}
-- Datatexts
P.datatexts.panels.KuiLeftChatDTPanel = {
	[1] = 'Spec Switch (KUI)',
	[2] = 'Item Level (KUI)',
	[3] = 'BfA Missions (KUI)',
}

P.datatexts.panels.KuiRightChatDTPanel = {
	[1] = 'System (KUI)',
	[2] = 'Bags',
	[3] = 'Gold',
}