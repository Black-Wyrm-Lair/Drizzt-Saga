BEGIN ~F_STONGL~

IF ~True()~ THEN BEGIN 0 // from: 4.0
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
  IF ~~ THEN DO ~SetInterrupt(FALSE)
ActionOverride(Player2,LeaveAreaLUA("%UlgothsBeard%","",[2506.689],0))
ActionOverride(Player3,LeaveAreaLUA("%UlgothsBeard%","",[2506.689],0))
ActionOverride(Player4,LeaveAreaLUA("%UlgothsBeard%","",[2506.689],0))
ActionOverride(Player5,LeaveAreaLUA("%UlgothsBeard%","",[2506.689],0))
ActionOverride(Player6,LeaveAreaLUA("%UlgothsBeard%","",[2506.689],0))
ActionOverride(Player1,LeaveAreaLUA("%UlgothsBeard%","",[2506.689],0))
SetGlobal("F_CreatElminster","%UlgothsBeard%",1)
SetInterrupt(TRUE)~ EXIT
END