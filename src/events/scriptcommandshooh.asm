MACRO callasm
	db $23
	dd \1
	ENDM
MACRO setweather
	db $A4
	db \1
	ENDM
MACRO doweather
	db $A5
	ENDM
MACRO clearflag
	db $2A
	dw \1
	ENDM
MACRO fadeout
	db $37
        dw \1
	ENDM
MACRO checkitemtype
	db $48
	dw \1
	ENDM
MACRO hidesprite
	db $53
	dw \1
	ENDM
MACRO sound
       db $2F
       dw \1
       ENDM
MACRO special
       db $25
       dw \1
       ENDM
MACRO pause
       db $28
       dw \1
       ENDM
MACRO applymovement
        db $4F
        db \1 
        dw \2
        ENDM
MACRO waitmovement
        db $51
        db \1 
        ENDM
MACRO playsong
	db $33
	dw \1
	db \2
	ENDM
MACRO waitstate
           db $27
           ENDM

MACRO warp
	db $3F
	db \1
	db \2
	db \3
	db \4
        db \5
	ENDM
MACRO buffernumber
	db $83
	db \1
	dw \2
	ENDM
MACRO closeonkeypress
	db $68
	ENDM
MACRO EVENTLEGAL
	db $02
	db $48
	db $4F
	db $21
	db $03
	db $4B
	db $03
	db $A2
	db $18
	db $47
	db $70
	db $47
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
MACRO GAMELANG
        db $02
        db $48
        db $03
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
        db $01
        db $00
        db $00
        db $00
        ENDM
MACRO TID
	db $00
	db $02
	db $49
	db $00
	db $20
	db $08
	db $80
	db $70
	db $47
	db $00
	db $00
	db $AE
	db $4E
	db $02
	db $02
	ENDM
MACRO fadescreen
	db $97
	db \1
	ENDM
MACRO doanimation
	db $9C
	dw \1
	ENDM
MACRO SPRITE
	db $00
	db $06
	db $48
	db $07
	db $4D
	db $03
	db $4E
	db $00
	db $21
	db $00
	db $22
	db $00
	db $23
	db $02
	db $4F
	db $18
	db $24
	db $38
	db $47
	db $00
	db $00
	db $44
	db $21
	db $37
	db $08
	db $DD
	db $0B
	db $00
	db $08
	db $98
	db $7D
	db $00
	db $03
	db $0C
	db $49
	db $00
	db $30
	ENDM
