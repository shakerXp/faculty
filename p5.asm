
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	number1 DWORD ?
	number2 DWORD 4

	prompt1 BYTE "Enter GRADE1",0
	prompt2 BYTE "Enter GRADE2",0
	prompt3 BYTE "Enter GRADE3",0
	prompt4 BYTE "Enter GRADE4",0

	string  BYTE 20 DUP(?)
	sum  BYTE 20 DUP(?)
	ave  BYTE 20 DUP(?)

	resultlbl BYTE "the Sum of your GRADES is",0
	resultlb BYTE "the Average of your is",0
.CODE
	_MainProc PROC
		input prompt1,string,40
		atod string
		MOV number1,eax

		input prompt2,string,40
		atod string
		ADD number1,eax

		input prompt3,string,40
		atod string
		ADD number1,eax

		input prompt4,string,40
		atod string
		ADD number1,eax

		MOV eax,number1
		dtoa sum,eax
		output resultlbl,sum
		
		MOV edx,0
		MOV eax,number1
		DIV number2
		dtoa ave,eax
		output resultlb,ave
		

		MOV eax,0
		ret
	_MainProc ENDP
END