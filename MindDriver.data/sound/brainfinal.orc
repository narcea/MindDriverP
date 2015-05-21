sr = 44100
kr = 4410
ksmps = 10
nchnls = 2


instr 1

	ipinkdb = ampdbfs(p8)
	iocsildb = ampdbfs(p7)
	ifmdepth = (p5 - p4) / 2
	ifmrate = 1 / p6

	;this makes white noise, see noise
	awhite noise ipinkdb
	;this filters the while noise into pink noise, see pinkish
	apink pinkish awhite, 1, 0, 0, 1

	;this this generates the frequency offset to produce the beat tones, see linseg
	kbeat linseg p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, p39, p40, p41, p42, p43, p44, p45, p46, p47, p48, p49, p50, p51, p52, p53, p54, p55, p56, p57


 	kpch lfo	ifmdepth, ifmrate
	a1 foscil	iocsildb, p4 + (kpch + ifmdepth), 1, 2, .5, 1
	a2 foscil	iocsildb, p4 + kbeat + (kpch + ifmdepth), 1, 2, .5, 1

	outs a1 + (apink), a2 + (apink)

endin