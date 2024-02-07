
rule Backdoor_Linux_Flashback_H{
	meta:
		description = "Backdoor:Linux/Flashback.H,SIGNATURE_TYPE_MACHOHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 2d 41 67 65 6e 74 } //01 00  User-Agent
		$a_01_1 = {68 74 74 70 3a 2f 2f 25 73 25 73 } //01 00  http://%s%s
		$a_01_2 = {49 4f 53 65 72 76 69 63 65 3a 2f } //01 00  IOService:/
		$a_01_3 = {49 4f 50 6c 61 74 66 6f 72 6d 55 55 49 44 } //01 00  IOPlatformUUID
		$a_01_4 = {25 73 2e 25 75 00 25 73 2e 25 73 00 } //01 00  猥┮u猥┮s
		$a_03_5 = {89 c8 ba 08 00 00 00 a8 01 74 90 02 02 d1 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}