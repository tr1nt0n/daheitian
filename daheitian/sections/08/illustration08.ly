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
            \bar ".|:"
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"96"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #3 #4 #2 #0 #'(1 . 1)]

              }
            }
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \middle-fermata
            \bar ":|."
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                                    f'4
                                    - \tenuto
                                    \mp
                                    - \tweak padding 5
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    f'2
                                    - \tenuto
                                    f'4
                                    - \tenuto
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                    }
                                    }
                                    f'4
                                    - \tenuto
                                    \!
                                    )
                                    r2
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                            R1 * 1/4
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                        \tag #'voice12
                        {
                            \context Staff = "harp 1 staff"
                            {
                                \context Voice = "harp 1 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
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
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 1/4
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
                            R1 * 1/4
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
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
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice16
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        \staff-line-count 1
                                        \revert Staff.Clef.stencil
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                        \clef "percussion"
                                        c'2
                                        - \tenuto
                                        \pppp
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \boxed-markup "Tam-Tam mit Bogen" 1
                                        c'4
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        c'4.
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        - \tenuto
                                    }
                                    c'4
                                    - \tenuto
                                    \!
                                    r2
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
                        \tag #'voice17
                        {
                            \context divisiStaff = "guitar 1 staff"
                            {
                                \context Voice = "guitar 1 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 1 Soli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 1 Soli }
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
                                    R1 * 1/4
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
                                    c'1
                                    \pp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen und enden }
                                    - \tweak padding #3
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'2
                                    \!
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geige 2 Soli }
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
                                    R1 * 1/4
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
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    \clef "percussion"
                                    c'1
                                    \pp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -10.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    \stopTextSpan
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \staff-line-count 5
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Clef.stencil
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    gqs16
                                    - \tweak padding 6
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    ]
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    ^ (
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
                                    gqs4..
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    aqf16
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                    )
                                    \stopTextSpanOne
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratsche Soli }
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
                                    R1 * 1/4
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
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \clef "percussion"
                                    c'2
                                    \pp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #6
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -8
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'8
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "altovarC"
                                    gs4.
                                    - \tweak padding 5
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    (
                                    - \tweak padding #6
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gs16
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
                                    aqf8.
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf8.
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
                                    ]
                                    gs4
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
                                    gs4..
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
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                    )
                                    \stopTextSpanOne
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncello Soli }
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
                                    R1 * 1/4
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
                                    \staff-line-count 1
                                    \revert Staff.Clef.stencil
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "percussion"
                                    c'2
                                    \pp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen }
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -8
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'8
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                    \staff-line-count 5
                                    \revert Staff.Clef.stencil
                                    \clef "bass"
                                    gs4.
                                    - \tweak padding 3
                                    ^ \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { "1. soli" }
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { {  } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
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
                                    gs2.
                                    \once \override Dots.staff-position = #2
                                    gs4..
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    gs16
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                    \stopTextSpanOne
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    c'1
                                    \pp
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Abrupt beginnen und enden }
                                    - \tweak padding #3
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    c'2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'2
                                    \!
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
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
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
