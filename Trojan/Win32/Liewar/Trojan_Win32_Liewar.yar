
rule Trojan_Win32_Liewar{
	meta:
		description = "Trojan:Win32/Liewar,SIGNATURE_TYPE_PEHSTR,24 00 22 00 2a 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 73 6f 66 74 20 4e 65 74 77 6f 72 6b 20 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  Microsoft Network Information
		$a_01_1 = {4d 69 63 72 6f 73 6f 66 74 20 57 69 6e 64 6f 77 73 20 41 6c 65 72 74 } //01 00  Microsoft Windows Alert
		$a_01_2 = {53 70 79 77 61 72 65 20 44 65 74 65 63 74 65 64 20 6f 6e 20 79 6f 75 72 20 50 43 2e } //01 00  Spyware Detected on your PC.
		$a_01_3 = {52 65 6d 6f 76 65 20 69 74 20 6e 6f 77 3f } //01 00  Remove it now?
		$a_01_4 = {67 61 79 20 61 6e 61 6c 20 73 65 78 } //01 00  gay anal sex
		$a_01_5 = {69 6e 74 65 72 6e 65 74 20 70 6f 6b 65 72 } //01 00  internet poker
		$a_01_6 = {6f 6e 6c 69 6e 65 20 63 61 73 69 6e 6f } //01 00  online casino
		$a_01_7 = {68 79 64 72 6f 63 6f 64 6f 6e 65 } //01 00  hydrocodone
		$a_01_8 = {61 64 69 70 65 78 } //01 00  adipex
		$a_01_9 = {78 61 6e 61 78 } //01 00  xanax
		$a_01_10 = {63 61 72 20 69 6e 73 75 72 61 6e 63 65 } //01 00  car insurance
		$a_01_11 = {76 61 6c 69 75 6d } //01 00  valium
		$a_01_12 = {6f 6e 6c 69 6e 65 20 70 68 61 72 6d 61 63 79 } //01 00  online pharmacy
		$a_01_13 = {66 69 6f 72 69 63 65 74 } //01 00  fioricet
		$a_01_14 = {6f 6e 6c 69 6e 65 20 67 61 6d 62 6c 69 6e 67 } //01 00  online gambling
		$a_01_15 = {63 69 61 6c 69 73 } //01 00  cialis
		$a_01_16 = {61 75 74 6f 20 69 6e 73 75 72 61 6e 63 65 } //01 00  auto insurance
		$a_01_17 = {62 75 79 20 70 68 65 6e 74 65 72 6d 69 6e 65 } //01 00  buy phentermine
		$a_01_18 = {64 65 62 74 20 63 6f 6e 73 6f 6c 69 64 61 74 69 6f } //01 00  debt consolidatio
		$a_01_19 = {6c 6f 72 74 61 62 } //01 00  lortab
		$a_01_20 = {72 65 66 69 6e 61 6e 63 65 } //01 00  refinance
		$a_01_21 = {68 6f 6d 65 20 6c 6f 61 6e } //01 00  home loan
		$a_01_22 = {74 65 78 61 73 20 68 6f 6c 64 65 6d } //01 00  texas holdem
		$a_01_23 = {61 69 72 6c 69 6e 65 20 74 69 63 6b 65 74 73 } //01 00  airline tickets
		$a_01_24 = {64 69 65 74 20 70 69 6c 6c 73 } //01 00  diet pills
		$a_01_25 = {61 6d 62 69 65 6e } //01 00  ambien
		$a_01_26 = {70 61 72 74 79 20 70 6f 6b 65 72 } //01 00  party poker
		$a_01_27 = {72 69 6e 67 74 6f 6e 65 } //01 00  ringtone
		$a_01_28 = {61 69 72 6c 69 6e 65 73 } //01 00  airlines
		$a_01_29 = {63 61 72 69 73 6f 70 72 6f 64 6f 6c } //01 00  carisoprodol
		$a_01_30 = {6d 6f 72 74 67 61 67 65 20 72 61 74 65 73 } //01 00  mortgage rates
		$a_01_31 = {62 75 79 20 76 69 61 67 72 61 } //01 00  buy viagra
		$a_01_32 = {62 75 79 20 63 69 61 6c 69 73 } //01 00  buy cialis
		$a_01_33 = {61 69 72 20 70 75 72 69 66 69 65 72 73 } //01 00  air purifiers
		$a_01_34 = {62 75 73 69 6e 65 73 73 } //01 00  business
		$a_01_35 = {77 68 61 74 20 69 73 20 76 69 63 6f 64 69 6e } //01 00  what is vicodin
		$a_01_36 = {6f 6e 6c 69 6e 65 20 63 61 73 69 6e 6f 73 } //01 00  online casinos
		$a_01_37 = {6c 61 73 20 76 65 67 61 73 20 68 6f 74 65 6c 73 } //01 00  las vegas hotels
		$a_01_38 = {73 65 61 72 63 68 31 2e 70 68 70 3f 71 71 3d 25 73 } //01 00  search1.php?qq=%s
		$a_01_39 = {68 74 74 70 3d 68 74 74 70 3a 2f 2f 31 32 37 2e 30 2e 30 2e 31 3a 38 30 38 30 } //01 00  http=http://127.0.0.1:8080
		$a_01_40 = {49 6e 74 65 72 6e 65 74 20 43 6f 6e 6e 65 63 74 69 6f 6e 20 57 69 7a 61 72 64 } //01 00  Internet Connection Wizard
		$a_01_41 = {73 68 6f 77 32 2e 70 68 70 3f 69 64 3d } //00 00  show2.php?id=
	condition:
		any of ($a_*)
 
}