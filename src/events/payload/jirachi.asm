INCLUDE "../macros.asm"
INCLUDE "../constants/items.asm"
INCLUDE "../constants/scriptcommands.asm"
  	
MACRO CHANNELRNG
	dw $B500
	dw $B4FF
	dw $4838
	dw $6800
	dw $4C34
	dw $4D35
	dw $2100
	dw $0000
	dw $2301
	dw $270E
	dw $4360
	dw $4428
	dw $0F82
	dw $4093
	dw $4319
	dw $4039
	dw $290E
	dw $D1F5
	dw $2100
	dw $4360
	dw $4428
	dw $3101
	dw $2905
	dw $D1FA
	dw $492E
	dw $0C02
	dw $428A
	dw $D802
	dw $4360
	dw $4428
	dw $E00C
	dw $4360
	dw $4428
	dw $492B
	dw $0C02
	dw $428A
	dw $D802
	dw $4360
	dw $4428
	dw $E003
	dw $4360
	dw $4428
	dw $4360
	dw $4428
	dw $4360
	dw $4428
	dw $0C01
	dw $4360
	dw $4428
	dw $0C02
	dw $4360
	dw $4428
	dw $0C03
	dw $4E25
	dw $0034
	dw $2B08
	dw $D501
	dw $2501
	dw $E000
	dw $2500
	dw $404C
	dw $4054
	dw $42AC
	dw $D001
	dw $4D1C
	dw $406A
	dw $0412
	dw $431A
	dw $4B16
	dw $601A
	dw $0409
	dw $4331
	dw $0C09
	dw $80D9
	dw $4C11
	dw $4D12
	dw $4360
	dw $4428
	dw $0FC1
	dw $22A9
	dw $440A
	dw $845A
	dw $4360
	dw $4428
	dw $0FC1
	dw $2280
	dw $408A
	dw $4360
	dw $4428
	dw $0FC1
	dw $03C9
	dw $430A
	dw $490F
	dw $430A
	dw $0000
	dw $0000
	dw $3344
	dw $805A
	dw $2600
	dw $2200
	dw $4360
	dw $4428
	dw $0EC1
	dw $40B1
	dw $430A
	dw $3605
	dw $2E19
	dw $DDF7
	dw $605A
	dw $E043
	ENDM
MACRO FINALSTORAGE
	dd $030045C0
	dd $0803b125
	dd $0803c5f1
	dd $0803b1b9
	dd $02028EEC
	dd $04000014
	dd $00000004
	dd $03004360
	dd $0202E8DA
	ENDM
MACRO FIXJIRACHIANDCOPY
	dw $B5F0
	dw $467C
	dw $3409
	dw $46A6
	dw $4812
	dw $4B13
	dw $4718
	dw $4911
	dw $8388
	dw $467C
	dw $3409
	dw $46A6
	dw $480E
	dw $4B10
	dw $4718
	dw $467C
	dw $3409
	dw $46A6
	dw $480B
	dw $4B0E
	dw $4718
	dw $480A
	dw $490D
	dw $4A0E
	dw $DF0B
	dw $BDF0
	ENDM	
MACRO CAPTUREJIRACHI
	dw $B4FF
	dw $480B
	dw $490D
	dw $4A0C
	dw $2664
	dw $4B0D
	dw $781F
	dw $4377
	dw $4439
	dw $DF0B
	dw $3012
	dw $3112
	dw $321B
	dw $DF0B
	dw $BCFF
	dw $4770
	ENDM
MACRO MEMCOPYJIRACHI
	dw $3B44
	dw $0018
	dw $4910
	dw $4A11
	dw $DF0B
	dw $3820
	dw $4D12
	dw $6800
	dw $2118
	dw $0007
	dw $0000
	dw $DF06
	dw $0038
	dw $2800
	dw $D503
	dw $3110
	dw $2900
	dw $D500
	dw $3118
	dw $440D
	dw $782E
	dw $480D
	dw $2703
	dw $240C
	dw $2503
	dw $490A
	dw $4A06
	dw $0033
	dw $402B
	dw $4363
	dw $4419
	dw $DF0B
	dw $08B6
	dw $3F01
	dw $D5F5
	dw $E00C
	dd $030045C0
	dd $04000008
	dd $04000003
	dd $02028EEC
	dd $02028F3C
	dd $030045E0
	dd $02028F0C
	ENDM
MACRO MOVEPLAYERDOWNRIGHT
	db $08
	db $0B
	db $FE
	ENDM
MACRO MOVEPLAYERQUESTION
	db $57
	db $12
	db $FE
	ENDM
MACRO MOVEPLAYERRIGHTFACEUP
	db $0B
	db $01
	db $14
	db $14
	db $FE
	ENDM
MACRO RETURN
	dw $BCFF
	dw $BD00
	ENDM
MACRO STORAGETABLE
	dd $000343FD
	dd $00269EC3
	dd $02028EEC
	dd $03004818
	dd $00004000
	dd $0000547A
	dd $00008000
	dd $00002000
	ENDM
MACRO STRUCTURETABLEG
        db $E4
        db $B4
        db $D8
        db $9C
        db $78
        db $6C
        db $E1
        db $B1
        db $D2
        db $93
        db $72
        db $63
        db $C9
        db $8D
        db $C6
        db $87
        db $4E
        db $4B
        db $39
        db $2D
        db $36
        db $27
        db $1E
        db $1B
	ENDM
MACRO TEMPJIRACHI
	dd $00000000
	dd $00009CBA
	dd $BBCCC3C4
	dd $FFC3C2BD
	dd $02020000
	dd $C8BBC2BD
	dd $00C6BFC8
	dd $0000A0DB
	dd $00000199
	dd $0002625A
	dd $00006400
	dd $005E0111
	dd $015B0007
	dd $140F0A0A
	dd $00000000
	dd $00000000
	dd $00000000
	dd $2080FF00	
	dd $00000000
	dd $00000000
	ENDM

	Mystery_Event

	db CHECKSUM_CRC
	dd 0 ; checksum placeholder
	GBAPTR DataStart
	GBAPTR DataEnd

DataStart:
	db IN_GAME_SCRIPT
	db 0,6 ; mossdeep
	db 8   ; girl near rock
	GBAPTR NormanScriptStart
	GBAPTR NormanScriptEnd


	db PRELOAD_SCRIPT
	GBAPTR PreloadScriptStart

	db END_OF_CHUNKS


GoSeeYourFather:
	Text_EN "The WHITE ROCK in MOSSDEEP has\n"
	Text_EN "been glowing...@"




NormanScriptStart:
	setvirtualaddress NormanScriptStart

		   db $5A

	           virtualmsgbox Wish

		   waitmsg

		   db $6E, $17, $8

	           release

	   	   compare LASTRESULT, 0

		   virtualgotoif 5, checkspot

Changemind:
	virtualmsgbox Change
	waitmsg
	waitkeypress
	release
	end	   


			   CHANNELRNG
			   STORAGETABLE
			   TEMPJIRACHI
			   STRUCTURETABLEG
			   MEMCOPYJIRACHI
			   RETURN
			   FIXJIRACHIANDCOPY
			   CAPTUREJIRACHI
			   FINALSTORAGE
			   MOVEPLAYERDOWNRIGHT
			   MOVEPLAYERRIGHTFACEUP
			   MOVEPLAYERQUESTION
checkspot:

	           virtualmsgbox Youdo

		   waitmsg

		   waitkeypress

		   release

		   db $43

		   compare LASTRESULT, 5

		   virtualgotoif 2, NoRoom

		   copyvar $800B, $800D
		   
		   getplayerpos $8000, $8001
		
		   compare $8000, $37

		   virtualgotoif 5, Movement1

Movement0:

		   
                   applymovement $FF, $02029034

                   waitmovement $FF

Movement1:



                   applymovement $FF, $02029037

battle:
                   waitmovement $FF

		   pause $10

		   special $13B	   

		   sound $83

		   pause $10

		   pause $10

                   applymovement $FF, $0202903C

                   waitmovement $FF

		   sound $15

		   virtualmsgbox Pokemon

		   waitmsg

		   waitkeypress

		   release

		   playmoncry $199, $0

		   virtualmsgbox Jirachi

		   waitmsg

		   waitkeypress

		   release

		   callasm $02028DF1

		   callasm $02028FBD

                   waitmoncry

		   special $139
		
		   playsong $01CE, $0

                   waitstate

		   db $43

		   comparevar LASTRESULT, $800B		   
		   
		   virtualgotoif 3, FlewAway


Catch:
                   callasm $02028FF1
		   killscript


NoRoom:
	virtualmsgbox NoSpace
	waitmsg
	waitkeypress
	release
	end


FlewAway:
	db $97, $01
	db $97, $00
	virtualmsgbox Flew
	waitmsg
	waitkeypress
	release
	end

Wish:
	Text_EN "Do you have a wish?@"

Youdo:
	Text_EN "You do? Then leave a wish tag\n"
	Text_EN "on the WHITE ROCK!@"
Change:
	Text_EN "Really? I thought everyone had\n"
	Text_EN "a wish...@"
Flew:
        Text_EN "The JIRACHI flew away!@"
NoSpace:
	Text_EN "You can’t make a wish with a\n"
	Text_EN "full party!@"

Pokemon:
	Text_EN "Huh? A Pokémon?@"
Jirachi:
	Text_EN "Wiiish!@"


NormanScriptEnd:


PreloadScriptStart:
	setvirtualaddress PreloadScriptStart
	

		   virtualloadpointer GoSeeYourFather

		   setbyte 2

		   end





DataEnd:
	EOF
