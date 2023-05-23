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
            \time 2/4
            s1 * 1/2
            - \tweak padding #14
            ^ \markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { I. 天（ 一 ）}
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                    <cs''' a'''>4
                                    - \staccato
                                    \f
                                    r8.
                                    \ottava 1
                                    \set fontSize = #-3
                                    g''''64
                                    - \flageolet
                                    \pppp
                                    [
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    ]
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \key c \major
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    - \flageolet
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    - \flageolet
                                    \!
                                    )
                                    \ottava 0
                                    \set fontSize = #-0.25
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                    <<
                                        \context Voice = "oboe voice temp"
                                        {
                                            \key a \major
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                            \voiceTwo
                                            cs''4
                                            - \staccato
                                            \f
                                            r4
                                            r2
                                        }
                                        \context Voice = "oboe divisi voice"
                                        {
                                            \voiceOne
                                            a''2
                                            ^ \f
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            ~
                                            \key c \major
                                            a''4
                                              %! +SCORE
                                            \repeatTie
                                            r4
                                            \!
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \key b \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                    <ds''' b'''>4
                                    - \staccato
                                    \f
                                    \boxed-markup "( Höchste Tonhöhe darf instabil sein )" 1
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    \clef "bass"
                                    <a cs'>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                            \key e \major
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            <e' e''>4
                            - \staccato
                            \f
                            r4
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \key c \major
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    <a' a''>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "bass"
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "bass"
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key a \major
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key a \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "bass"
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                            \key a \major
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \clef "bass"
                            <a,>4
                            - \staccato
                            \f
                            r4
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \key c \major
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \staff-line-count 1
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "percussion"
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \staff-line-count 1
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "percussion"
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    <a e' cs'' a''>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    <a e' cs'' a''>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \clef "altovarC"
                                    <a e' a'>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "bass"
                                    <a,>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
                                    \key a \major
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \clef "bass"
                                    <a,>4
                                    - \staccato
                                    \f
                                    r4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \key c \major
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
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
