.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096

.DATA
     ar DWORD 1 , 2 , 3 , 4 
     y BYTE "grede 1? " , 0 
	 x BYTE "weight 1?" , 0
	 y1 BYTE "grede 2?" , 0 
	 x1 BYTE "weight 2?" , 0
	 y2 BYTE "grede 3?" , 0 
	 x2 BYTE "weight 3?" , 0
	 y3 BYTE "grede 4?" , 0 
	 x3 BYTE "weight 4?" , 0
	 y4 BYTE "Weighted Sum :" , 0 
	 x4 BYTE "sum of weights:" , 0
     x5 BYTE "weighted average :" , 0

	 e1 DWORD 11 , 0
	 e2 DWORD 11 , 0
	res DWORD 11 DUP(?)

.CODE
	_MainProc PROC

	   input y , e1 , 11
	   atod e1
	   mov ebx , eax
	   input x , e2 , 11
	   atod e2
	   mov ecx , eax
	   imul eax ,ebx
       mov edx , eax

       input y1 , e1 , 11
	   atod e1
	   mov ebx , eax
	   input x1 , e2 , 11
	   atod e2
	   add ecx , eax
	   imul ebx , eax
       add edx ,ebx
	   
	   input y2 , e1 , 11
	   atod e1
	   mov ebx , eax
	   input x2 , e2 , 11
	   atod e2
	   add ecx , eax
	   imul ebx , eax
       add edx ,ebx

	   input y3 , e1 , 11
	   atod e1
	   mov ebx , eax
	   input x3 , e2 , 11
	   atod e2
	   add ecx , eax
	   imul ebx , eax
       add edx , ebx

	   mov ebx , edx
	   mov eax,edx
	    mov edx , 0
		idiv ecx

	   dtoa res , ebx
	   output y4 , res

	  dtoa res , ecx
	   output x4 , res

	   dtoa res , eax
	   output x5 , res

		mov eax , 0
		ret
	_MainProc ENDP

END