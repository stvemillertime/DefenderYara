
rule Trojan_BAT_AgentTesla_HU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.HU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {57 70 66 50 64 66 55 6e 62 6c 6f 63 6b 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  WpfPdfUnblocker.My.Resources
		$a_81_1 = {2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f } //01 00  //cdn.discordapp.com/attachments/
		$a_81_2 = {2f 2f 67 69 74 68 75 62 2e 63 6f 6d 2f } //01 00  //github.com/
		$a_81_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_5 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_6 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_7 = {43 6f 6e 76 65 72 74 } //00 00  Convert
	condition:
		any of ($a_*)
 
}