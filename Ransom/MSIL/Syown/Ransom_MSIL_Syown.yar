
rule Ransom_MSIL_Syown{
	meta:
		description = "Ransom:MSIL/Syown,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 59 53 44 4f 57 4e 2e 65 78 65 } //02 00  SYSDOWN.exe
		$a_01_1 = {53 59 53 44 4f 57 4e 2e 70 64 62 } //02 00  SYSDOWN.pdb
		$a_01_2 = {53 59 53 44 4f 57 4e 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //02 00  SYSDOWN.My.Resources
		$a_01_3 = {53 59 53 44 4f 57 4e 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //02 00  SYSDOWN.Form1.resources
		$a_01_4 = {53 59 53 44 4f 57 4e 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //02 00  SYSDOWN.Resources.resources
		$a_01_5 = {53 59 53 44 4f 57 4e 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //02 00  SYSDOWN.g.resources
		$a_01_6 = {35 64 31 39 32 39 39 61 2d 37 64 39 65 2d 34 33 64 65 2d 39 35 36 61 2d 37 30 39 39 37 38 37 35 63 66 61 61 } //02 00  5d19299a-7d9e-43de-956a-70997875cfaa
		$a_01_7 = {33 32 36 39 35 34 33 33 2d 34 41 32 31 2d 34 42 36 37 2d 39 46 43 32 2d 43 35 33 34 30 35 35 30 38 36 35 45 } //02 00  32695433-4A21-4B67-9FC2-C5340550865E
		$a_01_8 = {45 39 37 39 39 30 31 38 2d 44 37 31 38 2d 34 37 41 43 2d 38 43 32 45 2d 44 45 42 39 33 46 32 37 39 46 31 35 } //02 00  E9799018-D718-47AC-8C2E-DEB93F279F15
		$a_01_9 = {44 44 35 37 38 33 42 43 46 31 45 39 30 30 32 42 43 30 30 41 44 35 42 38 33 41 39 35 45 44 36 45 34 45 42 42 34 41 44 35 } //02 00  DD5783BCF1E9002BC00AD5B83A95ED6E4EBB4AD5
		$a_01_10 = {53 00 59 00 53 00 44 00 4f 00 57 00 4e 00 2e 00 65 00 78 00 65 00 } //00 00  SYSDOWN.exe
		$a_00_11 = {5d 04 00 00 d3 af 03 80 5c 1d } //00 00 
	condition:
		any of ($a_*)
 
}