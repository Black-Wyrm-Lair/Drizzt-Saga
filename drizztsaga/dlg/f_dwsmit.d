BEGIN ~F_DWSMIT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 9.0 1.0
  SAY @5
  IF ~PartyHasItem("F_DRSCUL")~ THEN REPLY @6 GOTO 3
  IF ~PartyHasItem("%_%MISC01")~ THEN REPLY @7 GOTO 4
  IF ~PartyHasItem("F_ICEAXE")
PartyHasItem("F_FROSTS")~ THEN REPLY @8 GOTO 10
  IF ~~ THEN REPLY @9 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @10
  IF ~PartyGoldGT(4999)~ THEN REPLY @11 GOTO 6
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @13
  IF ~PartyGoldGT(2999)~ THEN REPLY @11 GOTO 8
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY @15
  IF ~~ THEN DO ~GiveItemCreate("F_DRGPLA",LastTalkedToBy,0,0,0)
TakePartyItem("F_DRSCUL")
TakePartyGold(5000)
DestroyGold(5000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY @16
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY @17
  IF ~~ THEN DO ~GiveItemCreate("F_CLDCLK",LastTalkedToBy,0,0,0)
TakePartyItem("%_%MISC01")
TakePartyGold(3000)
DestroyGold(3000)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 9 // from:
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY @20
  IF ~PartyGoldGT(9999)~ THEN REPLY @11 GOTO 11
  IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @17
  IF ~~ THEN DO ~GiveItemCreate("F_ICEAX5",LastTalkedToBy,0,0,0)
TakePartyItem("F_ICEAXE")
TakePartyItem("F_FROSTS")
TakePartyGold(10000)
DestroyGold(10000)~ EXIT
END
