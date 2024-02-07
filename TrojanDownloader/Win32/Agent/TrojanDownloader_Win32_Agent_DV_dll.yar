
rule TrojanDownloader_Win32_Agent_DV_dll{
	meta:
		description = "TrojanDownloader:Win32/Agent.DV!dll,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //01 00  LookupPrivilegeValueA
		$a_01_1 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //01 00  AdjustTokenPrivileges
		$a_01_2 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //01 00  OpenProcessToken
		$a_01_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_4 = {47 6c 6f 62 61 6c 46 69 6e 64 41 74 6f 6d 41 } //01 00  GlobalFindAtomA
		$a_01_5 = {73 73 70 70 6f 6f 6f 6f 6c 6c 73 73 76 76 } //01 00  ssppoooollssvv
		$a_01_6 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00  SeDebugPrivilege
		$a_01_7 = {33 36 30 74 72 61 79 2e 65 78 65 } //01 00  360tray.exe
		$a_01_8 = {33 36 30 53 61 66 65 2e 65 78 65 } //01 00  360Safe.exe
		$a_01_9 = {61 6e 74 69 61 72 70 2e 65 78 65 } //00 00  antiarp.exe
	condition:
		any of ($a_*)
 
}