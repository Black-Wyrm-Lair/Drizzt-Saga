BEGIN ~F_REGIS2~

IF ~NumTimesTalkedTo(0) InParty("F_DRIZZT")~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @5 DO /*~ActionOverride("#WULFGAR",LeaveParty())
ActionOverride("#WULFGAR",EscapeArea())
ActionOverride("#DRIZZT",LeaveParty())
ActionOverride("#DRIZZT",EscapeArea())	*/
~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedTo(0) !InParty("F_DRIZZT")~ THEN BEGIN 2 // from:
  SAY @6
  IF ~~ THEN REPLY @4 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 DO /*~ActionOverride("#WULFGAR",LeaveParty())
ActionOverride("#WULFGAR",EscapeArea())
ActionOverride("#DRIZZT",LeaveParty())
ActionOverride("#DRIZZT",EscapeArea())	*/
~EscapeArea()~ EXIT
END
