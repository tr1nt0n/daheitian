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
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak padding #-11
            ^ \markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( bis Klavierresonanz } \line { \underline {fast} aufhört ) } }
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.uverylongfermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
              }
            }
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"60"
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
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
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                            R1 * 1/4
                            R1 * 3/4
                            R1 * 1/2
                            R1 * 3/4
                            R1 * 1/2
                            R1 * 3/4
                            R1 * 3/4
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 5/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "tenortrombone staff"
                            {
                                \context Voice = "tenortrombone voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "tuba staff"
                            {
                                \context Voice = "tuba voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \ottava -1
                                    \clef "bass"
                                    a,,,4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffffffffff"))
                                    - \accent
                                    \laissezVibrer
                                    \ottava 0
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                            R1 * 1/4
                            R1 * 3/4
                            R1 * 1/2
                            R1 * 3/4
                            R1 * 1/2
                            R1 * 3/4
                            R1 * 3/4
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 1
                            R1 * 5/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice15
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
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
                                    R1 * 1/4
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 1/2
                                    R1 * 3/4
                                    R1 * 3/4
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 1
                                    R1 * 5/4
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    R1 * 1/4
                                    <<
                                        \context Voice = "contrabass voice temp"
                                        {
                                            \clef "bass"
                                            \voiceTwo
                                            a,2.
                                            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "die Dynamik des Klaviers anpassen"))
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
                                            a,2
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            a,2
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \f
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a,2.
                                            ~
                                            a,2
                                              %! +SCORE
                                            \repeatTie
                                        }
                                        \context Voice = "contrabass divisi voice"
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \voiceOne
                                            c'8.
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8.
                                            r8.
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ^ \markup \concat { \upright \fraction 3° A \hspace #0.5 }
                                            ~
                                            \startTrillSpan a,
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e8
                                            \stopTrillSpan
                                            r8
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
}
