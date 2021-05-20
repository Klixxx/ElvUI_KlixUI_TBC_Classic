local KUI, T, E, L, V, P, G = unpack(select(2, ...))
local KC = KUI:NewModule("KuiEmotes")
local CH = E:GetModule("Chat")

local ChatEmote = {}
KC.ChatEmote = ChatEmote

ChatEmote.Config = {
	iconSize = 24,
	enableEmoteInput = true,
}

local customEmoteStartIndex = 9

local emotes = {
	-- RaidTarget
	{"{rt1}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_1]=]},
	{"{rt2}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_2]=]},
	{"{rt3}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_3]=]},
	{"{rt4}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_4]=]},
	{"{rt5}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_5]=]},
	{"{rt6}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_6]=]},
	{"{rt7}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_7]=]},
	{"{rt8}", [=[Interface\TargetingFrame\UI-RaidTargetingIcon_8]=]},

	-- ElvUI's emotes
	{":angry:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Angry]=]},
	{":blush:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Blush]=]},
	{":broken_heart:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\BrokenHeart]=]},
	{":call_me:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\CallMe]=]},
	{":cry:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Cry]=]},
	{":facepalm:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Facepalm]=]},
	{":grin:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Grin]=]},
	{":heart:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Heart]=]},
	{":heart_eyes:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\HeartEyes]=]},
	{":joy:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Joy]=]},
	{":kappa:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Kappa]=]},
	{":meaw:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Meaw]=]},
	{":middle_finger:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\MiddleFinger]=]},
	{":murloc:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Murloc]=]},
	{":ok_hand:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\OkHand]=]},
	{":open_mouth:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\OpenMouth]=]},
	{":poop:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Poop]=]},
	{":rage:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Rage]=]},
	{":sadkitty:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\SadKitty]=]},
	{":scream:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Scream]=]},
	{":scream_cat:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\ScreamCat]=]},
	{":slight_frown:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\SlightFrown]=]},
	{":smile:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Smile]=]},
	{":smirk:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Smirk]=]},
	{":sob:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Sob]=]},
	{":sunglasses:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Sunglasses]=]},
	{":thinking:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Thinking]=]},
	{":thumbs_up:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\ThumbsUp]=]},
	{":semi_colon:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\SemiColon]=]},
	{":wink:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\Wink]=]},
	{":zzz:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\ZZZ]=]},
	{":stuck_out_tongue:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\StuckOutTongue]=]},
	{":stuck_out_tongue_closed_eyes:", [=[Interface\AddOns\ElvUI\Media\ChatEmojis\StuckOutTongueClosedEyes]=]},

	-- My emots
	{":monkaomega:", [=[Interface\AddOns\ElvUI_KlixUI_TBC_Classic\media\textures\chatEmojis\monkaomega]=]},
	{":salt:", [=[Interface\AddOns\ElvUI_KlixUI_TBC_Classic\media\textures\chatEmojis\salt]=]},
}

KC.emotes = emotes

local ShowEmoteTableButton
local EmoteTableFrame
local text, texture

local function CreateEmoteTableFrame()
	EmoteTableFrame = T.CreateFrame("Frame", "EmoteTableFrame", E.UIParent)
	EmoteTableFrame:CreateBackdrop("Transparent")
	EmoteTableFrame.backdrop:Styling()
	EmoteTableFrame:SetWidth((ChatEmote.Config.iconSize + 2) * 12 + 4)
	EmoteTableFrame:SetHeight((ChatEmote.Config.iconSize + 2) * 5 + 4)
	EmoteTableFrame:SetPoint("BOTTOMLEFT", _G.LeftChatPanel, "TOPLEFT", 1, 2)
	EmoteTableFrame:Hide()
	EmoteTableFrame:SetFrameStrata("DIALOG")
	T.table_insert(UISpecialFrames, EmoteTableFrame:GetDebugName())

	local icon, row, col
	row = 1
	col = 1
	for i = 1, #emotes do
		text = emotes[i][1]
		texture = emotes[i][2]
		icon = T.CreateFrame("Frame", T.string_format("IconButton%d", i), EmoteTableFrame)
		icon:SetWidth(ChatEmote.Config.iconSize)
		icon:SetHeight(ChatEmote.Config.iconSize)
		icon.text = text
		icon.texture = icon:CreateTexture(nil, "ARTWORK")
		icon.texture:SetTexture(texture)
		icon.texture:SetAllPoints(icon)
		icon:Show()
		icon:SetPoint("TOPLEFT", (col - 1) * (ChatEmote.Config.iconSize + 2) + 2, -(row - 1) * (ChatEmote.Config.iconSize + 2) - 2)
		icon:SetScript("OnMouseUp", ChatEmote.EmoteIconMouseUp)
		icon:EnableMouse(true)
		col = col + 1
		if (col > 12) then
			row = row + 1
			col = 1
		end
	end
end

function ChatEmote.ToggleEmoteTable()
	if (not EmoteTableFrame) then CreateEmoteTableFrame() end
	if (EmoteTableFrame:IsShown()) then
		EmoteTableFrame:Hide()
	else
		EmoteTableFrame:Show()
	end
end

function ChatEmote.EmoteIconMouseUp(frame, button)
	if (button == "LeftButton") then
		local ChatFrameEditBox = T.ChatEdit_ChooseBoxForSend()
		if (not ChatFrameEditBox:IsShown()) then
			T.ChatEdit_ActivateChat(ChatFrameEditBox)
		end
		ChatFrameEditBox:Insert(frame.text)
	end
	ChatEmote.ToggleEmoteTable()
end

function KC:LoadChatEmote()
	function C_Club.GetMessageInfo(clubId, streamId, messageId)
		local message = T.C_Club_GetMessageInfo(clubId, streamId, messageId)
		message.content = CH:GetSmileyReplacementText(message.content)
		return message
	end

	function CH:InsertEmotions(msg)
		for k, v in T.pairs(emotes) do
			msg = T.string_gsub(msg, v[1], "|T" .. v[2] .. ":16|t")
		end

		for word in T.string_gmatch(msg, "%s-%S+%s*") do
			word = T.strtrim(word)
			local pattern = T.string_gsub(word, "([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1")
			local emoji = CH.Smileys[pattern]
			if emoji and T.string_match(msg, "[%s%p]-" .. pattern .. "[%s%p]*") then
				local base64 = E.Libs.Base64:Encode(word)
				msg = T.string_gsub(msg, "([%s%p]-)" .. pattern .. "([%s%p]*)", (base64 and ("%1|Helvmoji:%%" .. base64 .. "|h|cFFffffff|r|h") or "%1") .. emoji .. "%2")
			end
		end
		return msg
	end
end

-- ChatEmotes thx Merathilis
function KC:Initialize()
	if E.db.KlixUI.chat.emotes ~= true or E.private.chat.enable ~= true then return end

	local Emote = self.ChatEmote
	local ChatEmote = CreateFrame("Button", "KUIEmote", _G.LeftChatPanel.backdrop)
	ChatEmote:SetPoint("RIGHT", _G.CopyChatButton1, "LEFT", 0, 0)
	ChatEmote:SetWidth(12)
	ChatEmote:SetHeight(12)
	ChatEmote:SetScript("OnClick", function()
		if InCombatLockdown() then return end
		Emote.ToggleEmoteTable()
	end)

	ChatEmote:SetNormalTexture("Interface\\Addons\\ElvUI\\media\\ChatEmojis\\Smile")
	ChatEmote:GetNormalTexture():SetDesaturated(true)
	ChatEmote:GetNormalTexture():SetAlpha(.45)
	ChatEmote:SetScript("OnEnter", function(self)
		_G.GameTooltip:SetOwner(self, "ANCHOR_TOP", 0, 6)
		_G.GameTooltip:AddLine(L["Click to open Emoticon Frame"])
		_G.GameTooltip:Show()
		ChatEmote:SetNormalTexture("Interface\\Addons\\ElvUI\\media\\ChatEmojis\\Scream")
		ChatEmote:GetNormalTexture():SetDesaturated(false)
		ChatEmote:GetNormalTexture():SetAlpha(1)
	end)
	ChatEmote:SetScript("OnLeave", function(self)
		_G.GameTooltip:Hide()
		ChatEmote:SetNormalTexture("Interface\\Addons\\ElvUI\\media\\ChatEmojis\\Smile")
		ChatEmote:GetNormalTexture():SetDesaturated(true)
		ChatEmote:GetNormalTexture():SetAlpha(.45)
	end)

	self:LoadChatEmote()
end

KUI:RegisterModule(KC:GetName())
