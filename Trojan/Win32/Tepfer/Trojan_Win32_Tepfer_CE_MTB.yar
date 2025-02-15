
rule Trojan_Win32_Tepfer_CE_MTB{
	meta:
		description = "Trojan:Win32/Tepfer.CE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {81 fe ce 0d 26 09 0f 8f b0 01 00 00 46 81 fe 9c b3 61 36 7c af } //01 00 
		$a_01_1 = {46 81 fe b6 2d bc 1e 7c b8 } //01 00 
		$a_01_2 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //01 00  GetTickCount
		$a_01_3 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //01 00  VirtualAlloc
		$a_01_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00  IsDebuggerPresent
	condition:
		any of ($a_*)
 
}