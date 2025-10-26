INCLUDE "../macros.asm"
INCLUDE "../constants/items.asm"
INCLUDE "../constants/scriptcommands.asm"

MACRO EVENTLEGAL2
	db $00
	db $02
	db $48
	db $4F
	db $21
	db $02
	db $4B
	db $03
	db $A2
	db $18
	db $47
	db $00
	db $00
	db $C0
	db $45
	db $00
	db $03
	db $ED
	db $D2
	db $03
	db $08
	db $10
	db $00
	db $00
	db $00
	ENDM
MACRO GAMEORIGIN
        db $02
        db $48
        db $25
        db $21
        db $02
        db $4B
        db $03
        db $A2
        db $18
        db $47
        db $00
        db $00
        db $C0
        db $45
        db $00
        db $03
        db $ED
        db $D2
        db $03
        db $08
        db $03
        db $00
        db $00
        db $00
        ENDM
MACRO METLOCATION
        db $02
        db $48
        db $23
        db $21
        db $02
        db $4B
        db $03
        db $A2
        db $18
        db $47
        db $00
        db $00
        db $C0
        db $45
        db $00
        db $03
        db $ED
        db $D2
        db $03
        db $08
        db $D3
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
	db 24,21 ; Abandoned Ship
	db 1   ; item in bottom right room
	GBAPTR NormanScriptStart
	GBAPTR NormanScriptEnd



	db MIX_RECORDS_ITEM
	db 1  ; ???
IF REGION == REGION_DE
	db 5  ; distribution limit from German debug ROM
ELSE
	db 30 ; distribution limit from English release
ENDC
	dw EON_TICKET



	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStart

	db END_OF_CHUNKS


GoSeeYourFather:
	Text_DE "Lauf und besuche deinen Vater in der\n"
	Text_DE "ARENA von BLÜTENBURG CITY.@"

	Text_EN "A magificent rainbow has been seen.\n"
	Text_EN "above MT. PYRE.@"



NormanScriptStart:
	setvirtualaddress NormanScriptStart

		   checkitemroom SACRED_ASH, 1

		   compare LASTRESULT, 0

		   virtualgotoif 1, NoRoomToGive




		   setwildbattle $FA, $46, $00B3
		   
		   copyvarifnotzero $8000, SACRED_ASH

		   copyvarifnotzero $8001, 1

		   checkitemtype $0001

		   callstd 1

		   closeonkeypress

		   fadeout $3

		   special $13D

		   sound $50

		   waitstate

		   special $13B
	 	   
		   sound $5E

		   waitstate

		   pause $28

		   special $13B

		   waitstate

		   pause $28

		   special $13B

		   waitstate

		   pause $28

		   callasm $2028E49
		   
		   callasm $2028E5F
		
		   callasm $2028E77
		   
		   playmoncry $FA, $0

		   special $13D

		   sound $50

		   virtualmsgbox Hooh

		   waitmsg

		   waitkeypress

		   release

		   waitmoncry	

		   pause $28

		   special $139
		
		   playsong $0166, $0


		
		   
                  	   

.delete_script
	killscript


		
		   EVENTLEGAL2
		   METLOCATION
		   GAMEORIGIN


NoRoomToGive:
		   virtualmsgbox ItemsPocketIsFull
		   waitmsg
		   waitkeypress
		   release
		   end



ItemsPocketIsFull:
	Text_DE "Lauf und besuche deinen Vater in der\n"
	Text_DE "ARENA von BLÜTENBURG CITY.@"

	Text_EN "The Items Pocket in your Bag\n"
	Text_EN "is full.@"

Hooh:
	Text_DE "Lauf und besuche deinen Vater in der@"

	Text_EN "Ho-Oh: Shaoooh!@"








NormanScriptEnd:


PreloadScriptStart:
	setvirtualaddress PreloadScriptStart
	
		   clearflag $0431

		   virtualloadpointer GoSeeYourFather

		   setbyte 2

		   end





DataEnd:
	EOF
  	
