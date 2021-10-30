BEGIN ~F_STONGL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from: 4.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5
  IF ~~ THEN DO ~ReallyForceSpell([PC],WIZARD_CLOUDKILL)
ReallyForceSpell([PC],WIZARD_FIREBALL)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUA("ARU000","",[2506.689],0))
ActionOverride(Player2,LeaveAreaLUA("ARU000","",[2506.689],0))
ActionOverride(Player3,LeaveAreaLUA("ARU000","",[2506.689],0))
ActionOverride(Player4,LeaveAreaLUA("ARU000","",[2506.689],0))
ActionOverride(Player5,LeaveAreaLUA("ARU000","",[2506.689],0))
ActionOverride(Player6,LeaveAreaLUA("ARU000","",[2506.689],0))~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 4 // from:
  SAY @7
  IF ~~ THEN GOTO 0
END
