
rule Trojan_Win32_Small_EC_MTB{
	meta:
		description = "Trojan:Win32/Small.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //01 00  DisableTaskMgr
		$a_81_1 = {41 6c 6c 6f 77 50 72 6f 74 65 63 74 65 64 52 65 6e 61 6d 65 73 } //01 00  AllowProtectedRenames
		$a_81_2 = {53 46 43 44 69 73 61 62 6c 65 } //01 00  SFCDisable
		$a_81_3 = {44 69 73 61 62 6c 65 43 68 61 6e 67 65 50 61 73 73 77 6f 72 64 } //01 00  DisableChangePassword
		$a_81_4 = {4e 6f 72 74 6f 6e 20 41 6e 74 69 56 69 72 75 73 } //01 00  Norton AntiVirus
		$a_81_5 = {42 41 43 54 45 52 49 41 2e 74 78 74 } //01 00  BACTERIA.txt
		$a_81_6 = {56 49 52 55 53 45 53 2e 74 78 74 } //01 00  VIRUSES.txt
		$a_81_7 = {46 55 4e 47 55 53 2e 74 78 74 } //01 00  FUNGUS.txt
		$a_81_8 = {53 4c 45 45 50 5f 54 45 53 54 2e 73 79 73 } //01 00  SLEEP_TEST.sys
		$a_81_9 = {53 50 4f 4f 4b 59 2e 73 79 73 } //01 00  SPOOKY.sys
		$a_81_10 = {56 41 47 52 41 4e 54 2e 65 78 65 } //01 00  VAGRANT.exe
		$a_81_11 = {41 47 45 4e 54 2e 65 78 65 } //00 00  AGENT.exe
	condition:
		any of ($a_*)
 
}