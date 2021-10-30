BEGIN ~F_DEADSA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~RevealAreaOnMap("F_0111")
Wait(1)
Kill(Myself)~ EXIT
END
