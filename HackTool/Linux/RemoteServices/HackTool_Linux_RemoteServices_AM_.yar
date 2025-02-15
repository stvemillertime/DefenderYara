
rule HackTool_Linux_RemoteServices_AM_{
	meta:
		description = "HackTool:Linux/RemoteServices.AM!!WinExeExecution,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_81_0 = {77 69 6e 65 78 65 2e 63 } //01 00  winexe.c
		$a_81_1 = {77 69 6e 65 78 65 5f 6f 75 74 5f 70 69 70 65 5f 73 65 6e 64 } //01 00  winexe_out_pipe_send
		$a_81_2 = {77 69 6e 65 78 65 5f 63 74 72 6c 5f 6f 70 65 6e 65 64 } //01 00  winexe_ctrl_opened
		$a_81_3 = {77 69 6e 65 78 65 20 76 65 72 73 69 6f 6e 20 25 64 } //01 00  winexe version %d
		$a_81_4 = {77 69 6e 65 78 65 73 76 63 2e 65 78 65 } //01 00  winexesvc.exe
		$a_81_5 = {5b 44 4f 4d 41 49 4e 5c 5d 55 53 45 52 4e 41 4d 45 25 50 41 53 53 57 4f 52 44 } //01 00  [DOMAIN\]USERNAME%PASSWORD
		$a_81_6 = {77 69 6e 65 78 65 73 76 63 36 34 5f 65 78 65 } //01 00  winexesvc64_exe
		$a_81_7 = {77 69 6e 65 78 65 73 76 63 5f 6c 61 75 6e 63 68 2e 63 } //01 00  winexesvc_launch.c
		$a_81_8 = {77 69 6e 65 78 65 73 76 63 53 74 61 72 74 } //00 00  winexesvcStart
	condition:
		any of ($a_*)
 
}