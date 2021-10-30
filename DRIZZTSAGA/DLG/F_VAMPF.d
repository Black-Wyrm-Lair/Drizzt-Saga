BEGIN ~F_VAMPF~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~CreateCreature("F_VAMPF",[4600.2044],0)
CreateCreature("F_VAMPF",[4600.2044],0)
CreateCreature("F_VAMPF",[4600.2044],0)~ EXIT
END
