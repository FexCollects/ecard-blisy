INCLUDE "../macros.asm"
INCLUDE "../constants/items.asm"
INCLUDE "../constants/scriptcommands.asm"
  	
MACRO CALCSTATS
	db $01
	db $48
	db $00
	db $00
	db $01
	db $4B
	db $18
	db $47
        db $C0
        db $45
        db $00
        db $03
	db $B9
	db $B1
	db $03
	db $08
	ENDM
MACRO CAPTURECELEBI
	db $04
	db $48
	db $05
	db $49
	db $05
	db $4A
	db $64
	db $26
	db $05
	db $4B
	db $1F
	db $78
	db $77
	db $43
	db $39
	db $44
	db $0B
	db $DF
	db $70
	db $47
        db $EC
        db $8D
        db $02
        db $02
	db $60
	db $43
	db $00
	db $03
	db $14
	db $00
	db $00
	db $04
	db $DA
	db $E8
	db $02
	db $02
	ENDM
MACRO CELEBICOPY1
	db $02
	db $48
	db $03
	db $49
	db $03
	db $4A
	db $0B
	db $DF
	db $70
	db $47
	db $00
	db $00
	db $C0
	db $45
	db $00
	db $03
        db $EC
        db $8D
        db $02
        db $02
	db $14
	db $00
	db $00
	db $04
	ENDM
MACRO CHECKSUM
	db $05
	db $48
	db $06
	db $49
	db $06
	db $4A
	db $0E
	db $68
	db $17
	db $68
	db $37
	db $44
	db $36
	db $0C
	db $37
	db $44
	db $3F
	db $04
	db $3F
	db $0C
	db $07
	db $80
	db $00
	db $BD
        db $DC
        db $45
        db $00
        db $03
	db $34
	db $8E
	db $02
	db $02
	db $08
	db $8E
	db $02
	db $02
	ENDM
MACRO COLORNG
	db $10
	db $48
	db $01
	db $68
	db $10
	db $4A
	db $11
	db $4B
	db $11
	db $4F
	db $59
	db $43
	db $39
	db $44
	db $48
	db $00
	db $40
	db $0C
	db $59
	db $43
	db $39
	db $44
	db $4D
	db $00
	db $6D
	db $0C
	db $ED
	db $03
	db $28
	db $43
	db $90
	db $64
	db $59
	db $43
	db $39
	db $44
	db $0B
	db $4E
	db $59
	db $43
	db $39
	db $44
	db $08
	db $0C
	db $59
	db $43
	db $39
	db $44
	db $0D
	db $0C
	db $46
	db $40
	db $6E
	db $40
	db $07
	db $2E
	db $00
	db $00
	db $50
	db $80
	db $15
	db $80
	db $06
	db $48
	db $00
	db $47
	db $00
	db $00
        db $18
        db $48
        db $00
        db $03
        db $EC
        db $8D
        db $02
        db $02
	db $FD
	db $43
	db $03
	db $00
	db $C3
	db $9E
	db $26
	db $00
	db $91
	db $79
	db $00
	db $00
	db $0D
	db $8F
	db $02
	db $02
        ENDM
MACRO ENCRYPT
	db $01
	db $48
	db $00
	db $00
	db $01
	db $4B
	db $18
	db $47
        db $C0
        db $45
        db $00
        db $03
	db $f1
	db $C5
	db $03
	db $08
	ENDM
MACRO LOADSTOREPARTYAMOUNT
        db $02
        db $49
        db $08
        db $78
        db $02
        db $49
        db $08
        db $60
        db $70
        db $47
	db $00
	db $00
        db $DC
        db $E8
        db $02
        db $02
        db $F4
        db $91
        db $02
        db $02
	ENDM
MACRO MEMCPYSETUP
	db $00
	db $B5
	db $02
	db $48
	db $02
	db $49
	db $03
	db $4A
	db $0B
	db $DF
	db $05
	db $E0
        db $EC
        db $8D
        db $02
        db $02
	db $C0
	db $45
	db $00
	db $03
	db $08
	db $00
	db $00
	db $04
	ENDM
MACRO SRFIX
	db $01
	db $4D
	db $01
	db $4E
	db $00
	db $27
	db $70
	db $47
	db $70
	db $17
	db $00
	db $03
	db $A9
	db $33
	db $00
	db $03
	ENDM
MACRO STRUCTURETABLEA
        db $0C
        db $0C
        db $18
        db $24
        db $18
        db $24
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $18
        db $24
        db $0C
        db $0C
        db $24
        db $18
        db $18
        db $24
        db $0C
        db $0C
        db $24
        db $18
	ENDM
MACRO STRUCTURETABLEE
        db $18
        db $24
        db $0C
        db $0C
        db $24
        db $18
        db $18
        db $24
        db $0C
        db $0C
        db $24
        db $18
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $24
        db $18
        db $24
        db $18
        db $0C
        db $0C
	ENDM
MACRO STRUCTURETABLEG
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $0C
        db $0C
        db $18
        db $24
        db $18
        db $24
        db $0C
        db $0C
        db $18
        db $24
        db $18
        db $24
        db $0C
        db $0C
        db $18
        db $24
        db $18
        db $24
	ENDM
MACRO STRUCTURETABLEM
        db $24
        db $18
        db $24
        db $18
        db $0C
        db $0C
        db $24
        db $18
        db $24
        db $18
        db $0C
        db $0C
        db $24
        db $18
        db $24
        db $18
        db $0C
        db $0C
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
	ENDM
MACRO SUBSTRUCTURECPY
	db $20
	db $38
	db $0D
	db $4D
	db $00
	db $68
	db $18
	db $21
	db $07
	db $00
	db $06
	db $DF
	db $38
	db $00
	db $00
	db $28
	db $03
	db $D5
	db $10
	db $31
	db $00
	db $29
	db $00
	db $D5
	db $18
	db $31
	db $0D
	db $44
	db $03
	db $27
	db $07
	db $48
	db $20
	db $30
	db $07
	db $49
	db $07
	db $4A
	db $2E
	db $78
	db $89
	db $19
	db $0B
	db $DF
	db $00
	db $30
	db $18
	db $35
	db $01
	db $3F
	db $F6
	db $D5
	db $08
	db $E0
	db $00
	db $00
	db $3C
	db $8E
	db $02
	db $02
	db $EC
	db $8D
	db $02
	db $02
	db $E0
	db $45
	db $00
	db $03
	db $03
	db $00
	db $00
	db $04
	ENDM
MACRO TEMPCELEBI
        db $00
        db $00
        db $00
        db $00
        db $91
        db $79
        db $00
        db $00
        db $5E
        db $7A
        db $97
        db $80
        db $FF
        db $00
        db $00
        db $00
        db $00
        db $00
        db $01
        db $02
        db $51
        db $8A
        db $64
        db $FF
        db $00
        db $00
        db $00
        db $00
        db $CB
        db $18
        db $00
        db $00
        db $FB
        db $00
        db $00
        db $00
        db $30
        db $02
        db $00
        db $00
        db $00
        db $46
        db $00
        db $00
        db $5D
        db $00
        db $69
        db $00
        db $D7
        db $00
        db $DB
        db $00
        db $19
        db $14
        db $05
        db $19
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $FF
        db $0A
        db $A1
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
        db $00
	ENDM

	Mystery_Event

	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR DataStart
	GBAPTR DataEnd

DataStart:
	db IN_GAME_SCRIPT
	db 24,11 ; petalburg gym
	db 2   ; norman
	GBAPTR NormanScriptStart
	GBAPTR NormanScriptEnd

	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStart

	db END_OF_CHUNKS


GoSeeYourFather:
	Text_EN "A bright flash was seen in\n"
	Text_EN "PETALBURG WOODS!\p"
	Text_EN "Ever since, a rare Pokemon has been\n" 
	Text_EN "seen healing thin trees.@"



NormanScriptStart:
	setvirtualaddress NormanScriptStart

	           virtualmsgbox Poor
		   waitmsg
		   db $6E, $17, $8
	           release

		   compare LASTRESULT, 0

		   virtualgotoif 1, Changemind	

		   virtualgotoif 5, CelebiEvent		   
			  			

			   TEMPCELEBI
			   STRUCTURETABLEG
			   STRUCTURETABLEA
			   STRUCTURETABLEE
			   STRUCTURETABLEM
			   LOADSTOREPARTYAMOUNT
			   COLORNG
			   MEMCPYSETUP
			   SUBSTRUCTURECPY
			   CHECKSUM
			   ENCRYPT
			   CALCSTATS
			   CAPTURECELEBI
			   CELEBICOPY1
			   SRFIX
	   
   


CelebiEvent:
		   db $43

		   compare LASTRESULT, 5

		   virtualgotoif 2, NoRoom

		   copyvar $800B, $800D

		   callasm $02028E9D

		   callasm $02028EB1
	
		   callasm $02028F91

		   callasm $02028FA1

		   callasm $02028FD5

		   callasm $02028FED

		   special $13D

		   sound $13
		
		   waitstate

		   playmoncry $FB, $0

		   virtualmsgbox Celebi

		   waitmsg

                   waitmoncry

		   waitkeypress

		   release

		   special $138
		
		   playsong $0166, $0

                   waitmoncry

		   waitstate

		   db $43

		   comparevar LASTRESULT, $800B		   
		   
		   virtualgotoif 3, FlewAway

		   virtualgotoif 2, Catch




Catch:
                   callasm $02028FB1
		   killscript



NoRoom:
	virtualmsgbox NoSpace
	waitmsg
	waitkeypress
	release
	end

Changemind:
	virtualmsgbox Change
	waitmsg
	waitkeypress
	release
	end


NoRoomToGive:
	virtualloadpointer PartyFull
	setbyte 3
	killscript		

FlewAway:
	db $97, $01
	db $97, $00
	virtualmsgbox Flew
	waitmsg
	waitkeypress
	release
        killscript

PartyFull:
	Text_EN "You need space in your party\n"
	Text_EN "to play this MYSTERY EVENT!@"
Poor:
	Text_EN "A Pokemon is rustling around\n"
	Text_EN "in this tree.\p"
	Text_EN "Would you like to investigate?@"
Change:
	Text_EN "Maybe another time.@"
Flew:
    Text_EN "The CELEBI flew away!@"

NoSpace:
	Text_EN "You need space in your party\n"
	Text_EN "to capture CELEBI!@"

Celebi:
	Text_EN "CELEBI: Biyoo!@"



NormanScriptEnd:


PreloadScriptStart:
	setvirtualaddress PreloadScriptStart
	

		   db $43

		   compare LASTRESULT, 5

		   virtualgotoif 2, NoRoomToGive	

		   virtualloadpointer GoSeeYourFather

		   setbyte 2

		   end





DataEnd:
	EOF
