.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096

.DATA
     number1 DWORD ?
	 number2 DWORD ?
     G1 BYTE "grade 1? " , 0 
	 W1 BYTE "weight 1?" , 0
	 G2 BYTE "grade 2?" , 0 
	 W2 BYTE "weight 2?" , 0
	 G3 BYTE "grade 3?" , 0 
	 W3 BYTE "weight 3?" , 0
	 G4 BYTE "grade 4?" , 0 
	 W4 BYTE "weight 4?" , 0
	 wsum BYTE "Weighted Sum :" , 0 
	 sumw BYTE "sum of weights:" , 0
     wave BYTE "weighted average :" , 0

	 string1 DWORD 20 , 0
	 string2 DWORD 20 , 0
	res DWORD 20 DUP(?)
	res2 DWORD 20 DUP(?)

.CODE
	_MainProc PROC
	input G1,string1,20
	atod string1 
	MOV ebx,eax
	input W1,string2,20
	atod string2 
	MOV number2,eax
	MUL ebx
	MOV number1,eax

	input G2,string1,20
	atod string1 
	MOV ebx,eax
	input W2,string2,20
	atod string2 
	ADD number2,eax
	MUL ebx
	ADD number1,eax

	input G3,string1,20
	atod string1 
	MOV ebx,eax
	input W3,string2,20
	atod string2 
	ADD number2,eax
	MUL ebx
	ADD number1,eax

	input G4,string1,20
	atod string1 
	MOV ebx,eax
	input W4,string2,20
	atod string2 
	ADD number2,eax
	MUL ebx
	ADD number1,eax

	dtoa res2,number2
	output sumw,res2

	dtoa res,number1
	output wsum,res

	
		mov eax , 0
		ret
	_MainProc ENDP

END