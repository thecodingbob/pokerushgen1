DisplayHealGuyDialogue::
	ld hl, HealGuyWantHealText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .no
.yes
    ld hl, HealGuyHealAcceptedText
	call PrintText
	predef HealParty
	ld a, MUSIC_PKMN_HEALED
	ld [wNewSoundID], a
	call PlaySound
.wait
	ld a, [wChannelSoundIDs]
	cp MUSIC_PKMN_HEALED
	jr z, .wait
	ld a, [wMapMusicSoundID]
	ld [wNewSoundID], a
	call PlaySound
.no
	ld hl, HealGuyByeText
	call PrintText
	jp TextScriptEnd

HealGuyWantHealText:
    text_far _HealGuyWantHealText
    text_end

HealGuyHealAcceptedText:
	text_far _HealGuyHealAcceptedText
    text_end

HealGuyByeText:
	text_far _HealGuyByeText
    text_end