BEGIN ~F_CORN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3 
  IF ~~ THEN DO ~ReallyForceSpell(Myself,CLERIC_TRUE_SIGHT)
ReallyForceSpell([PC],WIZARD_DISPEL_MAGIC)
ReallyForceSpell([PC],WIZARD_GREATER_MALISON)~ EXIT
END
