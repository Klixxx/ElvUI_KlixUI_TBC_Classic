local KUI, T, E, L, V, P, G = unpack(select(2, ...))

function KUI:LoadAddOnSkinsProfile()
	local AS = unpack(AddOnSkins)

	AS.data:SetProfile("KlixUI")
	
	-- defaults
	AS.db['EmbedOoC'] = false
	AS.db['EmbedOoCDelay'] = 10
	AS.db['EmbedCoolLine'] = false
	AS.db['EmbedSexyCooldown'] = false
	AS.db['TransparentEmbed'] = false
	AS.db['EmbedIsHidden'] = false
	AS.db['EmbedFrameStrata'] = '2-LOW'
	AS.db['EmbedFrameLevel'] = 10
	AS.db['RecountBackdrop'] = false
	AS.db['SkadaBackdrop'] = false
	AS.db['OmenBackdrop'] = false
	AS.db['DetailsBackdrop'] = false
	AS.db['MiscFixes'] = true
	AS.db['DBMSkinHalf'] = false
	AS.db['DBMFont'] = 'Expressway'
	AS.db['DBMFontSize'] = 12
	AS.db['DBMFontFlag'] = 'OUTLINE'
	AS.db['DBMRadarTrans'] = false
	AS.db['WeakAuraAuraBar'] = false
	AS.db['WeakAuraIconCooldown'] = false
	AS.db['SkinTemplate'] = 'MerathilisUI'
	AS.db['HideChatFrame'] = 'NONE'
	AS.db['Parchment'] = false
	AS.db['ParchmentRemover'] = false
	AS.db['SkinDebug'] = false
	AS.db['LoginMsg'] = false
	AS.db['EmbedSystemMessage'] = false
	AS.db['ElvUISkinModule'] = true
	AS.db['ThinBorder'] = false
	AS.db['BackgroundTexture'] = 'Klix'
	AS.db['StatusBarTexture'] = 'Klix'

	if IsAddOnLoaded('Recount') then
		AS.db['EmbedFrameStrata'] = "2-LOW"
		AS.db['EmbedBelowTop'] = false
		AS.db['EmbedMain'] = 'Recount'
		AS.db['EmbedSystem'] = true
		AS.db['EmbedSystemDual'] = false
		AS.db['RecountBackdrop'] = false
		AS.db['TransparentEmbed'] = true
	end

	if IsAddOnLoaded('Skada') then
		AS.db['EmbedFrameStrata'] = "2-LOW"
		AS.db['EmbedBelowTop'] = false
		AS.db['EmbedLeft'] = 'Skada'
		AS.db['EmbedMain'] = 'Skada'
		AS.db['EmbedRight'] = 'Skada'
		AS.db['EmbedSystem'] = true
		AS.db['EmbedSystemDual'] = false
		AS.db['SkadaBackdrop'] = false
		AS.db['TransparentEmbed'] = true
	end

	if IsAddOnLoaded('Details') then
		AS.db['EmbedFrameStrata'] = "2-LOW"
		AS.db['DetailsBackdrop'] = false
		AS.db['EmbedBelowTop'] = false
		AS.db['EmbedLeft'] = 'Details'
		AS.db['EmbedMain'] = 'Details'
		AS.db['EmbedRight'] = 'Details'
		AS.db['EmbedSystem'] = false
		AS.db['EmbedSystemDual'] = true
		AS.db['TransparentEmbed'] = true
		AS.db["EmbedLeftWidth"] = 215
	end

	if IsAddOnLoaded('DBM-Core') then
		AS.db['DBMFont'] = "Expressway"
		AS.db['DBMFont'] = "Expressway"
		AS.db['DBMFontSize'] = 10
		AS.db['DBMRadarTrans'] = true
		AS.db['DBMSkinHalf'] = false
	end
	
	if IsAddOnLoaded("BugSack") then
		AS.db["BugSack"] = false
	end	
end