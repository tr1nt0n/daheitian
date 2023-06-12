  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.14"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.14"
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
            \tweak text \markup \center-column {"12" "8"} \startMeasureSpanner
            \bar ".|:"
            \once \override Score.TimeSignature.stencil = #(ghost-time-signature-one)
            \time 8/8
            s1 * 1
            ^ \markup {
              \raise #12 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #1 #1 #"51"
              }
            }
            \once \override Score.TimeSignature.stencil = #(ghost-time-signature-two)
            \set Score.repeatCommands = #'((volta "1"))
            \time 4/8
            s1 * 1/2
            \stopMeasureSpanner
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \noBreak
            \time 1/4
            R1 * 1/4
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.ufermata" }
            \bar ":|."
            \set Score.repeatCommands = #'((volta #f))
            \once \override Score.BarLine.transparent = ##f
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                    g''4
                                    - \tenuto
                                    \f
                                    g''8
                                    g''4.
                                    - \tenuto
                                    f''4
                                    - \tenuto
                                    f''8
                                    ef''4.
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    ef''4.
                                    \f
                                    (
                                    d''4.
                                    )
                                    bf'4
                                    (
                                    ~
                                    bf'8
                                      %! +SCORE
                                    \repeatTie
                                    c''4.
                                    )
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                    c'''4.
                                    - \tenuto
                                    \f
                                    c'''4
                                    - \tenuto
                                    c'''8
                                    bf''4
                                    - \tenuto
                                    ~
                                    bf''8
                                      %! +SCORE
                                    \repeatTie
                                    a''4.
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    \clef "bass"
                                    ef4
                                    - \tenuto
                                    \f
                                    ef8
                                    d4
                                    - \tenuto
                                    d8
                                    d4
                                    - \tenuto
                                    d8
                                    c4.
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            \clef "bass"
                            <bf, bf>4
                            - \tenuto
                            \f
                            <c bf>8
                            <d a>4.
                            - \tenuto
                            ~
                            <d a>4
                              %! +SCORE
                            \repeatTie
                            ~
                            <d a>8
                              %! +SCORE
                            \repeatTie
                            <d g>4.
                            - \tenuto
                            - \tweak circled-tip ##t
                            \>
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                            \!
                              %! +SCORE
                            \stopStaff \startStaff
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
                                    \key ef \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    <ef' ef''>8
                                    - \tenuto
                                    \f
                                    r4
                                    r4.
                                    <ef' ef''>4
                                    - \tenuto
                                    <ef' ef''>8
                                    <ef' ef''>4.
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                        \tag #'voice9
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                        \tag #'voice11
                        {
                            \context Staff = "harp 1 staff"
                            {
                                \context Voice = "harp 1 voice"
                                {
                                    \key ef \major
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    <ef'' ef'''>4.
                                    - \accent
                                    \ff
                                    \laissezVibrer
                                    r4.
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                    \staff-line-count 5
                                    \key ef \major
                                    \clef "bass"
                                    <ef, ef>4.
                                    - \accent
                                    \laissezVibrer
                                    r4.
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \clef "bass"
                            ef8
                            - \accent
                            \f
                            \laissezVibrer
                            r4
                            ef4
                            - \tweak circled-tip ##t
                            \>
                            ef8
                            ef4
                            ef8
                            ef4.
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                            \!
                              %! +SCORE
                            \stopStaff \startStaff
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
                                    \key ef \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    \clef "treble"
                                    <bf' g''>4.
                                    \f
                                    \laissezVibrer
                                    \boxed-markup "Glockenspiel" 1
                                    r4.
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice15
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                    \staff-line-count 1
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    \clef "percussion"
                                    c'4.
                                    \f
                                    \laissezVibrer
                                    r4.
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \key ef \major
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    ef'''4.
                                    \ff
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-9 \center-column { \line { Tutto ciò che è romantico } \line { all'interno del corpo } } }
                                    (
                                    d'''4.
                                    )
                                    bf''4
                                    ~
                                    bf''8
                                      %! +SCORE
                                    \repeatTie
                                    g''4.
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    <<
                                        \context Voice = "violin 2 voice temp"
                                        {
                                            \key ef \major
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                            \voiceTwo
                                            bf'4.
                                            :32
                                            \f
                                            bf'8
                                            [
                                            g''16
                                            (
                                            f''16
                                            ef''16
                                            d''16
                                            ]
                                            c''16
                                            )
                                            [
                                            d''16
                                            (
                                            c''16
                                            bf'16
                                            af'16
                                            fs'16
                                            )
                                            ]
                                            g'4.
                                            :32
                                            - \tweak circled-tip ##t
                                            \>
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 1/4
                                            \!
                                              %! +SCORE
                                            \stopStaff \startStaff
                                        }
                                        \context Voice = "violin 2 divisi voice"
                                        {
                                            \voiceOne
                                            <bf''' c''''>4.
                                            :32
                                            - \espressivo
                                            \boxed-markup "Molto flaut., Doppelgriff" 1
                                            bf'8
                                            [
                                            g''16
                                            (
                                            f''16
                                            ef''16
                                            d''16
                                            ]
                                            c''16
                                            )
                                            [
                                            d''16
                                            (
                                            c''16
                                            bf'16
                                            af'16
                                            fs'16
                                            )
                                            ]
                                            <bf''' c''''>4.
                                            :32
                                            - \espressivo
                                            \boxed-markup "( sim )" 1
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 1/4
                                              %! +SCORE
                                            \stopStaff \startStaff
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    <<
                                        \context Voice = "viola voice temp"
                                        {
                                            \key ef \major
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                            \voiceTwo
                                            bf4.
                                            :32
                                            \f
                                            d'8
                                            [
                                            d''16
                                            (
                                            c''16
                                            bf'16
                                            af'16
                                            ]
                                            g'16
                                            [
                                            fs'16
                                            )
                                            g'16
                                            (
                                            f'16
                                            ef'16
                                            d'16
                                            )
                                            ]
                                            c'4.
                                            :32
                                            - \tweak circled-tip ##t
                                            \>
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 1/4
                                            \!
                                              %! +SCORE
                                            \stopStaff \startStaff
                                        }
                                        \context Voice = "viola divisi voice"
                                        {
                                            \voiceOne
                                            <ef''' f'''>4.
                                            :32
                                            - \espressivo
                                            \boxed-markup "Molto flaut., Doppelgriff" 1
                                            d'8
                                            [
                                            d''16
                                            (
                                            c''16
                                            bf'16
                                            af'16
                                            ]
                                            g'16
                                            [
                                            fs'16
                                            )
                                            g'16
                                            (
                                            f'16
                                            ef'16
                                            d'16
                                            )
                                            ]
                                            <ef''' f'''>4.
                                            :32
                                            - \espressivo
                                            \boxed-markup "( sim )" 1
                                              %! +SCORE
                                            \once \override Staff.BarLine.transparent = ##f
                                              %! +SCORE
                                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                              %! +SCORE
                                            \once \override MultiMeasureRest.transparent = ##t
                                            R1 * 1/4
                                              %! +SCORE
                                            \stopStaff \startStaff
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \key ef \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "bass"
                                    ef,4.
                                    \f
                                    g,4.
                                    ~
                                    g,4
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    g,8
                                      %! +SCORE
                                    \repeatTie
                                    c,4.
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \key ef \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \clef "bass"
                                    ef,4.
                                    \f
                                    g,4.
                                    ~
                                    g,4
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    g,8
                                      %! +SCORE
                                    \repeatTie
                                    c4.
                                    - \tweak circled-tip ##t
                                    \>
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \!
                                      %! +SCORE
                                    \stopStaff \startStaff
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
