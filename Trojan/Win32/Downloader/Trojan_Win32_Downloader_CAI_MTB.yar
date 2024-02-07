
rule Trojan_Win32_Downloader_CAI_MTB{
	meta:
		description = "Trojan:Win32/Downloader.CAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {68 74 74 70 3a 2f 2f 61 70 69 2e 64 6c 73 6f 66 74 2e 6b 69 74 74 79 79 77 2e 63 6f 6d } //01 00  http://api.dlsoft.kittyyw.com
		$a_01_1 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_81_2 = {25 73 5c 25 73 2e 64 6c 6c } //01 00  %s\%s.dll
		$a_01_3 = {73 74 61 74 69 63 5f 64 6f 77 6e 6c 6f 61 64 65 72 } //01 00  static_downloader
		$a_81_4 = {68 74 74 70 3a 2f 2f 65 72 6c 6e 78 2e 35 31 64 75 6f 6b 61 69 2e 63 6f 6d } //01 00  http://erlnx.51duokai.com
		$a_81_5 = {68 74 74 70 3a 2f 2f 7a 78 2e 74 63 6f 75 6e 2e 6b 69 74 74 79 79 77 2e 63 6f 6d 2f 63 6f 75 6e 74 2e 64 6f } //01 00  http://zx.tcoun.kittyyw.com/count.do
		$a_81_6 = {68 74 74 70 3a 2f 2f 64 6c 64 69 72 31 2e 71 71 2e 63 6f 6d 2f 71 71 74 76 2f 61 7a 64 6b 2f 71 6c 69 6e 73 74 2e 69 6e 69 } //01 00  http://dldir1.qq.com/qqtv/azdk/qlinst.ini
		$a_01_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 } //00 00  URLDownloadToFileW
	condition:
		any of ($a_*)
 
}