  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
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
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #1 #"96" ) Rit. } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #3 #2 #0 #'(1 . 1)]  } }
            \startTextSpan
            \time 12/8
            s1 * 3/2
            \stopTextSpan
            \time 3/4
            s1 * 3/4
            - \tweak padding #11.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" ) Rit. } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #1 #"48" [\abjad-metric-modulation-tuplet-lhs #2 #0 #6 #5 #2 #0 #'(1 . 1)]  } }
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context divisiStaff = "englishhorn staff"
                            {
                                \context Voice = "englishhorn voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Cor Anglais }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ca. }
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    \mp
                                    [
                                    \<
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    r8.
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    )
                                    [
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    f'16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    f'8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                    }
                                    }
                                    f'8.
                                    - \tenuto
                                    )
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'8.
                                    - \tenuto
                                    [
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    - \tenuto
                                    [
                                    ~
                                    f'16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                    }
                                    }
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override divisiStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    )
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    f'16
                                    \revert divisiStaff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    \ff
                                    ]
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \clef "treble"
                                    c''16
                                    - \tenuto
                                    - \tweak padding 3
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        fs''16
                                        (
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    )
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
                                    ~
                                    c''16
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    \ff
                                    ]
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice5
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r2.
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    - \tweak padding 2
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    [
                                    - \tweak circled-tip ##t
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    - \tenuto
                                    [
                                    ~
                                    bf16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    )
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    \ff
                                    ]
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                              %! +SCORE
                            \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice11
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    <<
                                        \context Voice = "harp 1 voice secondary"
                                        {
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.MultiMeasureRest.transparent = ##t
                                            \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                            \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            \voiceOne
                                            R1 * 1/2
                                              %! +SCORE
                                            \stopStaff \startStaff
                                            \revert Staff.MultiMeasureRest.transparent
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 1
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 3/2
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 3/4
                                              %! +SCORE
                                            \stopStaff \startStaff
                                        }
                                        \tag #'einsatz
                                        {
                                            \context Voice = "harp 1 voice cue"
                                            {
                                                  %! +SCORE
                                                \once \override Staff.BarLine.transparent = ##f
                                                  %! +SCORE
                                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                                  %! +SCORE
                                                \once \override Staff.TimeSignature.transparent = ##t
                                                  %! +SCORE
                                                \once \override MultiMeasureRest.transparent = ##t
                                                R1 * 1/2
                                                  %! +SCORE
                                                \stopStaff \startStaff
                                                  %! +SCORE
                                                \once \override Staff.BarLine.transparent = ##f
                                                  %! +SCORE
                                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                                  %! +SCORE
                                                \once \override Staff.TimeSignature.transparent = ##t
                                                  %! +SCORE
                                                \once \override MultiMeasureRest.transparent = ##t
                                                R1 * 1
                                                  %! +SCORE
                                                \stopStaff \startStaff
                                                  %! +SCORE
                                                \once \override Staff.BarLine.transparent = ##f
                                                  %! +SCORE
                                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                                  %! +SCORE
                                                \once \override Staff.TimeSignature.transparent = ##t
                                                  %! +SCORE
                                                \once \override MultiMeasureRest.transparent = ##t
                                                R1 * 3/2
                                                  %! +SCORE
                                                \stopStaff \startStaff
                                                r8.
                                                \staff-line-count 5
                                                \revert Staff.Clef.stencil
                                                \set fontSize = #-3
                                                \clef "treble"
                                                c''16
                                                - \tenuto
                                                - \tweak padding 0
                                                - \tweak whiteout 1
                                                - \tweak whiteout-style #'outline
                                                ^ \markup \fontsize #4 { \column { \override #'(font-name . "Bodoni72 Bold") \line { EINSATZ: } \line \override #'(font-name . "Bodoni72 Book Italic") { " Bassklarinette ( 1. soli ) " } } }
                                                - \tweak circled-tip ##t
                                                \<
                                                ~
                                                \override Staff.Stem.stemlet-length = 0.75
                                                c''16
                                                [
                                                \scaleDurations #'(1 . 1) {
                                                \slashedGrace {
                                                    fs''16
                                                    (
                                                }
                                                }
                                                \revert Staff.Stem.stemlet-length
                                                c''8.
                                                - \tenuto
                                                ]
                                                ~
                                                \override Staff.Stem.stemlet-length = 0.75
                                                c''16
                                                )
                                                [
                                                c''16
                                                - \tenuto
                                                ~
                                                c''16
                                                \revert Staff.Stem.stemlet-length
                                                c''16
                                                - \tenuto
                                                \ff
                                                ]
                                                \set fontSize = #-0.25
                                            }
                                        }
                                    >>
                                    \oneVoice
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
                        \tag #'voice13
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                              %! +SCORE
                            \stopStaff \startStaff
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
                                    <<
                                        \context Voice = "percussion 2 voice secondary"
                                        {
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                            \override Staff.MultiMeasureRest.transparent = ##t
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            \voiceOne
                                            R1 * 1/2
                                              %! +SCORE
                                            \stopStaff \startStaff
                                            \revert Staff.MultiMeasureRest.transparent
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 1
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 3/2
                                              %! +SCORE
                                            \stopStaff \startStaff
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override Staff.TimeSignature.transparent = ##t
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 3/4
                                              %! +SCORE
                                            \stopStaff \startStaff
                                        }
                                        \tag #'einsatz
                                        {
                                            \context Voice = "percussion 2 voice cue"
                                            {
                                                  %! +SCORE
                                                \once \override Staff.BarLine.transparent = ##f
                                                  %! +SCORE
                                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                                  %! +SCORE
                                                \once \override Staff.TimeSignature.transparent = ##t
                                                  %! +SCORE
                                                \once \override MultiMeasureRest.transparent = ##t
                                                R1 * 1/2
                                                  %! +SCORE
                                                \stopStaff \startStaff
                                                  %! +SCORE
                                                \once \override Staff.BarLine.transparent = ##f
                                                  %! +SCORE
                                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                                  %! +SCORE
                                                \once \override Staff.TimeSignature.transparent = ##t
                                                  %! +SCORE
                                                \once \override MultiMeasureRest.transparent = ##t
                                                R1 * 1
                                                  %! +SCORE
                                                \stopStaff \startStaff
                                                  %! +SCORE
                                                \once \override Staff.BarLine.transparent = ##f
                                                  %! +SCORE
                                                \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                                  %! +SCORE
                                                \once \override Staff.TimeSignature.transparent = ##t
                                                  %! +SCORE
                                                \once \override MultiMeasureRest.transparent = ##t
                                                R1 * 3/2
                                                  %! +SCORE
                                                \stopStaff \startStaff
                                                r8.
                                                \staff-line-count 5
                                                \revert Staff.Clef.stencil
                                                \set fontSize = #-3
                                                \clef "treble"
                                                c''16
                                                - \tenuto
                                                - \tweak padding 0
                                                - \tweak whiteout 1
                                                - \tweak whiteout-style #'outline
                                                ^ \markup \fontsize #4 { \column { \override #'(font-name . "Bodoni72 Bold") \line { EINSATZ: } \line \override #'(font-name . "Bodoni72 Book Italic") { " Bassklarinette ( 1. soli ) " } } }
                                                - \tweak circled-tip ##t
                                                \<
                                                ~
                                                \override Staff.Stem.stemlet-length = 0.75
                                                c''16
                                                [
                                                \scaleDurations #'(1 . 1) {
                                                \slashedGrace {
                                                    fs''16
                                                    (
                                                }
                                                }
                                                \revert Staff.Stem.stemlet-length
                                                c''8.
                                                - \tenuto
                                                ]
                                                ~
                                                \override Staff.Stem.stemlet-length = 0.75
                                                c''16
                                                )
                                                [
                                                c''16
                                                - \tenuto
                                                ~
                                                c''16
                                                \revert Staff.Stem.stemlet-length
                                                c''16
                                                - \tenuto
                                                \ff
                                                ]
                                                \set fontSize = #-0.25
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    r2
                                    r32
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \clef "percussion"
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
                        \tag #'voice16
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
                                        \revert Staff.Clef.stencil
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                          %! +SCORE
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
                                      %! +SCORE
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
                                          %! +SCORE
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
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
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
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
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
                                      %! +SCORE
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
                                    \revert Staff.Clef.stencil
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
                        \tag #'voice17
                        {
                            \context divisiStaff = "guitar 1 staff"
                            {
                                \context Voice = "guitar 1 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 1 Soli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 soli }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                      %! +SCORE
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
                        \tag #'voice19
                        {
                            \context divisiStaff = "guitar 2 staff"
                            {
                                \context Voice = "guitar 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 2 Soli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 soli }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \staff-line-count 1
                                      %! +SCORE
                                    \override Staff.BarLine.bar-extent = #'(-0.01 . 0.01)
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    \clef "percussion"
                                    c'2
                                    \ppp
                                    - \tweak padding 0
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "Tutti" }
                                    ^ \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'1
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'4.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'4
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    \stopTextSpan
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \staff-line-count 5
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                      %! +SCORE
                                    \revert Staff.BarLine.bar-extent
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    gqs16
                                    - \tweak padding 8
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    ]
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
                                          %! +SCORE
                                        \repeatTie
                                        ~
                                        \once \override Dots.staff-position = #2
                                        gqs4..
                                        \p
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                          %! +SCORE
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
                                    }
                                }
                            }
                        }
                        \tag #'voice21
                        {
                            \context divisiStaff = "guitar 3 staff"
                            {
                                \context Voice = "guitar 3 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratsche Soli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. soli }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \clef "altovarC"
                                    gs2
                                    \ppp
                                    - \tweak padding 3
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2.5
                                    \startTextSpanOne
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
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gs8
                                      %! +SCORE
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
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    aqf4
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf16
                                    [
                                      %! +SCORE
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
                                      %! +SCORE
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
                                          %! +SCORE
                                        \repeatTie
                                        ~
                                        \once \override Dots.staff-position = #2
                                        gs4..
                                        \p
                                        \stopTextSpanOne
                                        - \tweak circled-tip ##t
                                        \>
                                          %! +SCORE
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
                                    }
                                }
                            }
                        }
                        \tag #'voice23
                        {
                            \context divisiStaff = "guitar 4 staff"
                            {
                                \context Voice = "guitar 4 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello Soli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. soli }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "bass"
                                    gs2
                                    \ppp
                                    - \tweak padding 5
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -75.5
                                    \startTextSpanOne
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
                                    }
                                }
                            }
                        }
                        \tag #'voice25
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                      %! +SCORE
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
                                      %! +SCORE
                                    \repeatTie
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
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
}
