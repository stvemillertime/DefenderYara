
rule Backdoor_Win32_Lotok_GNP_MTB{
	meta:
		description = "Backdoor:Win32/Lotok.GNP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {23 c2 83 c4 90 01 01 a3 90 01 04 8a 44 24 1c 32 c3 2a c3 32 c3 02 c3 88 04 2f 8b 0d 90 01 04 8b 15 90 01 04 47 03 d1 84 c0 89 15 90 01 06 8b 54 24 10 8b 44 24 14 83 c6 02 03 d6 3b d0 90 00 } //01 00 
		$a_80_1 = {43 68 37 44 65 6d 64 64 6f 36 } //Ch7Demddo6  00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Lotok_GNP_MTB_2{
	meta:
		description = "Backdoor:Win32/Lotok.GNP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {33 c0 b2 72 f2 ae f7 d1 49 88 54 24 90 01 01 88 54 24 90 01 01 8b d1 bf 90 01 04 83 c9 ff f2 ae f7 d1 49 c6 44 24 90 01 01 43 c6 44 24 90 01 01 74 c6 44 24 90 01 01 54 8d 44 0a 90 01 01 c6 44 24 90 01 01 68 50 c6 44 24 90 01 01 64 c6 44 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}