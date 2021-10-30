BEGIN ~F_ROBED~

IF ~InParty("F_DRIZZT") NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 4.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetInterrupt(FALSE)
RevealAreaOnMap("F_9898")
ActionOverride(Player2,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player3,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player4,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player5,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player6,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player1,LeaveAreaLUA("F_9898","",[428.1544],0))
SetInterrupt(TRUE)
DestroySelf()~ EXIT
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~!InParty("F_DRIZZT") NumTimesTalkedTo(0)~ THEN BEGIN 4 // from:
  SAY @10
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11
  IF ~~ THEN REPLY @12 DO ~SetInterrupt(FALSE)
RevealAreaOnMap("F_9898")
ActionOverride(Player2,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player3,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player4,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player5,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player6,LeaveAreaLUA("F_9898","",[428.1544],0))
ActionOverride(Player1,LeaveAreaLUA("F_9898","",[428.1544],0))
SetInterrupt(TRUE)
DestroySelf()~ EXIT
END
