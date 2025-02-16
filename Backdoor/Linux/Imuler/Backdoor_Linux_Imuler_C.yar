
rule Backdoor_Linux_Imuler_C{
	meta:
		description = "Backdoor:Linux/Imuler.C,SIGNATURE_TYPE_MACHOHSTR_EXT,08 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 63 6f 6e 66 72 } //01 00  .confr
		$a_01_1 = {2f 74 6d 70 2f 2e 6d 64 } //01 00  /tmp/.md
		$a_01_2 = {2f 74 6d 70 2f 2e 6d 64 77 6f 72 6b 65 72 } //01 00  /tmp/.mdworker
		$a_01_3 = {2f 74 6d 70 2f 6c 61 75 6e 63 68 2d 49 4f 52 46 39 38 } //01 00  /tmp/launch-IORF98
		$a_01_4 = {46 69 6c 65 41 67 65 6e 74 41 70 70 } //01 00  FileAgentApp
		$a_01_5 = {61 70 70 6c 69 63 61 74 69 6f 6e 3a 6f 70 65 6e 54 65 6d 70 46 69 6c 65 3a } //01 00  application:openTempFile:
		$a_01_6 = {61 70 70 6c 69 63 61 74 69 6f 6e 3a 6f 70 65 6e 46 69 6c 65 57 69 74 68 6f 75 74 55 49 3a } //01 00  application:openFileWithoutUI:
		$a_01_7 = {61 70 70 6c 69 63 61 74 69 6f 6e 57 69 6c 6c 48 69 64 65 3a } //01 00  applicationWillHide:
		$a_01_8 = {54 4d 50 30 4d 33 34 } //00 00  TMP0M34
		$a_00_9 = {5d 04 00 00 05 } //9e 02 
	condition:
		any of ($a_*)
 
}