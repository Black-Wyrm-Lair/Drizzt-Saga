BEGIN ~F_JARLAJ~

IF ~ReputationGT(Myself,15)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~True()~ THEN BEGIN 1 // from:
  SAY @2
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END
