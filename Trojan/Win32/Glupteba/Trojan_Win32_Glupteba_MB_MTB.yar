
rule Trojan_Win32_Glupteba_MB_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 c4 04 a3 90 01 04 68 90 01 04 e8 90 01 04 83 c4 04 8b 55 e8 52 68 90 01 04 e8 90 01 04 83 c4 08 8b 45 f0 8b 4d fc 8d 94 01 90 01 04 89 55 ec a1 90 01 04 a3 90 01 04 8b 4d ec 89 0d 90 01 04 8b 55 fc 83 c2 04 89 55 fc c7 45 90 01 05 c7 45 90 01 05 e8 90 01 04 b8 90 01 04 85 c0 0f 85 90 09 11 00 e8 90 01 04 a3 90 01 04 6a 15 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}