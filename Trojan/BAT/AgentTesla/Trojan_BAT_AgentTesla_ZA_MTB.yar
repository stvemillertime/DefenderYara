
rule Trojan_BAT_AgentTesla_ZA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_81_0 = {63 62 33 63 36 38 62 64 2d 31 62 62 65 2d 34 37 63 38 2d 61 32 34 61 2d 32 30 62 34 35 62 62 33 37 34 61 65 } //01 00  cb3c68bd-1bbe-47c8-a24a-20b45bb374ae
		$a_81_1 = {53 75 62 74 72 61 63 74 4f 62 6a 65 63 74 } //01 00  SubtractObject
		$a_81_2 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_81_3 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_81_4 = {4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 } //01 00  NewLateBinding
		$a_81_5 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_81_6 = {54 6f 49 6e 74 33 32 } //01 00  ToInt32
		$a_81_7 = {4c 61 74 65 53 65 74 } //01 00  LateSet
		$a_81_8 = {43 6f 6e 76 65 72 73 69 6f 6e 73 } //01 00  Conversions
		$a_81_9 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_10 = {47 65 74 42 79 74 65 73 } //00 00  GetBytes
	condition:
		any of ($a_*)
 
}