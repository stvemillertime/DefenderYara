
rule Trojan_BAT_RedLine_MY_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {0b 07 0c 16 0d 38 39 00 00 00 08 09 a3 0c 00 00 01 13 04 11 04 28 90 01 03 0a 23 00 00 00 00 00 80 73 40 59 28 90 01 03 0a 28 90 01 03 0a 69 13 05 06 11 05 28 90 01 03 0a 6f 90 01 03 0a 26 09 17 58 0d 09 08 8e 69 32 c1 90 00 } //01 00 
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //05 00  FromBase64String
		$a_01_3 = {3a 00 2f 00 2f 00 38 00 31 00 2e 00 31 00 36 00 31 00 2e 00 32 00 32 00 39 00 2e 00 31 00 31 00 30 00 2f 00 } //01 00  ://81.161.229.110/
		$a_01_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_5 = {67 65 74 5f 4c 6f 63 61 74 69 6f 6e } //00 00  get_Location
	condition:
		any of ($a_*)
 
}