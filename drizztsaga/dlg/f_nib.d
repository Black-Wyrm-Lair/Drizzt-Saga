BEGIN ~F_NIB~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~StartStore("F_NIBSHP",LastTalkedToBy())
SetGlobal("F_nibstore","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @9 DO ~SetGlobal("F_nibstore","LOCALS",1)~ EXIT
END

IF ~Global("F_nibstore","LOCALS",1)~ THEN BEGIN 4 // from:
  SAY @10
  IF ~~ THEN REPLY @8 DO ~StartStore("F_NIBSHP",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END
