BEGIN ~F_MULTIP~

IF ~True()~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 EXIT
  IF ~~ THEN REPLY @3 DO ~EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 1 // from:
  SAY @4
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
