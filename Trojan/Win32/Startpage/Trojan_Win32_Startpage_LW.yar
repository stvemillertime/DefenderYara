
rule Trojan_Win32_Startpage_LW{
	meta:
		description = "Trojan:Win32/Startpage.LW,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 63 77 64 2e 64 61 74 } //01 00  icwd.dat
		$a_01_1 = {74 62 67 77 2e 64 61 74 } //01 00  tbgw.dat
		$a_01_2 = {74 65 6d 67 5f 74 6d 70 2e 62 61 74 } //01 00  temg_tmp.bat
		$a_01_3 = {49 6e 74 65 72 6e 61 74 20 45 78 70 6c 6f 72 61 72 2e 6c 6e 6b } //01 00  Internat Explorar.lnk
		$a_01_4 = {74 61 73 6b 6b 69 6c 6c 00 2f 66 20 2f 69 6d 20 4b 53 57 65 62 53 68 69 65 6c 64 2e 65 78 65 00 } //02 00 
		$a_01_5 = {49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 00 55 52 4c 00 68 74 74 70 3a 2f 2f 62 75 79 2e 68 61 6f 74 65 2e 63 6f 6d 2f 3f 00 } //00 00 
	condition:
		any of ($a_*)
 
}