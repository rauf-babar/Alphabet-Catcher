[org 0x0100]

	jmp start

	; --------- DATA DECLARATION ----------
	
	storage: times 2000 dw 0      ; Storage for cmd screen
	
	alphabetString:   	  ; ASCII Combination to display word "ALPHABET"
		db 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0x20, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC,0x20, 0xDC, 0xDC, 0xDC, 0xDC,0xDC,0xDC,0xDC,0
		db 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0x20,0x20, 0xCD, 0xCD, 0xBB, 0xDB,0
		db 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0x20,0x20, 0x20, 0x20, 0xBA, 0xDB,0
		db 0xDB, 0xC9, 0xCD, 0xBB, 0xDB, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xC9, 0xCD, 0xCD, 0x20, 0x20, 0xDB, 0xC9, 0xCD, 0xBB, 0xDB, 0x20, 0xDB, 0xC9, 0xCD, 0xBB, 0xDB, 0x20, 0xDB, 0xC9, 0xCD, 0xCD, 0xDB, 0x20, 0xDB, 0xC9, 0xCD, 0xCD, 0x20,0x20, 0x20, 0x20, 0xBA, 0xDB,0
		db 0xDB, 0xBA, 0x20, 0xBA, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xBA, 0x20, 0xBA, 0xDB, 0x20, 0xDB, 0xBA, 0x20, 0xBA, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0xDC, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0xDC, 0xDC,0x20, 0x20, 0x20, 0xBA, 0xDB,0

	CatcherString:    	  ; ASCII Combination to display word "CATCHER"
		db 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC,0x20, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0
		db 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xCD, 0xCD, 0xBB, 0xDB, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0x20,0x20, 0xBA, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0
		db 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0x20, 0x20, 0xBA, 0xDB, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0x20, 0xDB, 0xDB, 0xDB, 0xDB, 0x20,0x20, 0xBA, 0xDB, 0xDB, 0xDB, 0xDB, 0xDB, 0
		db 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xC9, 0xCD, 0xBB, 0xDB, 0x20, 0x20, 0x20, 0xBA, 0xDB, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xBA, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xC9, 0xCD, 0xBB, 0xDB, 0x20, 0xDB, 0xC9, 0xCD, 0xCD, 0x20,0x20, 0xBA, 0xDB, 0x20, 0xDB, 0XDC, 0x20, 0
		db 0xDB, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDB, 0xBA, 0x20, 0xBA, 0xDB, 0x20, 0x20, 0x20, 0xBA, 0xDB, 0x20, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDB, 0xBA, 0x20, 0xBA, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0xDC, 0xDC,0x20, 0xBA, 0xDB, 0x20, 0xDE, 0xDB, 0xDC, 0
		
	SingleString:    	 ; ASCII Combination to display word "SINGLE"
		db 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC,0
		db 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0xDF, 0xDC, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0xDC, 0xDC, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0x20, 0xDB, 0xDC, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDB, 0x20, 0x20, 0xDF, 0xDC, 0xDF, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0xDC, 0xDC, 0xDB,0
		db 0xDC, 0xDC, 0xDB, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDF, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0x20, 0xDF, 0xDC, 0xDC, 0
		
	MultiplayerString:   ; ASCII Combination to display word "PLAYER"
		db 0xDC, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0xDC, 0x20,0xDC, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC,0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC,0
		db 0xDB, 0x20, 0xDF, 0xDC, 0xDF, 0x20, 0xDB, 0x20,0xDB, 0x20, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20,0x20, 0xDB, 0x20, 0xDB, 0xDC, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDB, 0x20, 0x20, 0xDF, 0xDC, 0xDF, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0xDC, 0xDC, 0xDB,0
		db 0xDB, 0x20, 0x20, 0x20, 0x20, 0x20, 0xDB, 0x20,0xDB, 0xDC, 0xDC, 0xDB, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0x20, 0xDB, 0x20, 0x20,0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0xDC, 0xDC, 0x20, 0xDB, 0x20, 0xDF, 0xDC, 0xDC, 0
	
	ExitString:          ; ASCII Combination to display word "EXIT"
		db 0xDC, 0xDC, 0xDC, 0x20, 0xDC, 0x20, 0x20, 0x20, 0x20, 0xDC, 0x20, 0x20, 0xDC, 0x20, 0xDC, 0xDC, 0xDC, 0xDC, 0xDC, 0
		db 0xDB, 0xDC, 0xDC, 0x20, 0x20, 0xDF, 0xDC, 0xDC, 0xDF, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0
		db 0xDB, 0xDC, 0xDC, 0x20, 0xDC, 0xDF, 0x20, 0x20, 0xDF, 0xDC, 0x20, 0x20, 0xDB, 0x20, 0x20, 0x20, 0xDB, 0x20, 0x20, 0
	
	ScoreString:     db 'SCORE : ',
	MissedString:    db 'MISSED ALPHABETS: ',
	TimeString:      db 'Time: '
	WinString:       db 'YOU WON!!'
	GameOverString:  db 'GAME OVER'
	StatsString :    db 'GAME STATISTICS :'
	PointsScoredStr: db 'Points Scored :'
	PointsMissedStr: db 'Points Missed :'
	timeelapsedStr:  db 'Time Elapsed  :'
	GamePlayed:      db 'Games Played :'
	GameWon:         db 'Games Won    :'
	GamesLost:       db 'Games Lost   :'
	PlayAgainStr:    db 'Play Again ?'
	ExitGameStr:     db 'Exit Game'
	
	numberOfAlphabets: dw 6
	terminateLoops:	   dw 12
	
	CharColumns:  times 20 dw -1          ; array of Columns
	CharOffsets:  times 20 dw -1          ; Array for offsets initialized to -1 (indicates available slots)
	CharSpeeds:   times 20 dw  0          ; Array for speeds initialized to 0
	Characters:   times 20 dw -1          ; Array for characters initialized to -1 (indicates available slots)
	
	rand:          dw 0       ; Seed for random number generator
	randnum:       dw 0       ; Stores the generated random number
							 
	speedArrow:    dw 0       ; maintaining Speed of left & right key
	speedADKeys:   dw 0       ; maintaining Speed of A & D key
	speedVal:      dw 1       ; speed of bar movement
	shiftPressed:  dw 0       ; flag for shift key
	pressedOnce:   dw 0       ; avoiding buffer
	speedInc:      dw 0       ; speed Increase for 8+ Score
	timeTick:      dw 0       ; timer counter
	timeSec:       dw 0       ; time Seconds
	timeMin:       dw 0       ; time Minutes
	
	Options:	   dw 0       ; Menu Screen Option Selection
	Esc_Key:	   dw 0       ; Escape Key Flag
	ChoiceDone:    dw 0       ; Menu Selection Done using Enter Key
	Score:   	   dw 0       ; Game Score
	Fall_Score:    dw 0       ; Missed alphabets 
	Life_Limit:    dw 10      ; Life limit for Game
	winningScore:  dw 10      ; Score Needed to win
	GameWonFlag:   dw 0       ; Game Won
	PlayAgain_:    dw 0       ; Play Again Option
	TotalGames:    dw 0       ; No of Games played
   	TotalWon:      dw 0       ; No of Games won
	TotalLost:     dw 0       ; No of Games lost
	Catcher1:      dw 3918    ; Catcher for 1st player
	Catcher2:      dw 3958    ; Catcher for 2nd plaer
	oldkbisr:      dd 0       ; Save Old kbisr interrupt
	oldtimer:      dd 0       ; Save Old timer interrupt
	CS_Segment:    dw 0       ; Store Cs
	
	; --------- SUBROUTINES ----------
	
	ResetData:                       ; Subroutine to reset data for restart game
		mov word [rand], 0
		mov word [randnum], 0
		mov word [Options], 0
		mov word [Esc_Key], 0
		mov word [ChoiceDone], 0
		mov word [Score], 0
		mov word [Fall_Score], 0
		mov word [GameWonFlag], 0
		mov word [Life_Limit], 10
		mov word [winningScore], 10
		mov word [speedArrow], 0      
		mov word [speedADKeys], 0      
		mov word [speedVal], 1      
		mov word [shiftPressed], 0
		mov word [pressedOnce], 0
		mov word [speedInc], 0
		mov word [timeMin], 0
		mov word [timeSec], 0
		mov word [Catcher1] , 3918
		mov word [Catcher2] , 3958
		push cs
		pop word [CS_Segment]
		
		mov si, 0
		mov cx, [numberOfAlphabets]
		reset:
			mov word [CharColumns + si], -1
			mov word [CharOffsets + si], -1
			mov word [CharSpeeds + si], 0
			mov word [Characters + si], -1
			add si, 2
			loop reset
		ret
	
	saveScreen:                 ; Subroutine to save cmd prompt screen
		pusha
		push es
		push ds
		
		push ds                 ; point es to ds
		pop es
		mov di, storage         ; point di to memory storage
		push 0xb800             ; point ds to video memory
		pop ds
		mov si, 0               ; start of memory
		mov cx, 2000            ; count of words on Screen
		cld
		rep movsw               ; store data
		
		pop ds
		pop es
		popa
		ret
	
	restoreScreen:             ; Subroutine to load cmd prompt screen
		pusha
		push es
		push ds
		
		mov di, 0               ; start of memory
		push 0xb800
		pop es                  ; point es to video memory
		mov si, storage         ; point si to memory storage
		mov cx, 2000            ; count of words on Screen
		cld
		rep movsw               ; load data
		
		pop ds
		pop es
		popa
		ret
	
	Delay:
		mov cx,450              ; Delay Printing
		mydelay:
			mov bx,550      
			mydelay1:
				dec bx
				jnz mydelay1
			loop mydelay
		ret
	
	kbisr:              ; keyboard interrupt service routine
		push bp
		mov bp, sp
		pusha
		push es
		push ds
		
		in al, 0x60       ; get key 
		
		cmp al, 0x01      ; Escape Key 
		je Exit_Program
		
		cmp word [shiftPressed], 0     ; if shift have not been pressed
		jne shiftAlreadyPressed
			cmp al, 0x2A     		   ; left shift key pressed
			je shiftKey_P			   
			cmp al, 0x36     		   ; right shift key pressed
			je shiftKey_P			   
									   
		shiftAlreadyPressed:	
		cmp al, 0xAA         		   ; if shift key is releasd
		je shiftKey_R
		cmp al, 0xB6
		je shiftKey_R
		
		cmp word [Options],1
		jne skip_AD
		cmp al, 0x9E      ; A Key Released
		je ADKey_R
		cmp al, 0xA0      ; D Key Released
		je ADKey_R
		
		cmp word [speedADKeys], 0      ; if A and D key already pressed
		jne skip_AD
		cmp al, 0x1E      ; A Key Pressed
		je A_Key_P
		cmp al, 0x20      ; D Key Pressed
		je D_Key_P
		
		skip_AD:
		
		cmp al, 0xCD     			   ; Right Move Key Released
		je arrowKey_R			          
		cmp al, 0xCB     			   ; Left Move Key Released
		je arrowKey_R   
		
		cmp word [speedArrow], 0       ; if no arrow key already pressed
		jne skipArrowKey
		cmp al, 0x4D     			   ; Right Move Key Pressed
		je rightKey_P			          
		cmp al, 0x4B     			   ; Left Move Key Pressed
		je LeftKey_P  
		
		skipArrowKey:
		
		cmp word [pressedOnce], 1      ; ignore buffer
		jne BufferNotOn
		cmp word [speedArrow], 0       ; if arrow key pressed
		jne shiftCall
		BufferNotOn:
		inc word [pressedOnce]         ; turn buffer On
		cmp word [speedADKeys], 0      ; if A and D key pressed
		jne shiftCall
		
		jmp exit_kbisr
		
		Exit_Program:
			mov word [bp + 2], PlayAgain
			mov ax, [CS_Segment]
			mov word [bp + 4], ax
			jmp exit_kbisr
			
		shiftKey_P:
			mov word [speedVal], 2         ; increase bar speed
			mov word [shiftPressed], 1     ; turn on shift flag
			jmp exit_kbisr
			
		shiftKey_R:
			mov word [speedVal], 1         ; decrease bar speed
			mov word [shiftPressed], 0     ; turn off shift flag
			jmp exit_kbisr 
		
		rightKey_P:
			mov word [speedArrow], 2        ; move to speed of arrow
			mov word [pressedOnce], 0       ; turn off buffer flag
			jmp shiftCall
			
		LeftKey_P:
			mov word [speedArrow], -2       ; move to speed of arrow
			mov word [pressedOnce], 0       ; turn off buffer flag
			jmp shiftCall
		
		arrowKey_R:
			mov word [speedArrow], 0       ; reset speed of Arrow
			mov word [pressedOnce], 0      ; turn off buffer flag
			jmp exit_kbisr
			
		D_Key_P:
			mov word [speedADKeys], 2       ; move to speed of A and D keys
			jmp shiftCall
		
		A_Key_P:
			mov word [speedADKeys], -2      ; move to speed of A and D keys
			jmp shiftCall
		
		ADKey_R:
			mov word [speedADKeys], 0        ; reset speed of A and D Arrow
			jmp exit_kbisr
		
		shiftCall:
		mov cx, [speedVal]
		
		ShiftLoop:
			call ShiftCatcher
			loop ShiftLoop
		
		exit_kbisr:

		pop ds
		pop es
		popa
		pop bp
		jmp far [cs:oldkbisr]                 ; jump to original
		
	correctOffset:
		push bp
		mov bp, sp
		pusha
		
		mov bx, [bp + 4]   ; get catcher location
		mov dx, [bx]       ; get catcher value
		
		cmp dx, 4000
		jne check_startEnd
			sub word [bx], 160  ; start of line 
		
		check_startEnd:
		cmp dx, 3838
		jne exit_CorrectOffset
			add word [bx], 160  ; end of line 
		exit_CorrectOffset:
		popa
		pop bp
		ret 2
		
	ShiftCatcher:        ; Subroutine to shift catcher
		push bp
		mov bp, sp
		pusha
		push es
		
		push 0xb800
		pop es                             ; point to video memory
		
		cmp word [speedADKeys] , 0         ; if both zero exit 
		jne startShifting
			cmp word [speedArrow], 0
			je exit_ShiftCatcher
		
		startShifting:
		mov bx, [speedArrow]      	   ; store speed of arrow key
		mov si, [Catcher1]        	   ; store location of arrow key 
		add word [Catcher1], bx   	   ; add movement to arrow key
		push Catcher1	               
		call correctOffset        	   ; for wraparound on screen borders
		mov di, [Catcher1]        	   ; store new location of arrow key 
		mov ax, [es:si]                ; store value at old location
		mov word [es:si], 0x0720       ; put blank space 
		mov word [es:di], ax           ; shift box

		
		mov bx, [speedADKeys]     	   ; store speed of arrow key
		mov si, [Catcher2]        	   ; store location of arrow key 
		add word [Catcher2], bx   	   ; add movement to arrow key
		push Catcher2	               
		call correctOffset        	   ; for wraparound on screen borders
		mov di, [Catcher2]        	   ; store new location of A or D key 
		mov ax, [es:si]                ; store value at old location
		mov word [es:si], 0x0720       ; put blank space 
		mov word [es:di], ax           ; shift box

		mov cx, 0xFFFF
	
		exit_ShiftCatcher:
		
		pop es
		popa
		pop bp
		ret 
	
	Tisr:
		
		inc word [timeTick]
		cmp word [timeTick], 18
		jne exit_tisr
		
		mov word [timeTick], 0
		inc word [timeSec]
		cmp word [timeSec], 60
		jne exit_tisr
		mov word [timeSec], 0
		inc word [timeMin]
		
		exit_tisr:
		jmp far [cs:oldtimer]
	
	
	Multiplayer_Setup:
		pusha
			mov word [numberOfAlphabets], 8
			mov word [terminateLoops] , 16
			sub word [Catcher1] , 40
			shl word [Life_Limit], 1
			shl word [winningScore], 1
		popa
		ret
	
	Print_Number:               ; print number subroutine
		push bp
		mov bp, sp
		push ds
		push es
		pusha
		
		push 0xb800
		pop es
		mov ax, [bp + 4]      ; number
		mov bx, 10            ; base 
		mov cx, 0             ; no of digits
		
		next_Digit:
			mov dx, 0
			div bx
			add dl, 0x30      ; convert to ascii
			push dx
			inc cx            ; increment count
			cmp ax, 0
			jnz next_Digit
			
		mov di, [bp + 6]      ; offsset on screen
		
		next_Pos:
			pop dx
			mov dh, [bp + 8]   ; Attribute
			mov [es:di], dx    ; print number
			add di, 2
			loop next_Pos
		
		popa
		pop es
		pop ds
		pop bp
		ret 6
	
	PrintTime:
		push bp
		mov bp,sp
		pusha
		push es
		
		push 0xb800
		pop es
		
		mov di, [bp + 4]           ; store offset
		
		cmp word [timeMin], 9     
		ja printMin          
			push 0x07              ; if less than 9 make it two digit
			push di
			push 0
			call Print_Number
		add di, 2	
		
		printMin:                  ; else print two digit minute
		push 0x07
		push di
		push word [timeMin]
		call Print_Number
		
		add di, 4
		mov word [es:di], 0x073A
		add di, 4
		
		cmp word [timeSec], 9     
		ja printSec         
			push 0x07              ; if less than 9 make it two digit
			push di
			push 0
			call Print_Number
		add di, 2	
		
		printSec:                  ; else print two digit second
		push 0x07
		push di
		push word [timeSec]
		call Print_Number
		
		pop es
		popa
		pop bp
		ret 2
	
	; Function to generate a random number from 0 to n and return it on the stack
	randG:
		push bp                                ; Save base pointer
		mov bp, sp                             ; Set base pointer to the current stack pointer
		pusha                                  ; Save all general-purpose registers
		cmp word [rand], 0                     ; Check if the random generator has been initialized
		jne next                               ; If initialized, jump to next
		
		MOV AH, 00h                            ; Get system timer in CX:DX 
		INT 1AH                                ; Call interrupt to get the current time
		inc word [rand]                        ; Increment the initialization counter
		mov [randnum], dx                      ; Store the current time in randnum as the seed
		jmp next1                              ; Jump to next1 to continue random number generation

		next:
			mov ax, 25173                      ; LCG Multiplier
			mul word  [randnum]                ; DX:AX = LCG multiplier * seed
			add ax, 13849                      ; Add LCG increment value
			; Modulo 65536, AX = (multiplier*seed+increment) mod 65536
			mov [randnum], ax                   ; Update seed with the new random number
		
		next1:
			xor dx, dx                          ; Clear DX before division
			mov ax, [randnum]                   ; Load the random number into AX
			mov cx, [bp+4]                      ; Load the upper limit n from the stack
			inc cx                              ; Increment n to adjust range
			div cx                              ; Divide AX by CX (AX / n)
			
		mov [bp+6], dx                          ; Store the remainder (random number) in the stack
		popa                                    ; Restore all general-purpose registers
		pop bp                                  ; Restore the base pointer
		ret 2                                   ; Return and clean up 2 bytes from the stack
	
	; Subroutine to generate random chars, speed and columns
	GenerateRandomData:
		BaseCase:
		mov si, 0                                         ; Initialize index for offsets
		mov ax, 0                                         ; Flag to check if an available slot was found
		BaseLoop:
		cmp word [CharOffsets+si], -1                     ; Check if the current offset is -1 (available)
		jne skip_Base_loop_condition                      ; If not, skip to the next iteration
		mov ax, 1                                         ; Set flag to indicate an available slot found
		skip_Base_loop_condition:
		add si, 2                                         ; Move to the next offset in the array
		cmp si, [terminateLoops]                          ; Check if we've reached the end of the array
		jne BaseLoop                                      ; If not, continue looping
		cmp ax, 1                                         ; Check if an available slot was found
		jne goToEnd                                       ; If not, jump to the end of the program
		
		; Locate the first available offset
		Locate_First_Available_offset:
		mov si, 0                                         ; Reset index for searching available offsets
		looop:
		cmp word[CharOffsets+si], -1                      ; Check if the current offset is -1 (available)
		je Calculation_Offset                             ; If available, jump to calculate the offset
		add si, 2                                         ; Move to the next offset
		cmp si, [terminateLoops]                          ; Check if we've reached the end of the array
		jne looop                                         ; If not, continue looping
		
		; Calculate a new offset
		Calculation_Offset:
		sub sp, 2                                         ; Allocate space on the stack for the random number
		push 79                                           ; Push 79 as the upper limit for random generation (0 to 79)
		call randG                                        ; Call the random number generator
		pop ax                                            ; Pop the random number from the stack
		mov bx, ax                                        ; Store Column No
		shl ax, 1
		add ax, 320                                       ; move to 3rd row of Screen
		
		; Check if the calculated offset is already taken
		mov di, 0                                         ; Initialize index for checking existing offsets
		check_if_already_taken:
		cmp word[CharColumns + di], bx                     ; Compare the calculated offset with existing offsets
		je Calculation_Offset                              ; If found, recalculate the offset
		add di, 2                                          ; Move to the next offset
		cmp di, [terminateLoops]                           ; Check if we've reached the end of the array
		jne check_if_already_taken                         ; If not, continue checking
		mov [CharOffsets + si], ax
		mov [CharColumns + si], bx
		
		; Select a random speed
		sub sp, 2                                         ; Allocate space on the stack for the random number
		push 2                                            ; Push 2 as the upper limit for random speed (1 to 3)
		call randG                                        ; Call the random number generator
		pop dx                                            ; Pop the random speed from the stack
		inc dx                                            ; Increment speed to ensure it falls within 1 to 3
		add dx, [speedInc]                                ; add increaser
		mov word[CharSpeeds+si], dx                       ; Store the selected speed in the offsets array
		
		; Choose a random ASCII character
		sub sp, 2                                         ; Allocate space on the stack for the random number
		push 26                                           ; Push 26 as the upper limit for ASCII characters (A-Z)
		call randG                                        ; Call the random number generator
		pop dx                                            ; Pop the random character from the stack
		add dx, 65                                        ; Convert to ASCII by adding 65 (A = 65)
		mov byte[Characters+si], dl                       ; Store the selected character in the offsets array
		
		; Generate a random RGB color attribute
		RGB_Color_Generator:
		sub sp, 2                                         ; Allocate space on the stack for the random number
		push 14                                           ; Push 14 as the upper limit for random color values
		call randG                                        ; Call the random number generator
		pop dx                                            ; Pop the random color value from the stack
		inc dx
		mov byte[Characters+si+ 1], dl
		jmp GenerateRandomData                            ; Jump back to the initialization routine to process the next offset
		
		goToEnd:
		ret                                                ; End of the program, return control to the caller
	
	IncreaseSpeeds:
		pusha
		
		mov si, 0
		
		IncSpeed:
			inc word [CharSpeeds + si]
			add si, 2
			cmp si, [terminateLoops]
			jne IncSpeed
		
		popa
		ret
	
	clr_screen:     ; Clear Screen Subroutine
		push es
		push ax
		push cx
		push di
		
		push 0xb800
		pop es
		xor di,di
		mov ax, 0x0720
		mov cx, 2000
		
		cld 
		rep stosw
		
		pop di
		pop cx
		pop ax
		pop es
		ret
	
	printBox:                  ; Helper Function to print Box
		push bp
		mov bp, sp
		pusha
		push es
		
		mov cx, [bp + 4]       ; width
		mov di, [bp + 6]       ; offset
		mov ah, [bp + 8]       ; color
		
		mov al ,0xC9
		mov word [es:di], ax   ; left edge
		add di, 2
		mov al, 0xCD
		cld
		rep stosw               ; top line
		mov al, 0xBB
		mov word [es:di], ax    ; right edge
		mov di, [bp+6]
		add di, 160   
		mov al, 0xBA
		mov word [es:di], ax    ; left side line
		
		mov di, [bp+6]
		add di, 320
		mov al, 0xC8            
		mov word [es:di], ax    ; left lower edge
		add di, 2
		mov cx, [bp + 4]
		mov al, 0xCD
		cld
		rep stosw               ; bottom line
		mov al, 0xBC
		mov word [es:di], ax    ; right lower edge
		   
		sub di, 160
		mov al, 0xBA
		mov [es:di], ax         ; right side line
		
		pop es
		popa
		pop bp
		ret 6
		
		
	PlayAgainScreen:          ; Ending Screen
		push bp
		mov bp,sp
		pusha
		pushf
		push es
		push ds
		
		call Delay            ; Delay Before Ending Game
		call clr_screen       ; Clear Screen
		
		push 0xb800
		pop es                ; point es to video Memory
		
		inc word [TotalGames]    ; increment total games
		
		; Print Box and Display 'Game Over' / 'You Won' String
		push 0x0F
		push 540
		push 11
		call printBox
		
		mov di, 704
		mov cx, 9
		mov si, GameOverString       ; Choose String to print
		mov ah, 0x8C
		cmp word [GameWonFlag], 1
		jne incrementLost
			mov si, WinString
			inc word [TotalWon]      ; Increment game won
			mov ah, 0x8A
			jmp printResult
		
		incrementLost:               ; Increment game lost
			inc word [TotalLost]
		
		printResult:
			lodsb
			stosw
			loop printResult
			
		push 0x0F
		push 1140                   ; Print Box Around
		push 19
		call printBox
		
		mov di, 1304
		mov cx, 17
		mov si, StatsString      ; Print Statistics String
		mov ah, 0x0B
		printStatString:
			lodsb
			stosw
			loop printStatString
		
		mov di, 1782
		mov ax, 0x032D
		mov [es:di], ax
		add di, 2
		mov ax, 0x033E
		mov [es:di], ax
		
		add di, 4
		mov cx, 15
		mov si, PointsScoredStr      ; Print Score String
		mov ah, 0x0F
		printScoreString:
			lodsb
			stosw
			loop printScoreString
		
		add di, 4
 		push 0x07
		push di    
		push word [Score]        ; print Score
		call Print_Number
		
		mov di, 1852
		mov ax, 0x032D
		mov [es:di], ax
		add di, 2
		mov ax, 0x033E
		mov [es:di], ax
		
		add di, 4
		mov cx, 14
		mov si, GamePlayed       ; Print Total Games String
		mov ah, 0x0F
		printTotalGameString:
			lodsb
			stosw
			loop printTotalGameString
		
		add di, 4
 		push 0x07
		push di    
		push word [TotalGames]        ; print Total Games
		call Print_Number
		
		mov di, 2102
		mov ax, 0x032D
		mov [es:di], ax
		add di, 2
		mov ax, 0x033E
		mov [es:di], ax
		
		add di, 4
		mov cx, 15
		mov si, PointsMissedStr     ; Prints Dropped String
		mov ah, 0x0F
		printLifeString:
			lodsb
			stosw
			loop printLifeString
		
		add di, 4
 		push 0x07
		push di    
		push word [Fall_Score]        ; print missed alphabet
		call Print_Number
		
		mov di, 2172
		mov ax, 0x032D
		mov [es:di], ax
		add di, 2
		mov ax, 0x033E
		mov [es:di], ax
		
		add di, 4
		mov cx, 14
		mov si, GameWon             ; Print Total Games Won String
		mov ah, 0x0F
		printGameWonString:
			lodsb
			stosw
			loop printGameWonString
		
		add di, 4
 		push 0x07
		push di    
		push word [TotalWon]        ; print Total Games Won
		call Print_Number
		
		mov di, 2422
		mov ax, 0x032D
		mov [es:di], ax
		add di, 2
		mov ax, 0x033E
		mov [es:di], ax
		
		add di, 4
		mov cx, 15
		mov si, timeelapsedStr      ; Prints Time Elapsed String
		mov ah, 0x0F
		printTimeString:
			lodsb
			stosw
			loop printTimeString
		
		add di, 4
		push di                     ; print time
		call PrintTime
		
		mov di, 2492
		mov ax, 0x032D
		mov [es:di], ax
		add di, 2
		mov ax, 0x033E
		mov [es:di], ax
		
		add di, 4
		mov cx, 14
		mov si, GamesLost           ; Print Total Games Lost String
		mov ah, 0x0F
		printGameLostString:
			lodsb
			stosw
			loop printGameLostString
		
		add di, 4
 		push 0x07
		push di    
		push word [TotalLost]        ; print Total Games
		call Print_Number
		
		cmp word[ GameWonFlag], 1
		jne ChooseOption
		
		mov cx, 0x1FF 
		Outside:                ; Pause Game for Second and return to Main Screen
			push cx
			mov cx, 0x3FFF
			inside: 
				loop inside
			pop cx
			loop Outside
			
		jmp Exit_PlayAgain
		
		ChooseOption: 
		mov di, 2700
		mov ax, 0x0720
		mov cx, 650
		cld                         ; Clear Lower Screen
		rep stosw
		
		push 0x02
		push 2744
		cmp word [PlayAgain_], 1
		jne createBox
			pop dx
			push 3224
		createBox:
		push 16                    ; Print Box Around Option CHoice
		call printBox
		
		mov di, 2908
		mov cx, 12
		mov si, PlayAgainStr     ; Prints PlayAgain String
		mov ah, 0x0F
		printPAString:
			lodsb
			stosw
			loop printPAString
			
		mov di, 3388
		mov cx, 9
		mov si, ExitGameStr     ; Prints PlayAgain String
		mov ah, 0x0F
		printExitString:
			lodsb
			stosw
			loop printExitString
		
		mov ax, 0
		TakeInputAgain:
		
		mov ah, 0h        ; SubService for key stroke
		int 16h           ; Call BIOS keyboard interrupt
		mov al, ah        ; Get the key code in AL
		cmp al, 50h                  ; Check if the Down Arrow key is pressed (key code 50h)
		je changeOption
		cmp al, 48h                  ; Check if the Up Arrow key is pressed (key code 48h)
		je changeOption
		cmp al, 1Ch                  ; Check if Enter key is pressed (key code 1Ch)
		je Exit_PlayAgain
		cmp al, 1h                   ; Check if Escape key is pressed (key code 1h)
		je escapeGame
		
		jmp TakeInputAgain
		
		changeOption:
		xor word [PlayAgain_], 1
			jmp ChooseOption
		
		escapeGame: 
			mov word [PlayAgain_], 1
		Exit_PlayAgain:
		pop ds
		pop es
		popa
		popf
		pop bp
		ret
	
	Check_Offsets:      ; Subroutine to modify offset on basis of location
		push bp
		mov bp, sp
		pusha
		pushf
		
		mov cx,[numberOfAlphabets]
		mov si, 0
		
		check_eachOffset:
			cmp word [CharOffsets + si], 3840     ; if offset is in second last line
			jb skip_Offset_Reset
				mov ax, [Catcher1]
				cmp ax, [CharOffsets + si]        ; it will fall in bucket
				je addToScore                     ; if offset is not equal to catcher 1
					inc word [Fall_Score]         ; Increment Missed Count
					mov dx, [Fall_Score]          ; if falling score equal to life limit
					cmp dx, [Life_Limit]
					jne Check_OtherBox
						jmp returnToPlayAgain
					
				addToScore:
					inc word [Score]               ; else increment Score
					mov dx, [Score]               
					cmp dx, 8                      ; if Score is 8
					jbe dontIncrement2
					cmp word [speedInc],0          ; and speed is not incremented already
					jne dontIncrement2
						mov word [speedInc], 2
						call IncreaseSpeeds        ; increase speed of already present offsets
					dontIncrement2:
					cmp dx, [winningScore]         ; if score equal to Winning Score
					jne Check_OtherBox
						mov word [GameWonFlag],1       ; Turn Game Won Flag On
						jmp returnToPlayAgain
				
				Check_OtherBox:
				cmp word [Options], 1             ; check if Multiplayer is On
				jne skip_Score_Set
				mov ax, [Catcher2]               
				cmp ax, [CharOffsets + si]
				je addToScore2                    ; if offset is not equal to catcher 2
					inc word [Fall_Score]         ; Increment Missed Count
					mov dx, [Fall_Score]          ; if falling score equal to life limit
					cmp dx, [Life_Limit]
					jne skip_Score_Set
						jmp returnToPlayAgain
					
				addToScore2:
					inc word [Score]               ; else increment Score
					mov dx, [Score]                
					cmp dx, 8                      ; if Score is 8
					jbe dontIncrement1
					cmp word [speedInc],0          ; and speed is not incremented already
					jne dontIncrement1
						mov word [speedInc], 2
						call IncreaseSpeeds        ; increase speed of already present offsets
					dontIncrement1:
					cmp dx, [winningScore]             ; if score equal to Winning Score
					jne skip_Score_Set
						mov word [GameWonFlag],1       ; Turn Game Won Flag On
						jmp returnToPlayAgain
					
				skip_Score_Set:
				mov word [CharOffsets + si], -1        ; Reset to deafult
				mov word [CharSpeeds + si],  0
				mov word [Characters + si], -1
			
			skip_Offset_Reset:            ; else move to next index
			add si, 2
			dec cx
			cmp cx, 0
			jne check_eachOffset
			
		jmp exit_checkOffset              ; simple Exit    
		
		returnToPlayAgain:
			mov ax, PlayAgain             ; terminate game
			mov [bp + 2],ax
		
		exit_checkOffset:
		popf
		popa
		pop bp
		ret
	
	TopHeader:       ; Subroutine to Print Top Header of Game Screen
		pusha
		push es
		
		push 0xb800
		pop es
		
		mov di, 70             ; offset for score String
		mov si, ScoreString    ; Score String
		mov cx, 8              ; Count for Printing
		mov ah, 0x0F
		
		ScoreString_Loop:
			lodsb              ; get character
			stosw              ; store
			loop ScoreString_Loop
		
		push 0xA
		push 86                ; Print Score
		push word [Score]
		call Print_Number
			
		mov di, 10             ; offset for score String
		mov si, MissedString   ; Missed String
		mov cx, 18             ; Count for Printing
		mov ah, 0x0F
		
		MissedString_Loop:
			lodsb              ; get character
			stosw              ; store
			loop MissedString_Loop
		
		push 0x0C
		push 46                ; Print Fall Score
		push word [Fall_Score]
		call Print_Number		

		mov di, 124            ; offset for Time String
		mov si, TimeString     ; time String
		mov cx, 6              ; Count for Printing
		mov ah, 0x0F
		
		TimeString_Loop:
			lodsb              ; get character
			stosw              ; store
			loop TimeString_Loop
		
		push 136
		call PrintTime         ; print Time
		
		mov di, 160            ; second row
		mov ah, 0x03        
		mov al, 0xCD
		mov cx, 80
		
		drawLine:
			mov [es:di], ax
			add di, 2           ; draw Border Line
			loop drawLine 
			
		pop es
		popa
		ret
		
	lining:         ; Prints char cx times with user increment
		push bp
		mov bp, sp
		push ax
		push cx
		push bx
		
		mov ax, [bp + 4]  ; character
		mov cx, [bp + 6]  ; no of Times
		mov bx, [bp + 8]  ; increment
		
		move:
			mov [es:di], ax      ; prints line
			add di, bx           ; incrementing manually
			loop move
		
		pop cx
		pop bx
		pop ax
		pop bp
		ret 6

	isLine:                    ; Subroutine to Check if character is line 
		push bp
		mov bp, sp
		pusha
		
		mov word [bp + 6], 0   ; returning boolean (0 at start)
		mov ax, [bp + 4]       ; get character
		
		cmp al, 0xcd           ; '═'
		je result1
		cmp al, 0xba           ; '║'
		je result1
		cmp al, 0xc9           ; '╔'
		je result1
		cmp al, 0xbb           ; '╗'
		je result1
		jmp exit_isLine
		
		result1: mov word [bp + 6], 1     ; if found
		
		exit_isLine:
		popa
		pop bp
		ret 2

	MainHeadingDisplay:          ; Subroutine to Print Main heading
		push bp
		mov bp, sp
		pusha
		push ds
		push es
		
		push 0xb800
		pop es
		mov si, [bp + 4]        ; Get Address of Memory location
		mov cx, 5
		mov di, [bp + 6]        ; Get Offset
		mov dx, di
		add dx, 160             ; keep track of rows
		
		pickData:
			mov ah, 0           ; Reset Attribute
			lodsb               ; Get character from memory
			
			cmp al, 0           ; end of line
			jne continueColor
			mov di, dx
			add dx, 160         ; move to next line
			loop pickData
			jmp exit_Mainheading
			
			continueColor:
			
			sub sp,2
			push ax
			call isLine         ; check character is line or not
			pop bx
			cmp bx, 1
			je lineColor 
			
			cmp cx, 5
			je fiveC            ; color scheme of Line
			cmp cx, 4
			je fourC
			cmp cx, 3
			je threeC
			cmp cx,2
			je twoC
			
			oneC: 	mov ah, 0x04      ; Red
			jmp colorDone
			twoC: 	mov ah, 0x04
			jmp colorDone 
			threeC: mov ah, 0x0C      ; Light Red
			jmp colorDone
			fourC: 	mov ah, 0x0E      ; Yellow
			jmp colorDone
			fiveC: 	mov ah, 0x0E
			jmp colorDone
			lineColor: mov ah, 0x03   ; Light Cyan
			
			colorDone:
			stosw
			jmp pickData
			
		exit_Mainheading:
		
		pop es
		pop ds
		popa
		pop bp
		ret 4
		
	OptionDisplay:             ; Subroutine to Print Options on Main Screen
		push bp
		mov bp, sp
		pusha
		push ds
		push es
		
		push 0xb800
		pop es
		mov si, [bp + 4]        ; Get Address of Memory location
		mov cx, 3
		mov di, [bp + 6]        ; Get Offset
		mov dx, di
		add dx, 160             ; keep track of rows
		mov ah, 0x07            ; white color
		
		mov bx, [bp + 8]
		cmp bx, [Options]       ; compare with Options
		jne skipGreen
			mov ah, 0x02
		
		skipGreen:
		
		pickData2:
			lodsb                   ; Get character from memory
			
			cmp al, 0               ; end of line
			jne continueLoading
			mov di, dx
			add dx, 160             ; move to next row
			loop pickData2
			jmp exit_Optionheading
			
			continueLoading:
			stosw                   ; Store character
			jmp pickData2
			
		exit_Optionheading:
		
		pop es
		pop ds
		popa
		pop bp
		ret 6

	DiplayInterface:        ; Subroutine to Print Main Screen
		pusha
		push es
		
		call clr_screen     ; Clear Output Screen
		
		push 0xb800         ; point es to video memory
		pop es        
		
		mov di, 0
		
		; Bordering Screen (border)
		mov ax, 0x0EC9
		mov [es:di],ax      ; top left corner
		add di,2
		
		push 2
		push 35            
		push 0x0ECD         ; top left line
		call lining
		
		push 2
		push 8
		push 0x8C07         ; top dots
		call lining
		
		push 2
		push 35
		push 0x0ECD         ; top right line
		call lining
		
		mov ax, 0x0EBB
		mov [es:di],ax      ; right top corner
		add di,2
		
		push di
		
		push 160
		push 23
		push 0x0EBA         ; left border
		call lining
		
		mov ax, 0x0EC8
		mov [es:di],ax      ; bottom left corner
		add di,2
		
		push 2
		push 35            
		push 0x0ECD         ; bottom left line
		call lining
		
		push 2
		push 8
		push 0x8C07         ; bottom dots
		call lining
		
		push 2
		push 35
		push 0x0ECD         ; bottom right line
		call lining
		
		mov ax, 0x0EBC
		mov [es:di],ax      ; bottom right corner
		add di,2
		
		pop di
		add di, 158
		push 160
		push 23
		push 0x0EBA         ; right border
		call lining
		
		push 192
		push alphabetString      ; Print alphabet heading
		call MainHeadingDisplay
		
		push 1154
		push CatcherString       ; Print catcher heading
		call MainHeadingDisplay
		
	pop es
	popa
	ret
	
	PlayerSelection:
		pusha
		push es
	
		push 0
		push 2110
		push SingleString		 ; Print Singleplayer heading
		call OptionDisplay
		
		push 1
		push 2750
		push MultiplayerString    ; Print Multiplayer heading
		call OptionDisplay
		
		push 2
		push 3390                 ; Print Exit String
		push ExitString
		call OptionDisplay
		
		popa
		pop es
		ret
		
	MenuCommand:
		pusha
		
		mov ah, 0h        ; SubService for key stroke
		int 16h           ; Call BIOS keyboard interrupt
		mov al, ah        ; Get the key code in AL
		
		; Check if the Down Arrow key is pressed (key code 50h)
		cmp al, 50h         
		je increase_option
		
		; Check if the Up Arrow key is pressed (key code 48h)
		cmp al, 48h         
		je decrease_option
		
		; Check if Enter key is pressed (key code 1Ch)
		cmp al, 1Ch         
		je set_EnterFlag
		
		; Check if Escape key is pressed (key code 1h)
		cmp al, 1h         
		je set_EscFlag
		
		jmp exit_MenuCommand
		
		increase_option:                 ; Increase option
			inc word [Options]           ; increment option
			cmp word [Options], 3
			jl exit_MenuCommand
			mov word [Options], 0        ; Reset to 0 if it exceeds 2
		jmp exit_MenuCommand
		
		decrease_option:                ; Decrease option
			dec word[Options]			; decrement option
			cmp word[Options], 0xFFFF      
			jne exit_MenuCommand
			mov word[Options], 2        ; Reset to 2 if it goes below 0
		jmp exit_MenuCommand
		
		set_EnterFlag:                  ; Set Enter Flag
			mov word [ChoiceDone] , 1
		jmp exit_MenuCommand
		
		set_EscFlag:                    ; Set Escape Flag
			mov word [Esc_Key], 1
		
		exit_MenuCommand:               ; Exit Menu Command
		
		popa
		ret
		
	printOffset:
		pusha
		push es
		push ds
		
		push 0xb800
		pop es
		
		mov di, [Catcher1]                 ; Print Catcher
		mov word [es: di], 0x0BDC
			
		mov si, 0
		mov cx, [numberOfAlphabets]
		iterateOffsets:
			mov ax, [Characters + si]       ; get character from char array
			mov di, [CharOffsets + si]      ; get corresponding offset
			mov [es:di], ax                 ; print character
			add si, 2                       ; point to nexk index
			loop iterateOffsets
		
		cmp word [Options], 1               ; check if mutiplayer to print 2nd catcher
		jne exit_printOffset
			mov di, [Catcher2]
			mov word [es: di], 0x0FDC       ; 2nd Catcher
		
		exit_printOffset:
		call Delay                          
		
		pop ds
		pop es
		popa
		ret
	
	 StartGame:
		pusha
		push es
		push ds
		
		again:
		mov cx, 3                        ; Max Speed
		add cx, [speedInc]               ; add to increase speed

		pullDown:	
			call GenerateRandomData      ; Generate Random Data
			call clr_screen    			 ; clear screen
			call TopHeader     			 ; print top Header
			call printOffset   			 ; print Characters at their offsets
			mov si, 0                                    ; index 0
			incrementRows:
				cmp cx, [CharSpeeds + si]                ; compare speed
				ja skip_Increment
					add word [CharOffsets + si], 160     ; add one row
				skip_Increment:
				add si, 2                                ; iterate to next index
				cmp si, [terminateLoops]                 ; terminate if all array is iterated
				jne incrementRows
				
			call Check_Offsets            ; Check and correct offsets
			loop pullDown
		jmp again
		
		pop ds
		pop es
		popa
		ret
	
	; ------------- GAME START ----------------
	start:
	call saveScreen                 ; Save Cmd Screen
	
	RestartGame:                    ; Game will run from here when Playing Again
	call ResetData                  ; Reset memory before Game start
	call DiplayInterface            ; Display Menu Screen
	
	MainScreenDisplay:
		call PlayerSelection
		call MenuCommand            ; Take Menu Input
		
		cmp word [Esc_Key], 1       ; Escape Key Pressed
		je endOfGame
		
		cmp word [ChoiceDone], 1    ; Enter Key Pressed
		jne MainScreenDisplay 
		
	cmp word [Options], 2           ; if option 2 seleted, exit
	je endOfGame
	
	cmp word [Options], 1           ; if Multiplayer is selected
	jne Hook_Keyboard
		call Multiplayer_Setup
		
	Hook_Keyboard:
	xor ax, ax                      ; Save Old keyboard interrupt
	mov es, ax
	mov ax, [es: 9*4]
	mov word[oldkbisr], ax
	mov ax, [es: 9*4 + 2]
	mov word[oldkbisr + 2], ax
	mov ax, [es: 8*4]
	mov word[oldtimer], ax
	mov ax, [es: 8*4 + 2]
	mov word[oldtimer + 2], ax
	
	
	cli
	mov word [es:9*4], kbisr         ; Hook keyboard interrupt
	mov [es:9*4+2], cs
	mov word [es:8*4], Tisr          ; Hook timer interrupt
	mov [es:8*4+2], cs
	sti
	
	call StartGame
	
	PlayAgain:
	xor ax, ax                     
	mov es, ax
	mov ax, [oldkbisr]
	mov word [es:9*4], ax            ; Unhook keyboard interrupt
	mov ax, [oldkbisr + 2]
	mov [es:9*4+2], ax
	mov ax, [oldtimer]
	mov word [es:8*4], ax            ; Unhook keyboard interrupt
	mov ax, [oldtimer + 2]
	mov [es:8*4+2], ax
	
	call PlayAgainScreen       
	cmp word [GameWonFlag], 1             ; if User Won Game
	je RestartGame
	cmp word [PlayAgain_], 0              ; if User Choose to Play Again
	je RestartGame
	
	endOfGame:
	call restoreScreen

	mov ax, 0x4c00
	int 0x21