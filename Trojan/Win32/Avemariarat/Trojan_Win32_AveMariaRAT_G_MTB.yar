
rule Trojan_Win32_AveMariaRAT_G_MTB{
	meta:
		description = "Trojan:Win32/AveMariaRAT.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b c1 99 f7 ff 8a 44 14 90 01 01 30 04 29 41 81 f9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}