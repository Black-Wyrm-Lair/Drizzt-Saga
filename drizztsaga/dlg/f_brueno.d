BEGIN ~F_BRUENO~

IF ~InParty("F_DRIZZT") NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @5 DO /* ~ActionOverride("#DRIZZT",LeaveParty())
ActionOverride("#DRIZZT",EscapeArea())
ActionOverride("#WULFGAR",LeaveParty())
ActionOverride("#WULFGAR",EscapeArea())
ActionOverride("#REGIS2",LeaveParty())
ActionOverride("#REGIS2",EscapeArea())	*/
~EscapeArea()~ EXIT
END

IF ~!InParty("F_DRIZZT") NumTimesTalkedTo(0)~ THEN BEGIN 2 // from:
  SAY @6
  IF ~~ THEN REPLY @7 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @8 DO /*~ActionOverride("#DRIZZT",LeaveParty())
ActionOverride("#DRIZZT",EscapeArea())
ActionOverride("#WULFGAR",LeaveParty())
ActionOverride("#WULFGAR",EscapeArea())
ActionOverride("#REGIS2",LeaveParty())
ActionOverride("#REGIS2",EscapeArea())	*/
~EscapeArea()~ EXIT
END
