
rule Trojan_Win32_Enchanim_gen_A{
	meta:
		description = "Trojan:Win32/Enchanim.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {89 d8 8b 56 e8 01 f3 29 eb ff d6 83 ee 1c 57 56 8b 5e 04 8b 4e 08 8b 56 0c 8b 7e 10 8b 6e 18 8b 76 14 } //01 00 
		$a_03_1 = {b2 7a 88 14 90 01 01 c1 ea 08 90 01 01 78 09 83 90 01 01 03 75 d2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}