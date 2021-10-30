BEGIN ~F_BEAROL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
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
  IF ~~ THEN REPLY @9 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10
  IF ~~ THEN REPLY @11 DO ~SetGlobal("F_aidtribe","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~Global("F_aidtribe","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY @12
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy(Myself),CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT
END

IF WEIGHT #1 ~PartyHasItem("F_BEARKI")~ THEN BEGIN 6 // from:
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("F_aidtribe","GLOBAL",2)
ReputationInc(1)
AddexperienceParty(5000)
GiveItemCreate("F_BEARSU",LastTalkedToBy,1,1,1)
TakePartyItem("F_BEARKI")
EraseJournalEntry(@10001)~ SOLVED_JOURNAL @10002 EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @16
  IF ~~ THEN DO ~ReputationInc(-2)
GiveGoldForce(2000)
SetGlobal("F_aidtribe","GLOBAL",1)~ UNSOLVED_JOURNAL @10001 EXIT
END

IF WEIGHT #3 ~Global("F_aidtribe","GLOBAL",2)~ THEN BEGIN 8 // from:
  SAY @17
  IF ~~ THEN EXIT
END
