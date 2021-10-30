BEGIN ~F_CATTI~

IF ~NumTimesTalkedTo(0) InParty("F_DRIZZT")~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~NumTimesTalkedTo(0) !InParty("F_DRIZZT")~ THEN BEGIN 2 // from:
  SAY @4
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("F_finalfight","GLOBAL",1) JoinParty()~ EXIT
END