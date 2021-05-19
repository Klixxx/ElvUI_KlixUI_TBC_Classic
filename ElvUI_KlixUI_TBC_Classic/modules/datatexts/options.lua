local KUI, T, E, L, V, P, G = unpack(select(2, ...))
local KDT = KUI:GetModule("KuiDataTexts")
local DT = E:GetModule("DataTexts")
local LO = E:GetModule("Layout")

if E.db.KlixUI == nil then E.db.KlixUI = {} end

local function Datatexts()
	E.Options.args.KlixUI.args.modules.args.datatexts = {
		order = 11,
		type = "group",
		name = L["DataTexts"],
		childGroups = "tab",
		args = {
			name = {
				order = 1,
				type = "header",
				name = KUI:cOption(L["DataTexts"]),
			},
			
			intro = {
				order = 2,
				type = 'description',
				name = L["DT_DESC"],
			},
			
			space3 = {
				order = 3,
				type = "description",
				name = "",
			},
			
			general = {
				order = 4,
				type = "group",
				name = KUI:cOption(L["General"]),						
				guiInline = true,	
				args = {
					},
				},

			DataTexts = {
				order = 10,
				type = "group",
				name = KUI:cOption(L["Other DataTexts"]),						
				guiInline = true,				
				args = {

					KUITimeDT = {
								order = 1,
						type = "group",
						name = L["Time Datatext"],
						get = function(info) return E.db.KlixUI.timeDT[ info[#info] ] end,
						set = function(info, value) E.db.KlixUI.timeDT[ info[#info] ] = value; E:StaticPopup_Show("PRIVATE_RL") end,
						args = {
							size = {
								order = 1,
								type = "range",
								name = L["Clock Size"],
								desc = L["Change the size of the time datatext individually from other datatexts."],
								min = 0.1, max = 3, step = 0.1,
							},
							date = {
								order = 2,
								type = "toggle",
								name = L["Date Condensed"],
								desc = L["Display a condensed version of the current date."],
							},

							played = {
								order = 3,
								type = "toggle",
								name = L["Time Played"],
								desc = L["Display session, level and total time played in the time datatext tooltip."],
							},
						},
					},

				},
			},


			gotodatatexts = {
				order = 11,
				type = "execute",
				name = L["ElvUI DataTexts"],
				func = function() LibStub("AceConfigDialog-3.0-ElvUI"):SelectGroup("ElvUI", "datatexts") end,
			},
		},
	}
	
end
T.table_insert(KUI.Config, Datatexts)

local function injectElvUIDataTextsOptions()
	E.Options.args.datatexts.args.general.args.spacer1 = {
		order = 21,
		type = 'description',
		name = '',
	}

	E.Options.args.datatexts.args.general.args.spacer2 = {
		order = 22,
		type = 'header',
		name = '',
	}
	
	E.Options.args.datatexts.args.general.args.gotoklixui = {
		order = 23,
		type = "execute",
		name = KUI:cOption(L["KlixUI DataTexts"]),
		func = function() LibStub("AceConfigDialog-3.0-ElvUI"):SelectGroup("ElvUI", "KlixUI", "modules", "datatexts") end,
	}
end
T.table_insert(KUI.Config, injectElvUIDataTextsOptions)