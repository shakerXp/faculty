
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	number1 DWORD ?
	number2 DWORD ?
	number3 DWORD ?
	prompt1 BYTE "Enter number1",0
	prompt2 BYTE "Enter number2",0
	prompt3 BYTE "Enter number3",0
	string  BYTE 20 DUP(?)
	result  BYTE 20 DUP(?)
	resultlbl BYTE "Result",0
.CODE
	_MainProc PROC
		input prompt1,string,40
		atod string
		MOV number1,eax
		input prompt2,string,40
		atod string
		MOV number2,eax
		ADD eax,number1
		MOV ebx,2
		MUL ebx
		MOV number2,eax
		input prompt3,string,40
		atod string
		MOV number3,eax
		ADD eax,number2
		dtoa result,eax
		output resultlbl,result

		MOV eax,0
		ret
	_MainProc ENDP
END