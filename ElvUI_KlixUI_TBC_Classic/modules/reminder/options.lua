local KUI, T, E, L, V, P, G = unpack(select(2, ...))
--local KRR = KUI:GetModule("KuiRaidReminder")
local KSR = KUI:GetModule("KuiSoloReminder")

local DEFAULT, CUSTOM, AGGRO_WARNING_IN_PARTY = DEFAULT, CUSTOM, AGGRO_WARNING_IN_PARTY

local function Reminder()
	E.Options.args.KlixUI.args.modules.args.reminder = {
		type = "group",
		name = L["Reminders"],
		order = 28,
		args = {
			name = {
				order = 1,
				type = "header",
				name = KUI:cOption(L["Reminders"]),
			},
			
			solo = {
				order = 2,
				type = "group",
				name = KUI:cOption(L["Solo"]),
				guiInline = true,
				get = function(info) return E.db.KlixUI.reminder.solo[ info[#info] ] end,
				set = function(info, value) E.db.KlixUI.reminder.solo[ info[#info] ] = value; E:StaticPopup_Show("PRIVATE_RL"); end,
				args = {
					enable = {
						order = 1,
						type = 'toggle',
						name = L["Enable"],
						desc = L["Reminds you on self Buffs."],
					},
					space1 = {
						order = 2,
						type = 'description',
						name = "",
					},
					space2 = {
						order = 3,
						type = 'description',
						name = "",
					},
					size = {
						order = 4,
						type = "range",
						name = L["Size"],
						min = 10, max = 60, step = 1,
						disabled = function() return not E.db.KlixUI.reminder.solo.enable end,
					},
					strata = {
						order = 5,
						type = "select",
						name = L["Frame Strata"],
						values = {
							["BACKGROUND"] = "BACKGROUND",
							["LOW"] = "LOW",
							["MEDIUM"] = "MEDIUM",
							["HIGH"] = "HIGH",
							["DIALOG"] = "DIALOG",
							["TOOLTIP"] = "TOOLTIP",
						},
						disabled = function() return not E.db.KlixUI.reminder.solo.enable end,
					},
					glow = {
						order = 6,
						type = "toggle",
						name = L["Glow"],
						desc = L["Shows the pixel glow on missing buffs."],
						disabled = function() return not E.db.KlixUI.reminder.solo.enable end,
					},
				},
			},
		},
	}
end
T.table_insert(KUI.Config, Reminder)