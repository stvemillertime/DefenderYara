
rule Trojan_BAT_AgentTesla_NS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 66 35 32 32 31 31 39 66 2d 66 31 32 66 2d 34 37 36 61 2d 62 36 65 34 2d 32 36 35 35 63 63 38 63 35 62 61 32 } //01 00  $f522119f-f12f-476a-b6e4-2655cc8c5ba2
		$a_01_1 = {52 61 6e 67 65 50 61 72 74 69 74 69 6f 6e 2e 64 6c 6c } //01 00  RangePartition.dll
		$a_01_2 = {57 9d a2 29 09 1e 00 00 00 fa 01 33 00 16 00 00 01 } //01 00 
		$a_01_3 = {47 65 74 50 69 78 65 6c } //01 00  GetPixel
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 73 } //01 00  GetMethods
		$a_01_5 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //00 00  BitConverter
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_NS_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 07 00 "
		
	strings :
		$a_02_0 = {a2 25 17 28 90 02 04 a2 25 18 72 90 02 04 a2 0a 72 90 02 04 0b 28 90 02 04 6f 90 02 04 16 9a 72 90 02 04 18 17 8d 90 02 04 25 16 07 28 90 02 04 28 90 02 04 a2 28 90 02 04 06 28 90 02 04 2a 90 00 } //01 00 
		$a_81_1 = {42 75 6e 69 66 75 2e 55 49 2e 42 75 6e 69 66 75 5f 42 75 74 74 6f 6e } //01 00  Bunifu.UI.Bunifu_Button
		$a_81_2 = {42 75 6e 69 66 75 5f 54 65 78 74 42 6f 78 } //01 00  Bunifu_TextBox
		$a_81_3 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_81_4 = {47 65 74 41 73 73 65 6d 62 6c 69 65 73 } //01 00  GetAssemblies
		$a_81_5 = {47 65 74 44 6f 6d 61 69 6e } //01 00  GetDomain
		$a_81_6 = {41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 32 33 34 35 36 37 } //01 00  ABCDEFGHIJKLMNOPQRSTUVWXYZ234567
		$a_81_7 = {4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 } //00 00  OffsetMarshaler
	condition:
		any of ($a_*)
 
}