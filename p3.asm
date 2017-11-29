.586
INCLUDE io.h
.MODEL FLAT
.STACK 4096
.DATA
	len  DWORD ?
	wid  DWORD ?
	prompt1 BYTE "Enter Length",0
	prompt2 BYTE "Enter Width",0
	string BYTE 20 DUP(?)
	per   BYTE 20 DUP(?)
	resultlbl BYTE "The Area Is: ",0
.CODE
	_MainProc PROC
		input prompt1,string,40
		atod string
		MOV len,eax
		input prompt2,string,40
		atod string
		MOV wid,eax
		ADD eax,len
		MOV ebx,2
		MUL ebx

		dtoa per,eax
		output resultlbl,per

		MOV eax,0
		ret
	_MainProc ENDP
END

