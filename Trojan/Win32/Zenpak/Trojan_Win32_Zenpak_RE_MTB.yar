
rule Trojan_Win32_Zenpak_RE_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.RE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 c1 d1 e9 ba 93 24 49 92 89 90 02 06 89 c8 f7 e2 c1 ea 02 6b c2 0e 8b 90 02 06 29 c1 89 c8 83 e8 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Zenpak_RE_MTB_2{
	meta:
		description = "Trojan:Win32/Zenpak.RE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 e8 03 8d 05 90 01 04 31 18 40 40 83 f0 03 8d 05 90 01 04 01 30 ba 05 00 00 00 83 f0 04 31 d0 8d 05 90 01 04 89 38 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}