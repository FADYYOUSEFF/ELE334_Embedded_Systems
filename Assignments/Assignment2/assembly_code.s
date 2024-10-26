	AREA Mydata, DATA	
x 	EQU 5
y   EQU 3
	
	AREA Mycode,CODE 
		ENTRY 
		EXPORT __main 

__main 
    
		LDR r0,= x 
		LDR r1,= y  

		
		CMP r0, r1   

							 ; Set flags based on the comparison
		BEQ equal            ; If R0 == R1, branch to 'equal'
		BGT greater          ; If R0 > R1, branch to 'greater'
		BLT less             ; If R0 < R1, branch to 'less'

equal
							 ; Code for when R0 == R1
							 
		MOV r2, #1           ; Set r2 to 1 to indicate equality
		B stop                ; Jump to stop

greater
							 ; Code for when R0 > R1
		MOV r2, #2           ; Set r2 to 2 to indicate R0 is greater
		B stop                ; Jump to stop

less
							 ; Code for when R0 < R1
		MOV r2, #3           ; Set rD2 to 3 to indicate R0 is less
stop

	END