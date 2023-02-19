s.boot;
s.quit;

(
	// voice 1
		Pbind(
			\freq, Pseq(
				[
					[
				// basses 2
						55,
				// basses 1
				        55 * 3,
					],
				],
			),
			\dur, Pseq(
				[
					30
				]
			,1),
			\amp, 0.125,
			\legato, 1,
		).play;
	// voice 2
		Pbind(
			\freq, Pseq(
				[
					[
				// fundamental
				        220,
				// cellos 2 trill
				        220 * 11,
				// cellos 1
				        220 * 13,
					],
				],
			),
			\dur, Pseq(
				[
					30
				]
			,1),
			\amp, 0.125,
			\legato, 1,
		).play;
	// voice 3
		Pbind(
			\freq, Pseq(
				[
					[
				       // fundamental
				        440,
				       // violas 2 trill
				        440 * 3,
				     // violas 1 trill
				        440 * 4,
				     // violins 2b trill
				        440 * 6,
				     // violins 2a trill
				        440 * 7,
				     // violins 1 trill
				        440 * 9,
					],
				],
			),
			\dur, Pseq(
				[
					30,
				]
			,1),
			\amp, 0.125,
			\legato, 1,
		).play;
	// voice 4
	)