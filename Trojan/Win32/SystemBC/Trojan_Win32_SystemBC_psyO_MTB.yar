
rule Trojan_Win32_SystemBC_psyO_MTB{
	meta:
		description = "Trojan:Win32/SystemBC.psyO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 01 00 00 07 00 "
		
	strings :
		$a_03_0 = {66 8b 08 83 c0 90 01 01 66 3b cf 75 f5 2b c2 57 d1 90 01 01 8d 44 00 02 50 53 56 ff 75 f8 ff 15 6c 20 42 00 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}