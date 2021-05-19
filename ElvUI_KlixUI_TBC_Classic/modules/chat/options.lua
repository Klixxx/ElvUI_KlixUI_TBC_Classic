local KUI, T, E, L, V, P, G = unpack(select(2, ...))
local KC = KUI:GetModule("KuiChat")
local CH = E:GetModule("Chat")

if E.db.KlixUI == nil then E.db.KixUI = {} end

local function ChatTable()
	E.Options.args.KlixUI.args.modules.args.chat = {
		order = 7,
		type = 'group',
		name = L['Chat'],
		get = function(info) return E.db.KlixUI.chat[ info[#info] ] end,
		set = function(info, value) E.db.KlixUI.chat[ info[#info] ] = value; E:StaticPopup_Show("PRIVATE_RL"); end,		
		args = {
			name = {
				order = 1,
				type = "header",
				name = KUI:cOption(L['Chat']),
			},

			hidePlayerBrackets = {
				order = 2,
				type = "toggle",
				name = L["Hide Player Brackets"],
				desc = L["Removes brackets around the person who posts a chat message."],
			},

			hideChat = {
				order = 3,
				type = "toggle",
				name = L["Hide Community Chat"],
				desc = L["Adds an overlay to the Community Chat. Useful for streamers."],
			},

			emotes = {
				order = 4,
				type = "toggle",
				name = L["Emotes"],
			},

		-- Chat Separators
			separators = {
				order = 5,
				type = "group",
                                name = KUI:cOption(L["Chat Separators"]),				
				guiInline = true,
				args = {
					chatTabSeparator = {
						order = 1,
						type = "select",
						name = L["Chat Tab Separators"],
						desc = L["Add a thin black line below chat tabs to separate them from chat messages."],
						get = function(info) return E.db.KlixUI.chat.chatTabSeparator end,
						set = function(info, value) E.db.KlixUI.chat.chatTabSeparator = value; KUI:GetModule('KuiLayout'):ToggleChatSeparators(); end,
						values = {
							['HIDEBOTH'] = L['Hide Both'],
							['SHOWBOTH'] = L['Show Both'],
							['LEFTONLY'] = L['Left Only'],
							['RIGHTONLY'] = L['Right Only'],
						},
					},
				},
			},

        -- ChatFade - thx Merathilis
			chatFade = {
				order = 10,
				type = "group",
				name = KUI:cOption(L["Fade Chat"]),
				guiInline = true,
				get = function(info) return E.db.KlixUI.chat.chatFade[ info[#info] ] end,
				set = function(info, value) E.db.KlixUI.chat.chatFade[ info[#info] ] = value; KC:Configure_ChatFade(); end,
				args = {
					enable = {
						order = 1,
						type = "toggle",
						name = L["Enable"],
					},
					timeout = {
						order = 2,
						type = "range",
						min = 5, max = 60, step = 1,
						name = L["Auto hide timeout"],
						desc = L["Seconds before fading chat panel"],
						disabled = function() return not E.db.KlixUI.chat.chatFade.enable end
					},
					minAlpha = {
						order = 3,
						type = "range",
						min = 0, max = 1, step = 0.01,
						name = L["Min Alpha"],
						disabled = function() return not E.db.KlixUI.chat.chatFade.enable end
					},
				},
			},
			
		-- RightClickMenu	
			rightclickmenu = {
				order = 7,
				type = "group",
                                name = KUI:cOption(L["Right-Click Menu"]),				
				guiInline = true,
				get = function(info) return E.db.KlixUI.chat.rightclickmenu[ info[#info] ] end,
				set = function(info, value) E.db.KlixUI.chat.rightclickmenu[ info[#info] ] = value; E:StaticPopup_Show("PRIVATE_RL") end,
				args = {
					enable = {
						order = 1,
						type = "toggle",
						name = L["Enable"],
						desc = L["Enhances the chat character right-click menu with new features."],
					},
				},
			},
		},
	}
end

tinsert(KUI.Config, ChatTable)