
rule Backdoor_Win32_Kasidet_C{
	meta:
		description = "Backdoor:Win32/Kasidet.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 6f 74 6b 69 6c 6c 65 72 } //01 00  botkiller
		$a_01_1 = {64 77 66 6c 6f 6f 64 } //02 00  dwflood
		$a_01_2 = {63 00 6d 00 64 00 3d 00 31 00 26 00 75 00 69 00 64 00 3d 00 25 00 73 00 26 00 6f 00 73 00 3d 00 25 00 73 00 26 00 61 00 76 00 3d 00 25 00 73 00 26 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 25 00 73 00 26 00 71 00 75 00 61 00 6c 00 69 00 74 00 79 00 3d 00 25 00 69 00 } //0a 00  cmd=1&uid=%s&os=%s&av=%s&version=%s&quality=%i
		$a_01_3 = {4e 33 4e 4e 65 74 77 6f 72 6b } //01 00  N3NNetwork
		$a_03_4 = {69 c0 e8 03 00 00 6b c0 3c 89 85 90 01 04 83 bd 90 01 04 00 7f 90 01 01 c7 85 90 01 04 60 ea 00 00 81 bd 90 01 04 80 ee 36 00 7e 90 01 01 c7 85 90 01 04 80 ee 36 00 90 00 } //01 00 
		$a_03_5 = {69 f6 60 ea 00 00 85 f6 7f 90 01 01 be 60 ea 00 00 eb 90 01 01 81 fe 80 ee 36 00 7e 90 01 01 be 80 ee 36 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}