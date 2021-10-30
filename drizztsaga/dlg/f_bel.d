BEGIN ~F_BEL~

IF ~NumTimesTalkedTo(0) InParty("F_DRIZZT")~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~NumTimesTalkedTo(0) !InParty("F_DRIZZT")~ THEN BEGIN 1 // from:
  SAY @3
  IF ~~ THEN REPLY @4 EXIT
END
