
rule Trojan_BAT_Remcos_FR_MTB{
	meta:
		description = "Trojan:BAT/Remcos.FR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {16 0a 2b 1b 00 7e 90 01 03 04 06 7e 90 01 03 04 06 91 20 a5 02 00 00 59 d2 9c 00 06 17 58 0a 06 7e 90 01 03 04 8e 69 fe 04 0b 07 2d d7 90 00 } //01 00 
		$a_81_1 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //01 00  GetResponseStream
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_3 = {41 57 58 41 57 46 57 41 32 } //01 00  AWXAWFWA2
		$a_81_4 = {53 41 46 46 57 41 46 32 } //00 00  SAFFWAF2
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Remcos_FR_MTB_2{
	meta:
		description = "Trojan:BAT/Remcos.FR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 15 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 6f 63 6b 53 74 79 6c 65 } //01 00  DockStyle
		$a_81_1 = {73 65 74 5f 53 65 72 76 69 63 65 4e 61 6d 65 } //01 00  set_ServiceName
		$a_81_2 = {45 6e 63 6f 64 65 4e 65 74 62 69 6f 73 4e 61 6d 65 } //01 00  EncodeNetbiosName
		$a_81_3 = {50 61 63 6b 65 74 4d 61 74 63 68 } //01 00  PacketMatch
		$a_81_4 = {43 6f 6d 70 75 74 65 48 61 73 68 } //01 00  ComputeHash
		$a_81_5 = {70 61 63 6b 65 74 48 65 61 64 65 72 } //01 00  packetHeader
		$a_81_6 = {52 43 32 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  RC2CryptoServiceProvider
		$a_81_7 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_81_8 = {53 74 72 69 6e 67 42 75 69 6c 64 65 72 } //01 00  StringBuilder
		$a_81_9 = {4e 65 74 77 6f 72 6b 54 6f 48 6f 73 74 4f 72 64 65 72 } //01 00  NetworkToHostOrder
		$a_81_10 = {57 65 62 42 72 6f 77 73 65 72 } //01 00  WebBrowser
		$a_81_11 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //01 00  BitConverter
		$a_81_12 = {67 65 74 5f 45 6d 61 69 6c 53 65 72 76 65 72 } //01 00  get_EmailServer
		$a_81_13 = {5f 65 6d 61 69 6c 53 65 72 76 65 72 } //01 00  _emailServer
		$a_81_14 = {47 65 74 41 6c 6c 4e 65 74 77 6f 72 6b 49 6e 74 65 72 66 61 63 65 73 } //01 00  GetAllNetworkInterfaces
		$a_81_15 = {47 65 74 50 68 79 73 69 63 61 6c 41 64 64 72 65 73 73 } //01 00  GetPhysicalAddress
		$a_81_16 = {52 43 32 44 65 63 72 79 70 74 } //01 00  RC2Decrypt
		$a_81_17 = {54 68 72 65 61 64 53 74 61 72 74 } //01 00  ThreadStart
		$a_81_18 = {53 65 6e 64 4e 65 74 62 69 6f 73 51 75 65 72 79 } //01 00  SendNetbiosQuery
		$a_81_19 = {56 4d 77 61 72 65 20 56 69 72 74 75 61 6c 20 45 74 68 65 72 6e 65 74 20 41 64 61 70 74 65 72 } //01 00  VMware Virtual Ethernet Adapter
		$a_81_20 = {52 65 76 65 72 73 65 } //00 00  Reverse
	condition:
		any of ($a_*)
 
}