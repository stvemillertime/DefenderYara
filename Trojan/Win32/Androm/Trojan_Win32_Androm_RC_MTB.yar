
rule Trojan_Win32_Androm_RC_MTB{
	meta:
		description = "Trojan:Win32/Androm.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {c1 ce 0d 3c 61 0f be c0 7c 03 83 e8 20 03 f0 41 8a 01 84 c0 75 ea } //01 00 
		$a_01_1 = {33 d2 8b c6 f7 f3 8a 0c 2a 30 0c 3e 46 3b 74 24 18 72 ed } //00 00 
	condition:
		any of ($a_*)
 
}