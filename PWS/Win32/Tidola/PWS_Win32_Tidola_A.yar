
rule PWS_Win32_Tidola_A{
	meta:
		description = "PWS:Win32/Tidola.A,SIGNATURE_TYPE_PEHSTR_EXT,58 00 57 00 12 00 00 0a 00 "
		
	strings :
		$a_00_0 = {46 69 6e 64 52 65 73 6f 75 72 63 65 41 } //0a 00  FindResourceA
		$a_00_1 = {53 65 72 76 69 63 65 44 6c 6c } //0a 00  ServiceDll
		$a_00_2 = {52 65 6c 65 61 73 65 4d 75 74 65 78 } //0a 00  ReleaseMutex
		$a_00_3 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 } //0a 00  SYSTEM\CurrentControlSet\Services\%s
		$a_00_4 = {73 66 63 5f 6f 73 2e 64 6c 6c } //0a 00  sfc_os.dll
		$a_00_5 = {64 6c 6c 63 61 63 68 65 5c 72 70 63 73 73 2e 64 6c 6c } //0a 00  dllcache\rpcss.dll
		$a_00_6 = {2e 2e 5c 53 65 72 76 69 63 65 50 61 63 6b 46 69 6c 65 73 5c 69 33 38 36 5c 72 70 63 73 73 2e 64 6c 6c } //0a 00  ..\ServicePackFiles\i386\rpcss.dll
		$a_00_7 = {72 70 63 73 73 2e 64 6c 6c } //01 00  rpcss.dll
		$a_03_8 = {65 78 70 6c 7e 24 90 02 02 6f 72 65 72 2e 65 78 65 90 00 } //01 00 
		$a_00_9 = {2f 70 6f 73 74 2e 61 73 70 } //01 00  /post.asp
		$a_00_10 = {2f 6d 69 62 61 6f 2e 61 73 70 } //01 00  /mibao.asp
		$a_00_11 = {73 70 63 73 73 2e 64 6c 6c } //01 00  spcss.dll
		$a_00_12 = {63 73 72 73 73 2e 64 6c 6c } //01 00  csrss.dll
		$a_00_13 = {72 73 73 2e 65 78 65 45 76 65 6e 74 } //01 00  rss.exeEvent
		$a_01_14 = {2e 61 64 64 00 } //01 00 
		$a_00_15 = {63 73 72 73 73 2e 65 78 65 4d 75 74 65 78 } //01 00  csrss.exeMutex
		$a_00_16 = {25 73 25 30 32 78 2a 2e 64 6c 6c } //01 00  %s%02x*.dll
		$a_00_17 = {73 70 63 73 73 2e 47 65 74 52 50 43 53 53 49 6e 66 6f } //00 00  spcss.GetRPCSSInfo
	condition:
		any of ($a_*)
 
}