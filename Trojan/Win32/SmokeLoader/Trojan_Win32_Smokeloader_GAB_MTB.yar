
rule Trojan_Win32_Smokeloader_GAB_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b c6 c1 e8 05 c7 05 90 01 04 19 36 6b ff 89 45 90 01 01 8b 45 90 01 01 01 45 90 01 01 ff 75 90 01 01 8b c6 c1 e0 04 03 c7 33 45 90 01 01 89 45 90 01 01 8d 45 90 01 01 50 e8 90 01 04 ff 75 90 01 01 8d 45 90 01 01 50 e8 90 01 04 68 90 01 04 8d 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}