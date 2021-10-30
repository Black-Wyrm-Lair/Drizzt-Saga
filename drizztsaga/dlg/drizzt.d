
ALTER_TRANS ~%_%DRIZZT~
BEGIN 1 END // state number
BEGIN 0 END // transition number
BEGIN // list of changes
  "REPLY" ~@1~
  "EPILOGUE" ~GOTO DZ1~
END

ALTER_TRANS ~%_%DRIZZT~
BEGIN 2 END // state number
BEGIN 1 END // transition number
BEGIN // list of changes
  "EPILOGUE" ~GOTO DZ2~
END

APPEND ~%_%DRIZZT~

IF ~~ THEN BEGIN DZ1
  SAY @2
  IF ~~ THEN DO ~SetInterrupt(FALSE)
  				DestroyItem("SW1H15")
  				DestroyItem("SW1H16")
  				DestroyItem("F_DRIWP3")
  				ApplySpellRES("F_DRIWP",Myself)
  				EquipMostDamagingMelee()
  				SetGlobal("F_DrizztVanillaStuffDisposed","LOCALS",1)
  				JoinParty()
  				SetInterrupt(TRUE)~ JOURNAL @10003 EXIT
END

IF ~~ THEN BEGIN DZ2
  SAY @8
  IF ~~ THEN REPLY @9 GOTO DZ1
END

END