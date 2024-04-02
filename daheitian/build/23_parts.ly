    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \break
            \time 4/4
            s1 * 1
            ^ \markup {

              \raise #6 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #4 #3 #2 #0 #'(1 . 1)]

              }
            }
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
              %! +SCORE
        %%% \pageBreak
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8..
                                    :64
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "a2" }
                                    [
                                    - \tweak circled-tip ##t
                                    \<
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    g''32
                                    :256
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''16
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''16.
                                    :128
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    g''32
                                    :256
                                    ~
                                    g''16.
                                    :128
                                    )
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''32
                                    :256
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    g''16
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    :64
                                    [
                                    ~
                                    g''32
                                    :256
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''16.
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8
                                    :64
                                    [
                                    ~
                                    f''32
                                    :256
                                      %! +SCORE
                                %%% \repeatTie
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    g''16.
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    :64
                                    [
                                    ~
                                    g''32
                                    :256
                                    )
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''16.
                                    :128
                                    \ff
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8
                                    :64
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    :64
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    :128
                                    )
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f''8.
                                    :64
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''32
                                    :256
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    g''16.
                                    :128
                                    ~
                                    g''16
                                    :128
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''16
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''16.
                                    :128
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    g''32
                                    :256
                                    ~
                                    g''16.
                                    :128
                                    )
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''32
                                    :256
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8
                                    :64
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    :64
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f''8
                                    :64
                                    ]
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    :64
                                    [
                                    ~
                                    g''32
                                    :256
                                    )
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''16.
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''32
                                    :256
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    g''16.
                                    :128
                                    ~
                                    g''16
                                    :128
                                    )
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''16
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    g''16
                                    :128
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''32
                                    :256
                                    [
                                    f''16.
                                    :128
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    :64
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    :128
                                    )
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    f''16
                                    :128
                                    ~
                                    f''32
                                    :256
                                    \revert Staff.Stem.stemlet-length
                                    g''16.
                                    :128
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8
                                    :64
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                    g''16.
                                    :128
                                    )
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f''32
                                    :256
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''8
                                    :64
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        af''16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    :64
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    :128
                                    )
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f''8.
                                    :64
                                    ]
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context divisiStaff = "englishhorn staff"
                            {
                                \context Voice = "englishhorn voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Cor Anglais }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ca. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                        c''4
                                        - \accent
                                        - \staccato
                                        \pppp
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Slaptongue } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \<
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                    \times 6/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \accent
                                        - \staccato
                                        [
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \accent
                                        - \staccato
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                    \times 6/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \accent
                                        - \staccato
                                        \ff
                                        [
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \accent
                                        - \staccato
                                        ]
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \accent
                                        - \staccato
                                        [
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \accent
                                        - \staccato
                                        ]
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \accent
                                        - \staccato
                                        [
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \accent
                                        - \staccato
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                    \times 6/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \accent
                                        - \staccato
                                        [
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        c''8
                                        - \accent
                                        - \staccato
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \accent
                                        - \staccato
                                        ]
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 4/5
                                    {
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                        c''4
                                        - \accent
                                        - \staccato
                                        \stopTextSpan
                                    }
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 2 0))
                                    \times 4/6
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                        \clef "bass"
                                        \tweak style #'cross
                                        b,4
                                        - \accent
                                        - \staccato
                                        \pppp
                                        \<
                                        \once \override Staff.Accidental.stencil = ##f
                                        \tweak style #'cross
                                        b,4
                                        - \accent
                                        - \staccato
                                        \once \override Staff.Accidental.stencil = ##f
                                        \tweak style #'cross
                                        b,4
                                        - \accent
                                        - \staccato
                                        \once \override Staff.Accidental.stencil = ##f
                                        \tweak style #'cross
                                        b,4
                                        - \accent
                                        - \staccato
                                        \once \override Staff.Accidental.stencil = ##f
                                        \tweak style #'cross
                                        b,4
                                        - \accent
                                        - \staccato
                                        \once \override Staff.Accidental.stencil = ##f
                                        \tweak style #'cross
                                        b,4
                                        - \accent
                                        - \staccato
                                    }
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    b,8
                                    - \accent
                                    - \staccato
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    b,8
                                    - \accent
                                    - \staccato
                                    [
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    \ff
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 3 0))
                                    \times 4/6
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,8
                                        - \accent
                                        - \staccato
                                        [
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        \revert Staff.Stem.stemlet-length
                                        bf,8
                                        - \accent
                                        - \staccato
                                        ]
                                        \stemOff
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 3 0))
                                    \times 4/6
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,8
                                        - \accent
                                        - \staccato
                                        [
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,8
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        \revert Staff.Stem.stemlet-length
                                        bf,8
                                        - \accent
                                        - \staccato
                                        ]
                                        \stemOff
                                    }
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \accent
                                    - \staccato
                                    [
                                    \stemOff
                                    \once \override Staff.Accidental.stencil = ##f
                                    \triangleStemOn
                                    \revert Staff.Stem.stemlet-length
                                    bf,8
                                    - \accent
                                    - \staccato
                                    ]
                                    \stemOff
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 4) (ly:make-duration 2 0))
                                    \times 4/6
                                    {
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,4
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,4
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,4
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,4
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,4
                                        - \accent
                                        - \staccato
                                        \stemOff
                                        \once \override Staff.Accidental.stencil = ##f
                                        \triangleStemOn
                                        bf,4
                                        - \accent
                                        - \staccato
                                        \stemOff
                                    }
                                }
                            }
                        }
                    >>
                }
                \tag #'voice6
                {
                    \context Staff = "frenchhorn staff"
                    {
                        \context Voice = "frenchhorn voice"
                        {
                            <<
                                \context Voice = "frenchhorn voice secondary"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \override Staff.MultiMeasureRest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    \voiceOne
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \revert Staff.MultiMeasureRest.transparent
                                }
                                \tag #'einsatz
                                {
                                    \context Voice = "frenchhorn voice cue"
                                    {
                                        \set fontSize = #-3
                                        \voiceTwo
                                        r1
                                        - \tweak padding 0
                                        - \tweak whiteout 1
                                        - \tweak whiteout-style #'outline
                                        ^ \markup \fontsize #4 { \column { \override #'(font-name . "Bodoni72 Bold") \line { EINSATZ: } \line \override #'(font-name . "Bodoni72 Book Italic") { " Ab hier bis Takt 173 Grand Tutti " } } }
                                        \set fontSize = #-0.25
                                    }
                                }
                            >>
                            \oneVoice
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
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
                        \tag #'voice7
                        {
                            \context Staff = "trumpet staff"
                            {
                                \context Voice = "trumpet voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "tenortrombone staff"
                            {
                                \context Voice = "tenortrombone voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice9
                        {
                            \context Staff = "tuba staff"
                            {
                                \context Voice = "tuba voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
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
                        \tag #'voice10
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \once \override TupletBracket.direction = #UP
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                                    \times 8/7
                                    {
                                        \ottava 2
                                        \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                          %! +SCORE
                                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''''16
                                        \pppp
                                        [
                                        \<
                                        g''''16
                                        cs''''16
                                        af''''16
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        af''''16
                                        d''''16
                                        c''''16
                                        e''''16
                                        c''''16
                                        d''''16
                                        c''''16
                                        d''''16
                                        \revert Staff.Stem.stemlet-length
                                        af''''16
                                        ]
                                    }
                                    \once \override TupletBracket.direction = #UP
                                    \once \override TupletBracket.padding = -4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \change Staff = "piano 2 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,16
                                        ^ \accent
                                        [
                                        \change Staff = "piano 1 staff"
                                        af''''16
                                        \ff
                                        d''''16
                                        af''''16
                                        d''''16
                                        af''''16
                                        d''''16
                                        af''''16
                                        d''''16
                                        c''''16
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        g''''16
                                        cs''''16
                                        \revert Staff.Stem.stemlet-length
                                        g''''16
                                        ]
                                    }
                                    \once \override TupletBracket.direction = #UP
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''''16
                                        [
                                        af''''16
                                        cs''''16
                                        af''''16
                                        cs''''16
                                        af''''16
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        c''''16
                                        d''''16
                                        af''''16
                                        cs''''16
                                        af''''16
                                        d''''16
                                        \revert Staff.Stem.stemlet-length
                                        c''''16
                                        ]
                                    }
                                    \once \override TupletBracket.direction = #UP
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e''''32
                                        [
                                        c''''32
                                        \change Staff = "piano 2 staff"
                                        bf,32
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        c''''32
                                        e''''32
                                        c''''32
                                        e''''32
                                        c''''32
                                        e''''32
                                        c''''32
                                        e''''32
                                        c''''32
                                        \change Staff = "piano 2 staff"
                                        bf,32
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        \revert Staff.Stem.stemlet-length
                                        af''''32
                                        ]
                                    }
                                    \once \override TupletBracket.direction = #UP
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''''32
                                        [
                                        af''''32
                                        cs''''32
                                        af''''32
                                        cs''''32
                                        g''''32
                                        cs''''32
                                        af''''32
                                        \change Staff = "piano 2 staff"
                                        bf,32
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        af''''32
                                        d''''32
                                        c''''32
                                        e''''32
                                        \revert Staff.Stem.stemlet-length
                                        c''''32
                                        ]
                                    }
                                    \once \override TupletBracket.direction = #UP
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d''''16
                                        [
                                        c''''16
                                        d''''16
                                        af''''16
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        af''''16
                                        d''''16
                                        af''''16
                                        d''''16
                                        af''''16
                                        d''''16
                                        af''''16
                                        d''''16
                                        \revert Staff.Stem.stemlet-length
                                        c''''16
                                        ]
                                    }
                                    \once \override TupletBracket.direction = #UP
                                    \once \override TupletBracket.padding = -4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                                    \times 8/7
                                    {
                                        \change Staff = "piano 2 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,16
                                        ^ \accent
                                        [
                                        \change Staff = "piano 1 staff"
                                        g''''16
                                        cs''''16
                                        g''''16
                                        cs''''16
                                        af''''16
                                        cs''''16
                                        af''''16
                                        cs''''16
                                        af''''16
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        ^ \accent
                                        \change Staff = "piano 1 staff"
                                        c''''16
                                        d''''16
                                        \revert Staff.Stem.stemlet-length
                                        af''''16
                                        ]
                                        \ottava 0
                                    }
                                }
                            }
                        }
                        \tag #'voice11
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \clef "bass"
                                    s1 * 1
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 1/2
                                    s1 * 1/2
                                    s1 * 3/4
                                    s1 * 1
                                }
                            }
                        }
                    >>
                }
                \tag #'group5
                {
                    \context GrandStaff = "sub group 4"
                    <<
                        \tag #'voice12
                        {
                            \context Staff = "harp 1 staff"
                            {
                                \context Voice = "harp 1 voice"
                                {
                                    \ottava 1
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    <a''' bf''' ds'''' e'''' fs''''>1
                                    :32
                                    \arpeggio
                                    - \tweak circled-tip ##t
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
                                    <a''' bf''' ds'''' e'''' fs''''>2.
                                    :32
                                    \once \override Dots.staff-position = #2
                                    <a''' bf''' ds'''' e'''' fs''''>2.
                                    :32
                                    \ff
                                    \once \override Dots.staff-position = #2
                                    <a''' bf''' ds'''' e'''' fs''''>2
                                    :32
                                    \once \override Dots.staff-position = #2
                                    <a''' bf''' ds'''' e'''' fs''''>2
                                    :32
                                    \once \override Dots.staff-position = #2
                                    <a''' bf''' ds'''' e'''' fs''''>2.
                                    :32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    <a''' bf''' ds'''' e'''' fs''''>1
                                    :32
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice13
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                      %! +SCORE
                                %%% \textSpannerDown
                                      %! +PARTS
                                    \textSpannerDown
                                    \clef "percussion"
                                    \tweak style #'la
                                    c'1
                                      %! +PARTS
                                    - \tweak padding #11
                                      %! +PARTS
                                    - \abjad-solid-line-with-up-hook
                                      %! +PARTS
                                    - \tweak bound-details.left.text \markup \concat { \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 { \center-column { \line { Langsam die mit Draht } \line { umwickelten Saiten mit } \line { einer Plastikkarte Kratzen } } } \hspace #0.5 }
                                      %! +PARTS
                                    - \tweak bound-details.right.padding -4
                                      %! +PARTS
                                    \startTextSpan
                                      %! +SCORE
                                %%% - \tweak padding #8
                                      %! +SCORE
                                %%% - \abjad-solid-line-with-up-hook
                                      %! +SCORE
                                %%% - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Langsam die mit Draht umwickelten Saiten mit einer Plastikkarte Kratzen } \hspace #0.5 }
                                      %! +SCORE
                                %%% - \tweak bound-details.right.padding -4
                                      %! +SCORE
                                %%% \startTextSpan
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
                                    \tweak style #'la
                                    c'2.
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'2.
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'2
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'2
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'2.
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'la
                                    c'1
                                      %! +SCORE
                                %%% \stopTextSpan
                                      %! +PARTS
                                    \stopTextSpan
                                      %! +SCORE
                                %%% \textSpannerUp
                                      %! +PARTS
                                    \textSpannerUp
                                }
                            }
                        }
                    >>
                }
                \tag #'voice14
                {
                    \context Staff = "percussion 1 staff"
                    {
                        \context Voice = "percussion 1 voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \clef "bass"
                            c1
                            :32
                            - \tweak circled-tip ##t
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
                            c2.
                            :32
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            c2.
                            :32
                            \ff
                            - \tweak stencil #constante-hairpin
                            \<
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            c2
                            :32
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            c2
                            :32
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            c2.
                            :32
                            - \tweak circled-tip ##t
                            \>
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            \afterGrace
                            c1
                            :32
                              %! +SCORE
                        %%% \repeatTie
                            {
                                \once \override Flag.stroke-style = #"grace"
                                  %! abjad.glissando(6)
                                \revert Accidental.stencil
                                  %! abjad.glissando(6)
                                \revert NoteColumn.glissando-skip
                                  %! abjad.glissando(6)
                                \revert NoteHead.no-ledgers
                                  %! abjad.glissando(6)
                                \undo \hide NoteHead
                                aqs,16
                                :128
                                \!
                            }
                        }
                    }
                }
                \tag #'group6
                {
                    \context SquareBracketGroup = "sub group 5"
                    <<
                        \tag #'voice15
                        {
                            \context Staff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    \clef "percussion"
                                    c'4
                                    - \accent
                                    \pppp
                                    \<
                                    \boxed-markup "Bangu" 1
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    \ff
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                }
                            }
                        }
                        \tag #'voice16
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    \clef "percussion"
                                    c'4
                                    - \accent
                                    \pppp
                                    \<
                                    \boxed-markup "Amboss mit Hämmerchen" 1
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \accent
                                    [
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    - \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \accent
                                    \mf
                                    [
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    - \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    - \accent
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \accent
                                    [
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    - \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \accent
                                    ]
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                    c'4
                                    - \accent
                                }
                            }
                        }
                    >>
                }
                \tag #'group7
                {
                    \context SquareBracketGroup = "sub group 6"
                    <<
                        \tag #'voice17
                        {
                            \context divisiStaff = "guitar 1 staff"
                            {
                                \context Voice = "guitar 1 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 1 Soli }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 soli }
                                    df'1
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    (
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanThree
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
                                    df'2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    df'2.
                                    \ffff
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    df'2
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    df'2
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    df'2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    df'2...
                                      %! +SCORE
                                %%% \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    aqf16
                                    )
                                    \stopTextSpanThree
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    r4
                                    df'8
                                    - \twist-bow
                                    \pppp
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "Tutti" }
                                    \<
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    r4
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    \ff
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    r4
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                    df'8
                                    - \twist-bow
                                    r8
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context divisiStaff = "guitar 2 staff"
                            {
                                \context Voice = "guitar 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 2 Soli }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 soli }
                                    a1
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    (
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanThree
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
                                    a2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    a2.
                                    \ffff
                                      %! +SCORE
                                %%% \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    gs2
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
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gs2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gs2...
                                      %! +SCORE
                                %%% \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    aqf16
                                    )
                                    \stopTextSpanThree
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    a4.
                                    - \twist-bow
                                    \pppp
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "Tutti" }
                                    \<
                                    r16
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    a16
                                    - \twist-bow
                                    ~
                                    a4
                                    ~
                                    a16
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                    a8
                                    - \twist-bow
                                    ~
                                    a4
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                    a8.
                                    - \twist-bow
                                    ~
                                    a8.
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                    a4.
                                    - \twist-bow
                                    \ff
                                    r16
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    a16
                                    - \twist-bow
                                    ~
                                    a4
                                    ~
                                    a16
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                    a4.
                                    - \twist-bow
                                    r16
                                    a8.
                                    - \twist-bow
                                    ~
                                    a8.
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                    a4.
                                    - \twist-bow
                                    r16
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    a16
                                    - \twist-bow
                                    ~
                                    a4
                                    ~
                                    a16
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                    a4.
                                    - \twist-bow
                                    r16
                                    a8.
                                    - \twist-bow
                                    ~
                                    a8.
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
                                }
                            }
                        }
                        \tag #'voice21
                        {
                            \context divisiStaff = "guitar 3 staff"
                            {
                                \context Voice = "guitar 3 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratsche Soli }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. soli }
                                    aqf1
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    (
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanThree
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
                                    aqf2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    aqf2
                                    \ffff
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    aqf8
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert divisiStaff.Stem.stemlet-length
                                    a8
                                    ]
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
                                    a2
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    a2
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    a2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    a2...
                                      %! +SCORE
                                %%% \repeatTie
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    aqs16
                                    )
                                    \stopTextSpanThree
                                }
                            }
                        }
                        \tag #'voice22
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \clef "altovarC"
                                    r4.
                                    gs8
                                    - \twist-bow
                                    \pppp
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "Tutti" }
                                    \<
                                    ~
                                    gs8
                                      %! +SCORE
                                %%% \repeatTie
                                    r8
                                    gs4
                                    - \twist-bow
                                    r8
                                    gs8
                                    - \twist-bow
                                    ~
                                    gs8
                                      %! +SCORE
                                %%% \repeatTie
                                    r8
                                    gs4
                                    - \twist-bow
                                    \ff
                                    r2
                                    gs4
                                    - \twist-bow
                                    r8
                                    gs8
                                    - \twist-bow
                                    ~
                                    gs8
                                      %! +SCORE
                                %%% \repeatTie
                                    r8
                                    gs4
                                    - \twist-bow
                                    r8
                                    gs8
                                    - \twist-bow
                                    ~
                                    gs8
                                      %! +SCORE
                                %%% \repeatTie
                                    r8
                                    r4.
                                    gs8
                                    - \twist-bow
                                    ~
                                    gs8
                                      %! +SCORE
                                %%% \repeatTie
                                    r8
                                    gs4
                                    - \twist-bow
                                    r8
                                    gs8
                                    - \twist-bow
                                    ~
                                    gs8
                                      %! +SCORE
                                %%% \repeatTie
                                    r8
                                }
                            }
                        }
                        \tag #'voice23
                        {
                            \context divisiStaff = "guitar 4 staff"
                            {
                                \context Voice = "guitar 4 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello Soli }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. soli }
                                    af1
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    (
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanThree
                                    \<
                                    ~
                                    af2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    af2.
                                    \ffff
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    af2
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    af2
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    af2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    af2...
                                      %! +SCORE
                                %%% \repeatTie
                                    af16
                                    )
                                    \stopTextSpanThree
                                }
                            }
                        }
                        \tag #'voice24
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "bass"
                                    r4.
                                    af8
                                    - \twist-bow
                                    \pppp
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "Tutti" }
                                    \<
                                    r4
                                    af8
                                    - \twist-bow
                                    r8
                                    r8
                                    af8
                                    - \twist-bow
                                    r4
                                    af8
                                    - \twist-bow
                                    \ff
                                    r8
                                    r2
                                    af8
                                    - \twist-bow
                                    r8
                                    r8
                                    af8
                                    - \twist-bow
                                    r4
                                    af8
                                    - \twist-bow
                                    r8
                                    r8
                                    af8
                                    - \twist-bow
                                    r2
                                    r8
                                    af8
                                    - \twist-bow
                                    r4
                                    af8
                                    - \twist-bow
                                    r8
                                    r8
                                    af8
                                    - \twist-bow
                                    r4
                                }
                            }
                        }
                        \tag #'voice25
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    <<
                                        \context Voice = "contrabass voice temp"
                                        {
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                              %! +SCORE
                                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                            \clef "bass"
                                            \voiceTwo
                                            a,1
                                            - \tweak circled-tip ##t
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
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \ff
                                            - \tweak stencil #constante-hairpin
                                            \<
                                            \once \override Dots.staff-position = #2
                                            a,2
                                            \once \override Dots.staff-position = #2
                                            a,2
                                            \once \override Dots.staff-position = #2
                                            a,2.
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
                                            a,2...
                                            r16
                                            \!
                                        }
                                        \context Voice = "contrabass divisi voice"
                                        {
                                            \voiceOne
                                            \tweak style #'cross
                                            af'1
                                            - \tweak padding #16.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { {} \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpan
                                              %! abjad.glissando(7)
                                            \glissando
                                            ^ (
                                            ^ \<
                                            \once \override Dots.staff-position = #2
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            af'2.
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af'2.
                                            ^ \ffff
                                            \stopTextSpan
                                            - \tweak padding #16.5
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -1.5
                                            \startTextSpan
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
                                            af'2
                                            \once \override Dots.staff-position = #2
                                            af'2
                                            \once \override Dots.staff-position = #2
                                            af'2.
                                            \once \override Dots.staff-position = #2
                                            af'2...
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            af'16
                                            )
                                            \stopTextSpan
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
