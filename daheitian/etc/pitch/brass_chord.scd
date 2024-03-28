s.boot;
s.quit;

(
	// horner
		Pbind(
			\freq, Pseq(
				[
					[
						220.0 * 13/4,
						220.0 * 18/7,
					],
				],
			),
			\dur, Pseq(
				[
					8 * 3,
					8 * 3,
				]
			,1),
			\amp, 0.5,
			\legato, 1,
		).play;
	// trompetten
		Pbind(
			\freq, Pseq(
				[
					[
						698.4564628660078,
						587.3295358348151,
					],
				],
			),
			\dur, Pseq(
				[
					8 * 3,
					8 * 3,
				]
			,1),
			\amp, 0.5,
			\legato, 1,
		).play;
	// posaune
		Pbind(
			\freq, Pseq(
				[
					[
						220.0 * 64/21,
						220.0 * 22/9,
					],
				],
			),
			\dur, Pseq(
				[
					8 * 3,
					8 * 3,
				]
			,1),
			\amp, 0.5,
			\legato, 1,
		).play;
	// tuben
		Pbind(
			\freq, Pseq(
				[
					[
						116.54094037952248,
						61.7354126570155,
					],
				],
			),
			\dur, Pseq(
				[
					8 * 3,
				]
			,1),
			\amp, 1.5,
			\legato, 1,
		).play;
)