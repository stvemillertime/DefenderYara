
rule Trojan_Win32_DarkGateLoader_AA_MTB{
	meta:
		description = "Trojan:Win32/DarkGateLoader.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2d 01 2d 01 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //64 00 
		$a_03_1 = {89 16 8d 57 04 8b 12 33 90 90 90 01 02 00 00 8d 4e 04 89 11 8d 57 08 8b 12 33 90 90 90 01 02 00 00 8d 4e 08 89 11 8d 57 0c 8b 12 33 90 90 90 01 02 00 00 8d 4e 0c 89 11 33 d2 8a 16 8a 92 90 01 04 88 17 90 00 } //64 00 
		$a_03_2 = {88 57 0f 8b 90 90 90 01 02 00 00 31 17 8d 57 04 8b 88 90 01 02 00 00 31 0a 8d 57 08 8b 88 90 01 02 00 00 31 0a 8d 57 0c 8b 80 90 01 02 00 00 31 02 90 00 } //64 00 
		$a_01_3 = {7a 4c 41 78 75 55 30 6b 51 4b 66 33 73 57 45 37 65 50 52 4f 32 69 6d 79 67 39 47 53 70 56 6f 59 43 36 72 68 6c 58 34 38 5a 48 6e 76 6a 4a 44 42 4e 46 74 4d 64 31 49 35 61 63 77 62 71 54 2b 3d } //00 00  zLAxuU0kQKf3sWE7ePRO2imyg9GSpVoYC6rhlX48ZHnvjJDBNFtMd1I5acwbqT+=
		$a_01_4 = {5d 04 00 00 a4 39 06 80 5c 27 00 00 a5 39 06 80 00 00 01 00 08 00 11 00 ad 21 4f 62 66 75 73 65 2e 50 52 46 56 21 4d 54 42 00 00 01 } //40 05 
	condition:
		any of ($a_*)
 
}