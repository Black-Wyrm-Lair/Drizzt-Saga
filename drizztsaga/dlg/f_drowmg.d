BEGIN ~F_DROWMG~

IF ~NumTimesTalkedTo(0) InParty("F_DRIZZT")~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~CreateCreature("F_DROWAR",[406.350],0)
CreateCreature("F_DROWAR",[426.338],0)
CreateCreature("F_DROWAR",[441.331],0)
CreateCreature("F_DROWAR",[431.398],0)
CreateCreature("F_DROWAR",[486.352],0)
CreateCreature("F_DROWAR",[473.421],0)
CreateCreature("F_DROWAR",[501.408],0)
CreateCreature("F_DROWAR",[514.393],0)~ EXIT
END

IF ~NumTimesTalkedTo(0) !InParty("F_DRIZZT")~ THEN BEGIN 1 // from:
  SAY @2
  IF ~~ THEN DO ~CreateCreature("F_DROWAR",[406.350],0)
CreateCreature("F_DROWAR",[426.338],0)
CreateCreature("F_DROWAR",[441.331],0)
CreateCreature("F_DROWAR",[431.398],0)
CreateCreature("F_DROWAR",[486.352],0)
CreateCreature("F_DROWAR",[473.421],0)
CreateCreature("F_DROWAR",[501.408],0)
CreateCreature("F_DROWAR",[514.393],0)~ EXIT
END
