
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	dollar DWORD ?
	fifcent DWORD ?
	quarter DWORD ?
	dime DWORD ?
	nickel DWORD ?
	pinny DWORD ?
	cent DWORD ?

	prompt1 BYTE "Enter Dollars",0
	prompt2 BYTE "Enter 50Cents",0
	prompt3 BYTE "Enter Quarters",0
	prompt4 BYTE "Enter Dimes",0
	prompt5 BYTE "Enter Nickels",0
	prompt6 BYTE "Enter Pennies",0

	string  BYTE 20 DUP(?)
	result1  BYTE 20 DUP(?)
	result2  BYTE 20 DUP(?)
	resultlbl BYTE "you have   cent in total",0
	resultlb BYTE "you have   coin in total",0
.CODE
	_MainProc PROC
		input prompt1,string,40
		atod string
		MOV dollar,eax
		MOV ebx,100
		MUL ebx
		MOV cent,eax


		input prompt2,string,40
		atod string
		ADD dollar,eax
		MOV ebx,50
		MUL ebx
		ADD cent,eax

		input prompt3,string,40
		atod string
		ADD dollar,eax
		MOV ebx,25
		MUL ebx
		ADD cent,eax

		input prompt4,string,40
		atod string
		ADD dollar,eax
		MOV ebx,10
		MUL ebx
		ADD cent,eax

		input prompt5,string,40
		atod string
		ADD dollar,eax
		MOV ebx,5
		MUL ebx
		ADD cent,eax

		input prompt6,string,40
		atod string
		ADD dollar,eax
		ADD cent,eax
	
	dtoa result1,cent
		output resultlbl,result1

	dtoa result2,dollar
		output resultlb,result2
		MOV eax,0
		ret
	_MainProc ENDP
END