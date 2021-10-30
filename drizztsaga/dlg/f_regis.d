BEGIN ~F_REGIS~

IF ~InParty("F_DRIZZT")~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("F_SpokeToDrizzt","LOCALS",1)~ REPLY @2 GOTO 2
END

IF ~!InParty("F_DRIZZT") NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN JOURNAL @4 EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN DO ~SetInterrupt(FALSE)
ActionOverride(Player2,LeaveAreaLUA("F_6666","",[228.2906],0))
ActionOverride(Player3,LeaveAreaLUA("F_6666","",[228.2906],0))
ActionOverride(Player4,LeaveAreaLUA("F_6666","",[228.2906],0))
ActionOverride(Player5,LeaveAreaLUA("F_6666","",[228.2906],0))
ActionOverride(Player6,LeaveAreaLUA("F_6666","",[228.2906],0))
ActionOverride(Player1,LeaveAreaLUA("F_6666","",[228.2906],0))
SetInterrupt(TRUE)
DestroySelf()~ JOURNAL @9 EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN DO ~ActionOverride("F_DRIZZT",LeaveParty())
ActionOverride("F_DRIZZT",EscapeArea())
EscapeArea()~ EXIT
END
