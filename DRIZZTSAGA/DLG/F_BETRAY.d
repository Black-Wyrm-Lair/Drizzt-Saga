BEGIN ~F_BETRAY~

IF ~True()
Global("F_betray","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~SetGlobal("F_betray","GLOBAL",1)~ EXIT
END
