
rule PWS_Win32_Behz_A{
	meta:
		description = "PWS:Win32/Behz.A,SIGNATURE_TYPE_PEHSTR,07 00 07 00 08 00 00 03 00 "
		
	strings :
		$a_01_0 = {5c 00 42 00 65 00 68 00 7a 00 61 00 64 00 20 00 50 00 73 00 5c 00 } //01 00  \Behzad Ps\
		$a_01_1 = {52 00 61 00 73 00 44 00 69 00 61 00 6c 00 50 00 61 00 72 00 61 00 6d 00 73 00 21 00 } //01 00  RasDialParams!
		$a_01_2 = {5c 00 49 00 6e 00 69 00 74 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  \Init32.exe
		$a_01_3 = {6b 00 65 00 79 00 20 00 6c 00 6f 00 67 00 65 00 72 00 } //01 00  key loger
		$a_01_4 = {6b 00 68 00 61 00 7a 00 61 00 6d 00 61 00 2e 00 63 00 6f 00 6d 00 } //01 00  khazama.com
		$a_01_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 20 00 41 00 6c 00 74 00 2b 00 43 00 72 00 74 00 6c 00 2b 00 44 00 65 00 6c 00 } //01 00  Disable Alt+Crtl+Del
		$a_01_6 = {53 00 65 00 6e 00 64 00 20 00 41 00 6c 00 6c 00 20 00 48 00 54 00 4d 00 4c 00 20 00 50 00 61 00 73 00 73 00 20 00 26 00 26 00 20 00 49 00 44 00 } //01 00  Send All HTML Pass && ID
		$a_01_7 = {42 65 68 7a 61 64 2d 50 53 20 69 73 20 42 65 73 74 20 50 61 73 73 77 6f 72 64 20 53 65 6e 64 65 72 20 46 6f 72 20 3a } //00 00  Behzad-PS is Best Password Sender For :
	condition:
		any of ($a_*)
 
}