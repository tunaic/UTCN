.386
.model flat, stdcall
includelib msvcrt.lib
extern exit: proc
public start
.data
	SIR1 DD 1,2,7
	LG1 DD ($-SIR1)/4
	SIR2 DD 4,5
	LG2 DD ($-SIR2)/4
	SIR3 DD 100 DUP(0)
.code
start:
    MOV EAX,LG1
	MOV EDX,LG2
	MOV ECX,EAX
	ADD ECX,EDX
	LEA EDI,SIR3
	PUSH EDI
	LEA ESI,SIR1
	LEA EDI,SIR2
COMPARATII:
    CMP EAX,0
	JE NIMIC_SIR1
	CMP EDX,0
	JE NIMIC_SIR2
    CMPSD
	JG MAI_MIC
MAI_MARE:
    SUB ESI,4
	SUB EDI,4
	MOV EBX,EDI
	POP EDI
	MOVSD
	PUSH EDI
	MOV EDI,EBX
	DEC EAX
    JMP PESTE
MAI_MIC:
    XCHG ESI,EDI
	XCHG EAX,EDX
	JMP MAI_MARE
PESTE:
    LOOP COMPARATII
	JMP OVER
NIMIC_SIR1:
    MOV ESI,EDI
NIMIC_SIR2:
	POP EDI
	REP MOVSD
OVER: 
	push 0
	call exit
end start