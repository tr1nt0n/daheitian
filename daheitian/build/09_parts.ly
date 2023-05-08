    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 2/4
            s1 * 1/2
            \time 4/4
            s1 * 1
            - \tweak padding #11.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #1 #"96" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #3 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 12/8
            s1 * 3/2
            \stopTextSpan
            \time 3/4
            s1 * 3/4
            - \tweak padding #11.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #1 #"48" [\abjad-metric-modulation-tuplet-lhs #2 #0 #6 #5 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 4/4
            s1 * 1
            \stopTextSpan
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'group2
                {
                    \context SquareBracketGroup = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "flute staff"
                            {
                                \context Voice = "flute voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    \mf
                                    [
                                    - \tweak padding #5.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    r8.
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \repeatTie
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    [
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf8.
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    bf8.
                                    - \tenuto
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    r8.
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    - \tenuto
                                    [
                                    ~
                                    bf16
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    [
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \repeatTie
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    \ff
                                    \stopTextSpan
                                    ]
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r8.
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #5.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                    \repeatTie
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
                                    ~
                                    c''16
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    \ff
                                    \stopTextSpan
                                    ]
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r2.
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    [
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #5.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    r8.
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    - \tenuto
                                    [
                                    ~
                                    bf16
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    [
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \repeatTie
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    \ff
                                    \stopTextSpan
                                    ]
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice5
                {
                    \context Staff = "frenchhorn staff"
                    {
                        \context Voice = "frenchhorn voice"
                        {
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 1
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 3/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 1
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group3
                {
                    \context SquareBracketGroup = "sub group 2"
                    <<
                        \tag #'voice6
                        {
                            \context Staff = "trumpet staff"
                            {
                                \context Voice = "trumpet voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "tenortrombone staff"
                            {
                                \context Voice = "tenortrombone voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \clef "bass"
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,4
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        c,16
                                        \ff
                                    }
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "tuba staff"
                            {
                                \context Voice = "tuba voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context GrandStaff = "sub group 3"
                    <<
                        \tag #'voice9
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group5
                {
                    \context GrandStaff = "sub group 4"
                    <<
                        \tag #'voice11
                        {
                            \context Staff = "harp 1 staff"
                            {
                                \context Voice = "harp 1 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r2
                                    r32
                                    \ottava 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g''' a''' bf''' ds'''' e''''>16.
                                    :128
                                    \arpeggio
                                    [
                                    - \tweak circled-tip ##t
                                    _ \<
                                      %! abjad.glissando(7)
                                    \glissando
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <g''' a''' bf''' ds'''' e''''>32
                                    :256
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    <g''' a''' bf''' ds'''' e''''>16.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ppp +"))
                                    :128
                                    ]
                                    - \tweak circled-tip ##t
                                    _ \>
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    <g''' a''' bf''' ds'''' e''''>32
                                    :256
                                    \!
                                    ]
                                    \ottava 0
                                    r8..
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice13
                {
                    \context Staff = "percussion 1 staff"
                    {
                        \context Voice = "percussion 1 voice"
                        {
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 1
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 3/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            R1 * 1
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group6
                {
                    \context SquareBracketGroup = "sub group 5"
                    <<
                        \tag #'voice14
                        {
                            \context Staff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r2
                                    r32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16.
                                    :128
                                    [
                                    - \tweak circled-tip ##t
                                    _ \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "Triangel" 1
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    c'32
                                    :256
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    c'16.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ppp +"))
                                    :128
                                    ]
                                    - \tweak circled-tip ##t
                                    _ \>
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    c'32
                                    :256
                                    \!
                                    ]
                                    r8..
                                }
                            }
                        }
                        \tag #'voice15
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \staff-line-count 1
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                        \clef "percussion"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        - \tenuto
                                        \ppp
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        c'8.
                                        - \tenuto
                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    c'16
                                    \repeatTie
                                    r8.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \tenuto
                                    ]
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                        \repeatTie
                                        c'8
                                        - \tenuto
                                        \revert Staff.Stem.stemlet-length
                                        c'8.
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \repeatTie
                                    \once \override Tie.transparent = ##f
                                    c'16
                                    - \tenuto
                                    ~
                                    c'16
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \repeatTie
                                    \once \override Tie.transparent = ##f
                                    c'16
                                    - \tenuto
                                    ~
                                    c'16
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) (ly:make-duration 4 0))
                                    \times 12/11
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        - \tenuto
                                        [
                                        c'8.
                                        - \tenuto
                                        \revert Staff.Stem.stemlet-length
                                        c'8.
                                        - \tenuto
                                        ]
                                        r8.
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \tenuto
                                    ]
                                    c'4
                                    - \tenuto
                                    \!
                                    r2
                                    r32
                                    \staff-line-count 5
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16.
                                    :128
                                    [
                                    - \tweak circled-tip ##t
                                    _ \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "Glockenspiel" 1
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    a32
                                    :256
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    a16.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ppp +"))
                                    :128
                                    ]
                                    - \tweak circled-tip ##t
                                    _ \>
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    a32
                                    :256
                                    \!
                                    ]
                                    r8..
                                }
                            }
                        }
                    >>
                }
                \tag #'group7
                {
                    \context SquareBracketGroup = "sub group 6"
                    <<
                        \tag #'voice16
                        {
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    \staff-line-count 1
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    \clef "percussion"
                                    c'2
                                    \ppp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    c'1
                                    \once \override Dots.staff-position = #2
                                    c'1.
                                    \once \override Dots.staff-position = #2
                                    c'2.
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        \once \override Dots.staff-position = #2
                                        c'4.
                                        \<
                                        \once \override Dots.staff-position = #2
                                        c'4.
                                        \once \override Dots.staff-position = #2
                                        c'4..
                                        \p
                                        - \tweak circled-tip ##t
                                        \>
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        \!
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \staff-line-count 1
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    \clef "percussion"
                                    c'2
                                    \ppp
                                    ^ \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'1
                                    \repeatTie
                                    ~
                                    c'2.
                                    \repeatTie
                                    ~
                                    c'4.
                                    \repeatTie
                                    ~
                                    c'4
                                    \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    \stopTextSpan
                                    [
                                    \repeatTie
                                    \staff-line-count 5
                                    \once \override Tie.transparent = ##f
                                    \override Staff.BarLine.bar-extent = #'(-2 . 2)
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    gqs16
                                    ]
                                    - \tweak padding #11
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gqs2.
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        \once \override Dots.staff-position = #2
                                        gqs4.
                                        \<
                                        ^ (
                                        ~
                                        \once \override Dots.staff-position = #2
                                        gqs4.
                                        \repeatTie
                                        ~
                                        \once \override Dots.staff-position = #2
                                        gqs4..
                                        \p
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                        \repeatTie
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        aqf16
                                        \!
                                        )
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \clef "altovarC"
                                    gs2
                                    \ppp
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2.5
                                    \startTextSpanOne
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gs2
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gs8
                                    \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    aqf4.
                                    (
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    aqf4.
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    aqf4
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf16
                                    [
                                    \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    gs16
                                    )
                                    \stopTextSpanOne
                                    ]
                                    gs2.
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gs2.
                                    \repeatTie
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        \once \override Dots.staff-position = #2
                                        gs4.
                                        (
                                        \<
                                        ~
                                        \once \override Dots.staff-position = #2
                                        gs4.
                                        \repeatTie
                                        ~
                                        \once \override Dots.staff-position = #2
                                        gs4..
                                        \p
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                        \repeatTie
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gqs16
                                        \!
                                        )
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "bass"
                                    gs2
                                    \ppp
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -75.5
                                    \startTextSpanOne
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gs1
                                    \once \override Dots.staff-position = #2
                                    gs1.
                                    \stopTextSpanOne
                                    \once \override Dots.staff-position = #2
                                    gs2.
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        \once \override Dots.staff-position = #2
                                        gs4.
                                        \<
                                        \once \override Dots.staff-position = #2
                                        gs4.
                                        \once \override Dots.staff-position = #2
                                        gs4..
                                        \p
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gs16
                                        \!
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \staff-line-count 1
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \clef "percussion"
                                    c'2
                                    \ppp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -40
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'1
                                    \repeatTie
                                    \staff-line-count 5
                                    \clef "treble"
                                    \tweak style #'cross
                                    gs'1.
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gs'2.
                                    \stopTextSpan
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gs'4.
                                        - \tweak padding #10.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpan
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \once \override Dots.staff-position = #2
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        gs'4.
                                        \once \override Dots.staff-position = #2
                                        gs'4..
                                        \p
                                        \stopTextSpan
                                        - \tweak circled-tip ##t
                                        \>
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gs'16
                                        \!
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
