BEGIN ~F_KANGAX~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @11
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @13
  IF ~~ THEN EXIT
END
