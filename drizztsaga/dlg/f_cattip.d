BEGIN ~F_CATTIP~

IF ~HappinessLT(Myself,0)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN DO ~ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF ~!HappinessLT(Myself,0)~ THEN BEGIN 1 // from:
  SAY @2 
  IF ~~ THEN DO ~ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
ActionOverride("F_REGIS2",LeaveParty())
ActionOverride("F_REGIS2",EscapeArea())
ActionOverride("F_BRUENOR",LeaveParty())
ActionOverride("F_BRUENOR",EscapeArea())
ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END
