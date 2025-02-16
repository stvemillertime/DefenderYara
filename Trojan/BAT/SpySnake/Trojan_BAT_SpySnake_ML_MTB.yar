
rule Trojan_BAT_SpySnake_ML_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.ML!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 73 61 64 61 64 66 67 64 73 2e 64 6c 6c 23 } //01 00  #sadadfgds.dll#
		$a_01_1 = {63 00 68 00 72 00 6f 00 6d 00 5c 00 63 00 68 00 72 00 6f 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  chrom\chrom.exe
		$a_01_2 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  CheckRemoteDebuggerPresent
		$a_01_3 = {49 73 4c 6f 67 67 69 6e 67 } //01 00  IsLogging
		$a_01_4 = {4f 62 66 75 73 63 61 74 65 64 42 79 47 6f 6c 69 61 74 68 } //01 00  ObfuscatedByGoliath
		$a_01_5 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_01_6 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_7 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SpySnake_ML_MTB_2{
	meta:
		description = "Trojan:BAT/SpySnake.ML!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {57 5d a2 c9 09 01 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 5d 00 00 00 0b 00 00 00 32 00 00 00 de 00 00 00 2e 00 00 00 92 } //02 00 
		$a_01_1 = {35 36 31 65 37 61 39 33 2d 64 32 32 32 2d 34 63 62 64 2d 61 62 63 30 2d 35 39 63 37 30 65 38 62 37 34 65 64 } //02 00  561e7a93-d222-4cbd-abc0-59c70e8b74ed
		$a_01_2 = {5f 00 32 00 30 00 34 00 38 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 41 00 70 00 70 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 } //02 00  _2048WindowsFormsApp.Properties
		$a_01_3 = {52 00 75 00 6c 00 65 00 73 00 4f 00 66 00 54 00 68 00 65 00 47 00 61 00 6d 00 65 00 46 00 6f 00 72 00 6d 00 } //02 00  RulesOfTheGameForm
		$a_01_4 = {43 00 41 00 53 00 43 00 58 00 } //00 00  CASCX
	condition:
		any of ($a_*)
 
}