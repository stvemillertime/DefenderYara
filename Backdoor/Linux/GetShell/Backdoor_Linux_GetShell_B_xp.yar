
rule Backdoor_Linux_GetShell_B_xp{
	meta:
		description = "Backdoor:Linux/GetShell.B!xp,SIGNATURE_TYPE_ELFHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {31 db 53 43 53 6a 0a 89 e1 6a 66 58 cd 80 96 99 52 52 52 52 52 52 66 68 90 01 02 66 68 0a 00 89 e1 6a 1c 51 56 89 e1 43 6a 66 58 cd 80 b0 66 b3 04 cd 80 52 52 56 89 e1 43 b0 66 cd 80 93 59 90 00 } //01 00 
		$a_00_1 = {6a 3f 58 cd 80 49 79 f8 68 2f 2f 73 68 68 2f 62 69 6e 89 e3 50 53 89 e1 b0 0b cd 80 } //01 00 
		$a_02_2 = {31 db f7 e3 53 43 53 6a 02 89 e1 b0 66 cd 80 93 59 b0 3f cd 80 49 79 f9 68 90 01 04 68 02 00 90 01 02 89 e1 b0 66 90 00 } //01 00 
		$a_00_3 = {50 51 53 b3 03 89 e1 cd 80 52 68 6e 2f 73 68 68 2f 2f 62 69 89 e3 52 53 89 e1 b0 0b cd 80 } //00 00 
	condition:
		any of ($a_*)
 
}