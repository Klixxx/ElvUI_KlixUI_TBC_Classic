local KUI, T, E, L, V, P, G = unpack(select(2, ...))
local KUIL = KUI:NewModule('KuiLayout', 'AceHook-3.0', 'AceEvent-3.0');
local KS = KUI:GetModule("KuiSkins")
local KC = KUI:GetModule("KuiChat")
local AB = E:GetModule("ActionBars")
local CH = E:GetModule("Chat")
local LO = E:GetModule('Layout')
local DT = E:GetModule('DataTexts')
local LSM = E.LSM or E.Libs.LSM

local GameTooltip = _G.GameTooltip
local GameMenuButtonAddons = _G.GameMenuButtonAddons

local cp = "|cFF00c0fa" -- +
local cm = "|cff9a1212" -- -

local SPACING = (E.PixelMode and 1 or 3)
local BUTTON_NUM = 4

local menuFrame = T.CreateFrame('Frame', 'KuiGameClickMenu', E.UIParent)
menuFrame:SetTemplate('Transparent', true)

function KuiGameMenu_OnMouseUp(self)
	GameTooltip:Hide()
	KUI:Dropmenu(KUI.MenuList, menuFrame, self:GetName(), 'tLeft', -SPACING, SPACING, 4)
	T.PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
end

local kbuttons = {}

function KUIL:Styles()
	if not E.db.KlixUI.general.style then return end
end

local function Panel_OnShow(self)
	self:SetFrameLevel(0)
end

function KUIL:ChangeLayout()
end

local function ShowOrHideBar4(bar, button)
	if E.db.actionbar.bar4.enabled == true then
		E.db.actionbar.bar4.enabled = false
	elseif E.db.actionbar.bar4.enabled == false then
		E.db.actionbar.bar4.enabled = true
	end
	AB:UpdateButtonSettings("bar4")
end

local function ShowOrHideBar5(bar, button)
	if E.db.actionbar.bar5.enabled == true then
		E.db.actionbar.bar5.enabled = false
	elseif E.db.actionbar.bar5.enabled == false then
		E.db.actionbar.bar5.enabled = true
	end
	AB:UpdateButtonSettings("bar5")
end

local function MoveButtonBar(button, bar)
	if button == kbuttons4 then
		if E.db.actionbar.bar4.enabled == true then
			button.text:SetText(cm.."-|r")
		else
			button.text:SetText(cp.."+|r")
		end
	end

	if button == kbuttons2 then
		if E.db.actionbar.bar5.enabled == true then
			button.text:SetText(cm.."-|r")
		else
			button.text:SetText(cp.."+|r")
		end
	end
end

local function UpdateBar4(self, bar)
	GameTooltip:Hide()
	if T.InCombatLockdown() then KUI:Print(ERR_NOT_IN_COMBAT) return end
	local button = self

	ShowOrHideBar4(bar, button)
	MoveButtonBar(button, bar)
end

local function UpdateBar5(self, bar)
	GameTooltip:Hide()
	if T.InCombatLockdown() then KUI:Print(ERR_NOT_IN_COMBAT) return end
	local button = self

	ShowOrHideBar5(bar, button)
	MoveButtonBar(button, bar)
end

function KUIL:SpecandEquipBar_OnClick()
	GameTooltip:Hide()

	if SpecializationBar:IsShown() and EquipmentSets:IsShown() then
		SpecializationBar:Hide()
		EquipmentSets:Hide()
	else
		SpecializationBar:Show()
		EquipmentSets:Show()
	end
end

function KUIL:ShadowOverlay()
	-- Based on ncShadow, Credits go to Merathilis
	if not E.db.KlixUI.general.shadowOverlay.enable then return end

	self.f = T.CreateFrame("Frame", KUI.Title.."ShadowBackground")
	self.f:SetPoint("TOPLEFT")
	self.f:SetPoint("BOTTOMRIGHT")
	self.f:SetFrameLevel(0)
	self.f:SetFrameStrata("BACKGROUND")

	self.f.tex = self.f:CreateTexture()
	self.f.tex:SetTexture([[Interface\Addons\ElvUI_KlixUI_TBC_Classic\media\textures\overlay]])
	self.f.tex:SetAllPoints(self.f)
	
	self:SetShadowLevel(E.db.KlixUI.general.shadowOverlay.alpha or 60)
end

-- Based on CodeNameBlaze chat lines
function KUIL:CreateAndModifyChatPanels()
	--Left Chat Tab Separator
	local ltabseparator = T.CreateFrame('Frame', 'LeftChatTabSeparator', LeftChatPanel)
	ltabseparator:SetFrameStrata('BACKGROUND')
	ltabseparator:SetFrameLevel(LeftChatPanel:GetFrameLevel() + 2)
	ltabseparator:Size(E.db.chat.panelWidth - 10, 1)
	ltabseparator:Point('TOP', LeftChatPanel, 0, -24)
	ltabseparator:SetTemplate('Transparent')
	
	--Right Chat Tab Separator
	local rtabseparator = T.CreateFrame('Frame', 'RightChatTabSeparator', RightChatPanel)
	rtabseparator:SetFrameStrata('BACKGROUND')
	rtabseparator:SetFrameLevel(RightChatPanel:GetFrameLevel() + 2)
	rtabseparator:Size(E.db.chat.panelWidth - 10, 1)
	rtabseparator:Point('TOP', RightChatPanel, 0, -24)
	rtabseparator:SetTemplate('Transparent')
end
hooksecurefunc(LO, "CreateChatPanels", KUIL.CreateAndModifyChatPanels)

-- Based on CodeNameBlaze chat lines
function KUIL:ToggleChatSeparators()
	if E.db.KlixUI.chat.chatTabSeparator == 'SHOWBOTH' then
		LeftChatTabSeparator:Show()
		RightChatTabSeparator:Show()
	elseif E.db.KlixUI.chat.chatTabSeparator == 'HIDEBOTH' then
		LeftChatTabSeparator:Hide()
		RightChatTabSeparator:Hide()
	elseif E.db.KlixUI.chat.chatTabSeparator == 'LEFTONLY' then
		LeftChatTabSeparator:Show()
		RightChatTabSeparator:Hide()
	elseif E.db.KlixUI.chat.chatTabSeparator == 'RIGHTONLY' then
		LeftChatTabSeparator:Hide()
		RightChatTabSeparator:Show()
	end
	
end

function KUIL:TopPanelLayout()
	local db = E.db.KlixUI.misc.panels.top
	local frame = ElvUI_TopPanel

	if E.db.KlixUI.general.style then
		if db.style then
			ElvUI_TopPanel:Styling()
		else
			if frame.squares or frame.gradient or frame.mshadow then
				ElvUI_TopPanel.squares:SetTexture(nil)
				ElvUI_TopPanel.gradient:SetTexture(nil)
				ElvUI_TopPanel.mshadow:SetTexture(nil)
			end
		end
	end

	if db.transparency then
		ElvUI_TopPanel:SetTemplate('Transparent')
	else
		ElvUI_TopPanel:SetTemplate('Default')
	end

	ElvUI_TopPanel:Height(db.height)

end

function KUIL:BottomPanelLayout()
	local db = E.db.KlixUI.misc.panels.bottom
	local frame = ElvUI_BottomPanel

	if E.db.KlixUI.general.style then
		if db.style then
			ElvUI_BottomPanel:Styling()
		else
			if frame.squares or frame.gradient or frame.mshadow then
				ElvUI_BottomPanel.squares:SetTexture(nil)
				ElvUI_BottomPanel.gradient:SetTexture(nil)
				ElvUI_BottomPanel.mshadow:SetTexture(nil)
			end
		end
	end

	if db.transparency then
		ElvUI_BottomPanel:SetTemplate('Transparent')
	else
		ElvUI_BottomPanel:SetTemplate('Default')
	end

	ElvUI_BottomPanel:Height(db.height)
end

function KUIL:SetShadowLevel(n)
	self.f:SetAlpha(n/100)
end

function KUIL:Initialize()
	self:ChangeLayout()
	self:TopPanelLayout()
	self:BottomPanelLayout()
	self:Styles()
	self:ShadowOverlay()
	self:ToggleChatSeparators()
end

KUI:RegisterModule(KUIL:GetName())