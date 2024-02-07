
rule Trojan_Win32_Sednit_A_MSR{
	meta:
		description = "Trojan:Win32/Sednit.A!MSR,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 68 70 2e 64 69 2d 64 70 75 2d 74 65 67 2f 74 63 65 74 6f 72 70 2f 35 34 32 2e 38 37 2e 32 33 2e 34 39 31 2f 2f 3a 70 74 74 68 } //01 00  php.di-dpu-teg/tcetorp/542.87.23.491//:ptth
		$a_01_1 = {65 78 65 2e 65 63 69 76 72 65 73 6c 71 73 5c 65 63 69 76 72 65 53 5c } //01 00  exe.ecivreslqs\ecivreS\
		$a_01_2 = {52 54 2f 20 22 49 55 67 75 62 65 44 5c 74 66 6f 73 6f 72 63 69 4d 5c 73 77 6f 64 6e 69 57 22 20 4e 54 2f 20 34 20 4f 4d 2f 20 45 54 55 4e 49 4d 20 43 53 2f 20 65 74 61 65 72 43 2f 20 73 6b 73 61 74 68 63 73 } //00 00  RT/ "IUgubeD\tfosorciM\swodniW" NT/ 4 OM/ ETUNIM CS/ etaerC/ sksathcs
		$a_01_3 = {00 5d } //04 00  崀
	condition:
		any of ($a_*)
 
}