
rule Ransom_Win32_Filecoder_RT_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 12 00 00 01 00 "
		
	strings :
		$a_81_0 = {50 61 73 73 77 6f 72 64 47 65 6e 65 72 61 74 6f 72 } //01 00  PasswordGenerator
		$a_81_1 = {53 74 72 69 6e 67 42 75 69 6c 64 65 72 } //01 00  StringBuilder
		$a_81_2 = {45 6e 63 72 79 70 74 53 74 61 72 74 } //01 00  EncryptStart
		$a_81_3 = {43 72 79 70 74 6f 53 74 72 65 61 6d } //01 00  CryptoStream
		$a_81_4 = {46 69 6e 61 6c 6c 79 54 68 65 45 6e 63 72 79 70 74 69 6f 6e } //01 00  FinallyTheEncryption
		$a_81_5 = {57 65 62 43 6c 69 65 6e 74 } //01 00  WebClient
		$a_81_6 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_81_7 = {52 65 73 6f 75 72 63 65 4d 61 6e 61 67 65 72 } //01 00  ResourceManager
		$a_81_8 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  RSACryptoServiceProvider
		$a_81_9 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_81_10 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00  CompressionMode
		$a_81_11 = {66 69 6c 65 3a 2f 2f } //01 00  file://
		$a_81_12 = {4c 6f 63 61 74 69 6f 6e } //01 00  Location
		$a_81_13 = {52 65 73 6f 75 72 63 65 41 } //01 00  ResourceA
		$a_81_14 = {56 69 72 74 75 61 6c } //01 00  Virtual
		$a_81_15 = {44 65 62 75 67 67 65 72 20 44 65 74 65 63 74 65 64 } //01 00  Debugger Detected
		$a_81_16 = {55 70 6c 6f 61 64 56 61 6c 75 65 73 } //01 00  UploadValues
		$a_81_17 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  ToBase64String
	condition:
		any of ($a_*)
 
}