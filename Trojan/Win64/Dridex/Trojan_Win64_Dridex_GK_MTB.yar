
rule Trojan_Win64_Dridex_GK_MTB{
	meta:
		description = "Trojan:Win64/Dridex.GK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_02_0 = {48 81 ec c8 00 00 00 48 8d 05 bb 70 02 00 41 b8 90 01 04 4c 8d 8c 24 80 00 00 00 44 8b 94 24 a4 00 00 00 c7 84 90 00 } //01 00 
		$a_00_1 = {d8 e1 e9 40 62 f4 64 56 9f 17 1a 47 6f c4 11 72 } //00 00 
	condition:
		any of ($a_*)
 
}