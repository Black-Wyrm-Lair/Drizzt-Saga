BEGIN ~F_ELMINS~

IF ~NumTimesTalkedTo(0) InParty("F_DRIZZT")~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN DO ~SetInterrupt(FALSE)
RevealAreaOnMap("F_7777")
ActionOverride(Player2,LeaveAreaLUA("F_7777","",[397.1238],0))
ActionOverride(Player3,LeaveAreaLUA("F_7777","",[397.1238],0))
ActionOverride(Player4,LeaveAreaLUA("F_7777","",[397.1238],0))
ActionOverride(Player5,LeaveAreaLUA("F_7777","",[397.1238],0))
ActionOverride(Player6,LeaveAreaLUA("F_7777","",[397.1238],0))
ActionOverride(Player1,LeaveAreaLUA("F_7777","",[397.1238],0))
SetInterrupt(TRUE)
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @9
  IF ~~ THEN DO ~ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",EscapeArea())
ActionOverride("F_WULFGAR",LeaveParty())
ActionOverride("F_WULFGAR",EscapeArea())
EscapeArea()~ EXIT
END

IF ~NumTimesTalkedTo(0) !InParty("F_DRIZZT")~ THEN BEGIN 5 // from:
  SAY @10
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
