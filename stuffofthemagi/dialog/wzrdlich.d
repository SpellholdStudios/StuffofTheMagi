BEGIN wzrdlich

IF ~GlobalGT("LK#StartTalking","GLOBAL",1)~ THEN BEGIN LK#Erevain_e1
  SAY @0
  IF ~True()~ THEN REPLY @1 EXIT
END

IF ~Global("LK#StartTalking","GLOBAL",0)~ THEN BEGIN LK#Erevain_e2
  SAY @2
  IF ~True()~ THEN REPLY @1 EXIT
END

CHAIN IF ~Global("LK#StartTalking","GLOBAL",1)~ THEN wzrdlich LK#Erevain_d
  @3
  DO ~SetGlobal("LK#StartTalking","GLOBAL",2)~
END
  ++ @4 + LK#Erevain_1
  ++ @5 + LK#Erevain_1
  ++ @6 + LK#Erevain_1

CHAIN wzrdlich LK#Erevain_1
  @7
= @8
= @9
= @10
= @11
 == BOTSMITH IF ~Range("botsmith",15)~ THEN @12
END
  ++ @13 EXTERN wzrdlich LK#Erevain_2
  ++ @14 EXTERN wzrdlich LK#Erevain_3
  ++ @15 EXTERN wzrdlich LK#Erevain_4

CHAIN wzrdlich LK#Erevain_2
  @16
== IMOEN25J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @17
== AERIE25J IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @18
== JAHEI25J IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @19
== VICON25J IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @20
== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",LAWFUL_GOOD)~ THEN @21
== ANOME25J IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Alignment("Anomen",CHAOTIC_NEUTRAL)~ THEN @22
== EDWIN25J IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @23
== JAN25J IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @24
== VALYG25J IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @25
== MINSC25J IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @26
== wzrdlich @27
= @28
END
  ++ @29 EXTERN wzrdlich LK#Erevain_4
  ++ @30 EXTERN wzrdlich LK#Erevain_3
  ++ @31 EXTERN wzrdlich LK#Erevain_4

CHAIN wzrdlich LK#Erevain_3
  @32
  DO ~TakePartyItem("wzrdamul")
	  DestroyItem("wzrdamul")
	  TakePartyItem("wzrdboot")
	  DestroyItem("wzrdboot")
	  TakePartyItem("wzrdbrac")
	  DestroyItem("wzrdbrac")
	  TakePartyItem("wzrdhelm")
	  DestroyItem("wzrdhelm")
	  TakePartyItem("wzrdbelt")
	  DestroyItem("wzrdbelt")
	  TakePartyItem("wzrdclck")
	  DestroyItem("wzrdclck")
	  TakePartyItem("wzrdrobe")
	  DestroyItem("wzrdrobe")
	  TakePartyItem("wzrdring")
	  DestroyItem("wzrdring")
	  TakePartyItem("wzrdstaf")
	  DestroyItem("wzrdstaf")
	  GiveItem("wzrdbag1", Player1)
	  AddexperienceParty("25000")
	  ForceSpell("CSIren",0)
	  DestroySelf()~
  == IMOEN25J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @33
  == BOTSMITH IF ~Range("botsmith",15)~ THEN @34
  == AERIE25J IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @35
  == EDWIN25J IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @36
EXIT

CHAIN wzrdlich LK#Erevain_4
  @37
  DO ~ActionOverride("wzrdlich",Enemy())~
EXIT
