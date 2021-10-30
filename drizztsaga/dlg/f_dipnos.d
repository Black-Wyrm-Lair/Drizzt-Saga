BEGIN ~F_DIPNOS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~PartyGoldGT(99)~ THEN REPLY @10 DO ~SetInterrupt(FALSE)
RevealAreaOnMap("F_0222")
TakePartyGold(100)
ActionOverride(Player2,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player3,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player4,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player5,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player6,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player1,LeaveAreaLUA("F_0222","",[385.1245],0))
SetInterrupt(TRUE)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @11 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5 // from:
  SAY @12
  IF ~PartyGoldGT(99)~ THEN REPLY @10 DO ~SetInterrupt(FALSE)
RevealAreaOnMap("F_0222")
TakePartyGold(100)
ActionOverride(Player2,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player3,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player4,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player5,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player6,LeaveAreaLUA("F_0222","",[385.1245],0))
ActionOverride(Player1,LeaveAreaLUA("F_0222","",[385.1245],0))
SetInterrupt(TRUE)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @11 EXIT
END
