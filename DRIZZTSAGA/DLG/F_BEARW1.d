BEGIN ~F_BEARW1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF ~Global("F_aidtribe","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY @2
  IF ~~ THEN EXIT
END
