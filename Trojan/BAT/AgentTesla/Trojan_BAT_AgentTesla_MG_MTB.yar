
rule Trojan_BAT_AgentTesla_MG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {16 0a 2b 27 7e 13 00 00 04 06 7e 13 00 00 04 06 9a 19 28 90 01 03 0a 72 cf 00 00 70 72 d3 00 00 70 6f 90 01 03 0a a2 06 17 58 0a 06 7e 13 00 00 04 8e 69 32 cf 90 00 } //01 00 
		$a_01_1 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_01_2 = {4b 69 6c 6c 50 72 6f 63 73 } //01 00  KillProcs
		$a_01_3 = {52 75 6e 43 6c 69 65 6e 74 } //01 00  RunClient
		$a_01_4 = {50 61 73 73 77 6f 72 64 } //01 00  Password
		$a_01_5 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //00 00  DownloadFile
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_MG_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 ff b6 ff 09 0f 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 1f 02 00 00 41 01 00 00 23 06 } //01 00 
		$a_01_1 = {53 74 6f 70 54 68 72 65 61 64 } //01 00  StopThread
		$a_01_2 = {61 64 64 5f 50 61 73 73 77 6f 72 64 43 68 61 6e 67 65 64 } //01 00  add_PasswordChanged
		$a_01_3 = {43 6c 69 70 62 6f 61 72 64 } //01 00  Clipboard
		$a_01_4 = {67 65 74 5f 50 61 73 73 77 6f 72 64 } //01 00  get_Password
		$a_01_5 = {5f 73 65 6e 64 45 6d 6f 74 65 } //01 00  _sendEmote
		$a_01_6 = {49 73 42 6f 74 52 75 6e 6e 69 6e 67 } //01 00  IsBotRunning
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_8 = {54 61 6b 65 53 63 72 65 65 6e 73 68 6f 74 54 6f 50 61 74 68 } //01 00  TakeScreenshotToPath
		$a_01_9 = {67 65 74 5f 56 69 72 74 75 61 6c 53 63 72 65 65 6e } //00 00  get_VirtualScreen
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_MG_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {0d 14 13 04 00 72 90 01 01 00 00 70 28 90 01 03 0a 13 05 11 05 14 fe 03 13 06 11 06 2c 5f 00 11 05 6f 90 01 03 0a 13 04 11 04 14 fe 03 13 07 11 07 2c 49 00 11 04 6f 90 01 03 0a 0c 73 90 01 01 00 00 0a 0d 20 00 04 00 00 8d 2b 00 00 01 13 08 00 08 11 08 16 11 08 8e 69 6f 90 01 03 0a 13 09 09 11 08 16 11 09 6f 90 01 03 0a 00 07 11 09 58 0b 00 11 09 16 fe 02 13 0a 11 0a 2d d3 90 00 } //01 00 
		$a_01_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_2 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_3 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_4 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_6 = {45 78 63 65 70 74 69 6f 6e } //01 00  Exception
		$a_01_7 = {57 65 62 52 65 71 75 65 73 74 } //00 00  WebRequest
	condition:
		any of ($a_*)
 
}