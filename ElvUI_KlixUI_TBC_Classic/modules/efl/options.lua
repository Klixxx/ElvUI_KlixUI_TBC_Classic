local KUI, T, E, L, V, P, G = unpack(select(2, ...))
local EFL = KUI:GetModule("EnhancedFriendsList")

local function EnhancedFriendsListTable()
	E.Options.args.KlixUI.args.modules.args.efl = {
		type = "group",
		name = L["Enhanced Friends List"],
		order = 12,
		disabled = function() return T.IsAddOnLoaded("ProjectAzilroka") end,
		hidden = function() return T.IsAddOnLoaded("ProjectAzilroka") end,
		get = function(info) return E.db.KlixUI.efl[ info[#info] ] end,
		set = function(info, value) E.db.KlixUI.efl[ info[#info] ] = value; end,
		args = {
			header1 = {
				type = "header",
				name = KUI:cOption(L["Enhanced Friends List"]),
				order = 1
			},
			general = {
				order = 2,
				type = "group",
				name = KUI:cOption(L["General"]),
				guiInline = true,	
				guiInline = true,
				get = function(info) return E.db.KlixUI.efl[info[#info]] end,
				set = function(info, value) E.db.KlixUI.efl[info[#info]] = value; T.FriendsFrame_UpdateFriends() end, -- causes an error if the FriendsFrame isnt open
				args = {
					enable = {
						order = 1,
						type = "toggle",
						name = L["Enable"],
						get = function(info) return E.db.KlixUI.efl.enable end,
						set = function(info, value) E.db.KlixUI.efl.enable = value; E:StaticPopup_Show("PRIVATE_RL"); end,
					},
					NameFont = {
						type = "select", dialogControl = 'LSM30_Font',
						order = 2,
						name = L["Name Font"],
						values = AceGUIWidgetLSMlists.font,
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					NameFontSize = {
						order = 3,
						name = FONT_SIZE,
						type = "range",
						min = 6, max = 22, step = 1,
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					NameFontFlag = {
						name = L["Font Outline"],
						order = 4,
						type = "select",
						values = {
							['NONE'] = 'None',
							['OUTLINE'] = 'OUTLINE',
							['MONOCHROME'] = 'MONOCHROME',
							['MONOCHROMEOUTLINE'] = 'MONOCROMEOUTLINE',
							['THICKOUTLINE'] = 'THICKOUTLINE',
						},
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					InfoFont = {
						type = "select", dialogControl = 'LSM30_Font',
						order = 5,
						name = L["Info Font"],
						values = AceGUIWidgetLSMlists.font,
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					InfoFontSize = {
						order = 6,
						name = FONT_SIZE,
						type = "range",
						min = 6, max = 22, step = 1,
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					InfoFontFlag = {
						order = 7,
						name = L["Font Outline"],
						type = "select",
						values = {
							['NONE'] = 'None',
							['OUTLINE'] = 'OUTLINE',
							['MONOCHROME'] = 'MONOCHROME',
							['MONOCHROMEOUTLINE'] = 'MONOCROMEOUTLINE',
							['THICKOUTLINE'] = 'THICKOUTLINE',
						},
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					GameIconPack = {
						name = L["Game Icon Pack"],
						order = 8,
						type = "select",
						values = {
							['Default'] = L["Default"],
							['BlizzardChat'] = L["Blizzard Chat"],
							['Flat'] = L["Flat Style"],
							['Gloss'] = L["Glossy"],
							['Launcher'] = L["Launcher"],
						},
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
					StatusIconPack = {
						name = L["Status Icon Pack"],
						order = 9,
						type = "select",
						values = {
							['Default'] = L["Default"],
							['Square'] = L["Square"],
							['D3'] = L["Diablo 3"],
						},
						hidden = function() return not E.db.KlixUI.efl.enable end,
					},
				},
			},
			
			GameIcons = {
				order = 3,
				type = "group",
				name = KUI:cOption(L["Game Icon Preview"]),				
				guiInline = true,
				get = function(info) return E.db.KlixUI.efl[info[#info]] end,
				set = function(info, value) E.db.KlixUI.efl[info[#info]] = value; T.FriendsFrame_UpdateFriends() end,
				args = {
					Alliance = {
						order = 1,
						type = "execute",
						name = FACTION_ALLIANCE,
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					Horde = {
						order = 2,
						type = "execute",
						name = FACTION_HORDE,
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					Neutral = {
						order = 3,
						type = "execute",
						name = FACTION_STANDING_LABEL4, --Neutral
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					D3 = {
						order = 4,
						type = "execute",
						name = L["Diablo 3"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					WTCG = {
						order = 5,
						type = "execute",
						name = L["Hearthstone"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					S1 = {
						order = 6,
						type = "execute",
						name = L["Starcraft"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					S2 = {
						order = 6,
						type = "execute",
						name = L["Starcraft 2"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					App = {
						order = 7,
						type = "execute",
						name = L["App"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					BSAp = {
						order = 8,
						type = "execute",
						name = L["Mobile"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					Hero = {
						order = 9,
						type = "execute",
						name = L["Hero of the Storm"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					Pro = {
						order = 10,
						type = "execute",
						name = L["Overwatch"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					DST2 = {
						order = 11,
						type = "execute",
						name = L["Destiny 2"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
					VIPR = {
						order = 11,
						type = "execute",
						name = L["Call of Duty 4"],
						func = function() return end,
						image = function(info) return EFL.GameIcons[E.db.KlixUI.efl["GameIconPack"]][info[#info]], 32, 32 end,
					},
				},
			},
			
			StatusIcons = {
				order = 4,
				type = "group",
				name = KUI:cOption(L["Status Icon Preview"]),				
				guiInline = true,
				get = function(info) return E.db.KlixUI.efl[info[#info]] end,
				set = function(info, value) E.db.KlixUI.efl[info[#info]] = value; T.FriendsFrame_UpdateFriends() end,
				args = {
					Online = {
						order = 1,
						type = "execute",
						name = FRIENDS_LIST_ONLINE,
						func = function() return end,
						image = function(info) return EFL.StatusIcons[E.db.KlixUI.efl["StatusIconPack"]][info[#info]], 16, 16 end,
					},
					Offline = {
						order = 2,
						type = "execute",
						name = FRIENDS_LIST_OFFLINE,
						func = function() return end,
						image = function(info) return EFL.StatusIcons[E.db.KlixUI.efl["StatusIconPack"]][info[#info]], 16, 16 end,
					},
					DND = {
						order = 3,
						type = "execute",
						name = DEFAULT_DND_MESSAGE,
						func = function() return end,
						image = function(info) return EFL.StatusIcons[E.db.KlixUI.efl["StatusIconPack"]][info[#info]], 16, 16 end,
					},
					AFK = {
						order = 4,
						type = "execute",
						name = DEFAULT_AFK_MESSAGE,
						func = function() return end,
						image = function(info) return EFL.StatusIcons[E.db.KlixUI.efl["StatusIconPack"]][info[#info]], 16, 16 end,
					},
				},
			},
		},
	}
end
T.table_insert(KUI.Config, EnhancedFriendsListTable)