
BEGIN F_DRIZZT

IF ~NumTimesTalkedTo(0)~ THEN BEGIN DZ3
  SAY @10
  IF ~~ THEN REPLY @11 GOTO DZ4
END

IF ~~ THEN BEGIN DZ4
  SAY @13
  IF ~~ THEN DO ~SetInterrupt(FALSE)
  				 SetGlobal("F_MeetDrizztInBeard","GLOBAL",1)
  				 EscapeAreaMove("%UlgothsBeard_Inn%",710,160,0)
  				 SetInterrupt(TRUE)~ JOURNAL @10006 EXIT
END

IF ~Global("F_MeetDrizztInBeard","GLOBAL",1)~ THEN BEGIN DZ5
  SAY @15
  IF ~~ THEN REPLY @16 DO ~SetGlobal("F_MeetDrizztInBeard","GLOBAL",2)~ GOTO DZ6
  IF ~~ THEN REPLY @19 EXIT
END

IF ~~ THEN BEGIN DZ6
  SAY @17
  IF ~~ THEN DO ~SetInterrupt(FALSE)
  				DestroyItem("SW1H15")
  				DestroyItem("SW1H16")
  				DestroyItem("F_DRIWP3")
  				ApplySpellRES("F_DRIWP",Myself)
  				EquipMostDamagingMelee()
  				SetGlobal("F_DrizztVanillaStuffDisposed","LOCALS",1)
  				JoinParty()
  				SetInterrupt(TRUE)~ JOURNAL @10007 EXIT
END
