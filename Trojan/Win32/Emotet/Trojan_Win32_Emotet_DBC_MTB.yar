
rule Trojan_Win32_Emotet_DBC_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 8b 5c 24 90 01 01 55 8b 6c 24 90 01 01 56 8b 74 24 90 01 01 8d 90 02 05 33 d2 8b c1 f7 f3 8a 44 55 00 30 04 31 41 3b cf 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}