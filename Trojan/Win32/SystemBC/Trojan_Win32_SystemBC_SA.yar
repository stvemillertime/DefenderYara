
rule Trojan_Win32_SystemBC_SA{
	meta:
		description = "Trojan:Win32/SystemBC.SA,SIGNATURE_TYPE_PEHSTR,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {69 c0 19 73 1e 00 05 43 55 fb 3c c1 d8 10 03 c1 85 d2 } //0a 00 
		$a_01_1 = {48 69 c0 19 73 1e 00 48 05 43 55 fb 3c 48 c1 d8 10 48 03 c1 48 85 d2 } //01 00 
		$a_01_2 = {2d 57 69 6e 64 6f 77 53 74 79 6c 65 20 48 69 64 64 65 6e 20 2d 65 70 20 62 79 70 61 73 73 20 2d 66 69 6c 65 } //01 00  -WindowStyle Hidden -ep bypass -file
		$a_01_3 = {42 45 47 49 4e 44 41 54 41 } //01 00  BEGINDATA
		$a_01_4 = {48 4f 53 54 31 3a } //01 00  HOST1:
		$a_01_5 = {50 4f 52 54 31 3a } //01 00  PORT1:
		$a_01_6 = {54 4f 52 3a } //01 00  TOR:
		$a_01_7 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 35 2e 30 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 36 2e 31 3b 20 57 69 6e 36 34 3b 20 78 36 34 3b 20 72 76 3a 36 36 2e 30 29 } //00 00  User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:66.0)
	condition:
		any of ($a_*)
 
}