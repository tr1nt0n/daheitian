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
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.ufermata" }
            \once \override Score.BarLine.transparent = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #3 #2 #0 #'(1 . 1)]
              }
            }
            \time 2/4
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 12/8
            s1 * 3/2
            \time 2/4
            s1 * 1/2
            \time 3/2
            s1 * 3/2
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #4 #5 #2 #0 #'(1 . 1)]
              }
            }
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #4 #2 #0 #'(1 . 1)]
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
            \time 2/4
            s1 * 1/2
            - \tweak padding #11.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #1 #"144" [\abjad-metric-modulation-tuplet-lhs #3 #0 #4 #5 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \once \override Score.TimeSignature.stencil = ##f
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    \ottava 1
                                    \set fontSize = #-3
                                    g''''64
                                    - \flageolet
                                    \pp
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    \mf
                                    [
                                    - \tweak padding #6.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    f'4
                                    - \tenuto
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    )
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    \stopTextSpan
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    - \tenuto
                                    \f
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    f'8
                                    )
                                    r8
                                    r16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    - \tenuto
                                    [
                                    ~
                                    f'16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    f'16
                                    )
                                      %! +SCORE
                                    \repeatTie
                                    r8.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    f'8
                                    - \tenuto
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    f'8
                                    - \tenuto
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    f'8
                                    - \tenuto
                                    )
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    f'8.
                                    - \tenuto
                                    r16
                                    r8
                                    f'8
                                    - \tenuto
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    f'4
                                    - \tenuto
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    - \tenuto
                                    [
                                    \<
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    f'8
                                    r8
                                    r16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    - \tenuto
                                    [
                                    ~
                                    f'16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    f'16
                                    )
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    r8.
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
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
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    f'8.
                                    - \tenuto
                                    r16
                                    r8
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    f'8
                                    - \tenuto
                                    )
                                    f'4
                                    - \tenuto
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    \ffff
                                    ]
                                    \boxed-markup "( zu Oboe )" 1
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    - \tenuto
                                    \mf
                                    [
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        fs''16
                                        (
                                        \glissando
                                    }
                                    }
                                    c''4
                                    - \tenuto
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    - \tenuto
                                    ]
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
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
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
                                    ~
                                    c''16
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        fs''16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    )
                                    \stopTextSpan
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
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
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
                                    ~
                                    c''16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    - \tenuto
                                    \f
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        fs''16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
                                    ~
                                    c''8
                                    )
                                    r8
                                    r16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    - \tenuto
                                    [
                                    ~
                                    c''16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
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
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    - \tenuto
                                    ~
                                    c''16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        fs''16
                                        (
                                        \glissando
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    ~
                                    c''16
                                    )
                                      %! +SCORE
                                    \repeatTie
                                    r8.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    c''4
                                    - \tenuto
                                    ~
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                          %! +SCORE
                                        \repeatTie
                                        c''4
                                        - \tenuto
                                    }
                                    c''4
                                    - \tenuto
                                    ~
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                          %! +SCORE
                                        \repeatTie
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                        c''4
                                        - \tenuto
                                        )
                                    }
                                    c''8
                                    - \tenuto
                                    ~
                                    c''8
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                          %! +SCORE
                                        \repeatTie
                                        c''4
                                        - \tenuto
                                    }
                                    c''4
                                    - \tenuto
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        - \tenuto
                                        c''8
                                        - \tenuto
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    c''4
                                    - \tenuto
                                    c''4
                                    - \tenuto
                                    r4
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        - \tenuto
                                        \<
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    c''4
                                    )
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    c''4
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        r8
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        r4
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                        c''4
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        )
                                          %! +SCORE
                                        \repeatTie
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        c''4
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                          %! +SCORE
                                        \repeatTie
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        c''4
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                          %! +SCORE
                                        \repeatTie
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        c''4
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                          %! +SCORE
                                        \repeatTie
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                        c''4
                                        - \tenuto
                                        )
                                    }
                                    c''4
                                    - \tenuto
                                    c''4
                                    - \tenuto
                                    r4
                                    \ffff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    \mf
                                    [
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                    bf4
                                    - \tenuto
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    \stopTextSpan
                                    ]
                                    r8.
                                      %! +SCORE
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
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    )
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
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
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
                                    bf8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    \f
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    bf8
                                    )
                                    r8
                                    bf4
                                    - \tenuto
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    bf8
                                    r8
                                    r16
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
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf8.
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    )
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf8.
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
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    )
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    bf8
                                    r8
                                    r16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    - \tenuto
                                    [
                                    \<
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
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    )
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
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
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
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    bf8.
                                    - \tenuto
                                    r16
                                    r8
                                    bf8
                                    - \tenuto
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                    bf4
                                    - \tenuto
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    \ffff
                                    ]
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
                            \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
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
                            R1 * 3/2
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
                            \highest
                            \once \override NoteHead.no-ledgers = ##t
                            \override Staff.Stem.stemlet-length = 0.75
                            c'''8.
                            :64
                            \ff
                            [
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Bewegen die Ventile schnell und wahllos. } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            \once \override NoteHead.no-ledgers = ##t
                            c'''16
                            :128
                            \f
                            \once \override NoteHead.no-ledgers = ##t
                            c'''16
                            :128
                            - \accent
                            - \staccato
                            \ff
                            \once \override NoteHead.no-ledgers = ##t
                            c'''8
                            :64
                            \mf
                            \>
                            \once \override NoteHead.no-ledgers = ##t
                            \revert Staff.Stem.stemlet-length
                            c'''16
                                _ #(make-dynamic-script (markup #:whiteout #:italic "pf"))
                            :128
                            - \accent
                            - \staccato
                            ]
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                            \times 16/20
                            {
                                \once \override NoteHead.no-ledgers = ##t
                                c'''2
                                :32
                                - \tweak circled-tip ##t
                                \<
                                \once \override NoteHead.no-ledgers = ##t
                                c'''16
                                :128
                                - \accent
                                - \staccato
                                \fff
                                \stopTextSpan
                                \revert-noteheads
                                r2
                                r8.
                            }
                            \clef "bass"
                            ef2.
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fpp"))
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
                            ef2
                            \once \override Dots.staff-position = #2
                            ef2.
                            \once \override Dots.staff-position = #2
                            ef2
                            \once \override Dots.staff-position = #2
                            ef2.
                            \once \override Dots.staff-position = #2
                            ef2
                            \once \override Dots.staff-position = #2
                            ef2
                            \once \override Dots.staff-position = #2
                            ef2
                            \once \override Dots.staff-position = #2
                            \afterGrace
                            ef2.
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
                                ef16
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                            }
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r8
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \clef "bass"
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,16
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                    }
                                    r8.
                                    r16
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,16
                                    [
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    c,16
                                    ]
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    }
                                    r8.
                                    r16
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                    }
                                    r8
                                    r4.
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,16
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                    }
                                    r16
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,8.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                    }
                                    r16
                                    r4.
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,8
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    }
                                    r4.
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,4
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,16
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    }
                                    r8.
                                    r8
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,4
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
                                    }
                                    r4
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,4..
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "f"))
                                    }
                                    r16
                                    r8
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,8
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,4.
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ff"))
                                    }
                                    r8
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,2
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "fff"))
                                    }
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,2
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,2.
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                                    }
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
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    gs,,2.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fpp"))
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
                                    gs,,2
                                    \once \override Dots.staff-position = #2
                                    gs,,2.
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    \once \override Dots.staff-position = #2
                                    gs,,2.
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    gs,,2.
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
                                        gs,,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                                    }
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
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
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
                            R1 * 3/2
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
                            R1 * 3/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                            R1 * 3/4
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
                            R1 * 3/4
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
                            R1 * 1/2
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
                            R1 * 3/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                                    \times 8/7
                                    {
                                        r2
                                        \staff-line-count 1
                                        \clef "percussion"
                                        c'4.
                                        \pp
                                        \<
                                        ~
                                        \boxed-markup "Tanggu" 1
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 3 0))
                                    \times 12/13
                                    {
                                        c'8
                                          %! +SCORE
                                        \repeatTie
                                        c'2
                                        c'2
                                        c'2
                                    }
                                    c'2
                                    \mp
                                    \staff-line-count 5
                                    \clef "bass"
                                    <c' df'>2
                                    \mp
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \sustainOn
                                    \boxed-markup "Röhrenglocken" 1
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 16/20
                                    {
                                        <c' df'>2
                                        <c' df'>16
                                        \!
                                        \sustainOff
                                        r2
                                        r8.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \staff-line-count 1
                                        \clef "percussion"
                                        c'2
                                        \mp
                                        \<
                                        \boxed-markup "Tanggu" 1
                                        c'4.
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        c'4
                                          %! +SCORE
                                        \repeatTie
                                        c'2
                                        ~
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) (ly:make-duration 4 0))
                                    \times 12/11
                                    {
                                        c'4
                                          %! +SCORE
                                        \repeatTie
                                        c'4..
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        c'16
                                          %! +SCORE
                                        \repeatTie
                                        c'2
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c'16
                                        ~
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                    \times 6/5
                                    {
                                        c'4..
                                        c'8.
                                        ~
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'4
                                          %! +SCORE
                                        \repeatTie
                                        ~
                                        c'16
                                          %! +SCORE
                                        \repeatTie
                                        c'8
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        c'4.
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        c'2
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        ~
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) (ly:make-duration 4 0))
                                    \times 12/11
                                    {
                                        c'4.
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        \ffff
                                        ~
                                        c'16
                                          %! +SCORE
                                        \repeatTie
                                    }
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \staff-line-count 1
                                        \clef "percussion"
                                        c'8
                                        - \tenuto
                                        \pp
                                        \<
                                        \boxed-markup "Tam-Tam mit Bogen" 1
                                        c'4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c'16
                                        - \tenuto
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    ]
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        [
                                          %! +SCORE
                                        \repeatTie
                                        c'8
                                        - \tenuto
                                        c'8.
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    c'8
                                    r8
                                    r16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    - \tenuto
                                    [
                                    ~
                                    c'16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    - \tenuto
                                    ]
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8.
                                        [
                                        c'8
                                        - \tenuto
                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \tenuto
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'4
                                        - \tenuto
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        - \tenuto
                                        [
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    - \tenuto
                                    \mp
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    - \tenuto
                                    ]
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'8
                                        r8.
                                        c'8
                                        - \tenuto
                                    }
                                    c'4
                                    - \tenuto
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'8
                                        - \tenuto
                                        c'4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c'16
                                        - \tenuto
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \tenuto
                                    ]
                                    c'8.
                                    - \tenuto
                                    r16
                                    <<
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                \voiceTwo
                                                r8
                                                \override Staff.Stem.stemlet-length = 0.75
                                                c'8
                                                - \tenuto
                                                [
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
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            c'16
                                            - \tenuto
                                            ~
                                            c'16
                                            \staff-line-count 3
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \clef "percussion"
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a8.
                                                [
                                                a8
                                                - \tenuto
                                                \revert Staff.Stem.stemlet-length
                                                a8
                                                - \tenuto
                                                ]
                                                ~
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            - \tenuto
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            - \tenuto
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4
                                                - \tenuto
                                            }
                                        }
                                        \context Voice = "percussion divisi voice"
                                        {
                                            \voiceOne
                                            r2.
                                            e'4.
                                            ^ \pppp
                                            ^ \<
                                            \boxed-markup "+ Gongs der chinesische Oper" 1
                                            c'4.
                                            e'4
                                            c'4
                                            ^ \p
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    <<
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            \voiceTwo
                                            a4
                                            - \tenuto
                                            \mp
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [
                                              %! +SCORE
                                            \repeatTie
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            a16
                                            - \tenuto
                                            ~
                                            a16
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4.
                                                - \tenuto
                                                \<
                                                a4
                                                - \tenuto
                                                ~
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                a16
                                                  %! +SCORE
                                                \repeatTie
                                                r8.
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a8
                                                - \tenuto
                                                [
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                \revert Staff.Stem.stemlet-length
                                                a16
                                                - \tenuto
                                                ]
                                                ~
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a2
                                                - \tenuto
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                a8
                                                - \tenuto
                                                ~
                                            }
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4
                                                - \tenuto
                                                ~
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8
                                            [
                                              %! +SCORE
                                            \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            - \tenuto
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            - \tenuto
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4.
                                                - \tenuto
                                                a4
                                                - \tenuto
                                                ~
                                            }
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                a16
                                                  %! +SCORE
                                                \repeatTie
                                                r8.
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a8
                                                - \tenuto
                                                [
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                \revert Staff.Stem.stemlet-length
                                                a16
                                                - \tenuto
                                                ]
                                                ~
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            [
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a2
                                                - \tenuto
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                a8
                                                - \tenuto
                                                ~
                                            }
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4
                                                - \tenuto
                                                ~
                                            }
                                            a16
                                              %! +SCORE
                                            \repeatTie
                                            a8.
                                            - \tenuto
                                            \f
                                        }
                                        \context Voice = "opera gongs voice"
                                        {
                                            \voiceOne
                                            e'4.
                                            ^ \p
                                            ^ \<
                                            c'4.
                                            e'4
                                            c'4
                                            e'4.
                                            c'4.
                                            e'4
                                            c'4
                                            e'4.
                                            c'4.
                                            e'4
                                            c'4
                                            e'4
                                            c'4
                                            e'4
                                            c'4
                                            e'4.
                                            c'4.
                                            ^ \ffff
                                        }
                                    >>
                                    \oneVoice
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 1
                                    \clef "percussion"
                                    c'2.
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #3.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    c'2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    \mf
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    c'4
                                    ~
                                    c'2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'4.
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                    r8
                                    \!
                                    r2
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    r4
                                    \staff-line-count 5
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    \clef "treble"
                                    \pitchedTrill
                                    \tweak style #'harmonic-mixed
                                    b'4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    - \espressivo
                                    ^ \markup \concat { \upright \fraction 9° A \hspace #0.5 }
                                    \startTrillSpan a'
                                    \boxed-markup "MSP" 1
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        b'32 * 3/2
                                        - \accent
                                        \pppp
                                        \stopTrillSpan
                                        [
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        - \tweak padding #8
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \<
                                        b'32 * 3/2
                                        b'32 * 49/32
                                        b'32 * 25/16
                                        b'32 * 13/8
                                        b'32 * 55/32
                                        - \accent
                                        b'32 * 29/16
                                        b'32 * 63/32
                                        b'32 * 17/8
                                        - \accent
                                        b'32 * 37/16
                                        b'32 * 5/2
                                        \stopTextSpanOne
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        b'32 * 11/4
                                        b'32 * 3
                                        b'32 * 13/4
                                        - \accent
                                        b'32 * 111/32
                                        b'32 * 117/32
                                        b'32 * 119/32
                                        - \accent
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #right
                                        b'32 * 125/32
                                        [
                                        b'32 * 123/32
                                        b'32 * 59/16
                                        b'32 * 55/16
                                        \stopTextSpanOne
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        b'32 * 101/32
                                        - \accent
                                        b'32 * 23/8
                                        b'32 * 83/32
                                        b'32 * 19/8
                                        - \accent
                                        b'32 * 69/32
                                        b'32 * 2
                                        b'32 * 59/32
                                        b'32 * 7/4
                                        b'32 * 53/32
                                        - \accent
                                        b'32 * 13/8
                                        b'32 * 25/16
                                        b'32 * 49/32
                                        - \accent
                                        \ffff
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 5
                                    \clef "treble"
                                    gqs2.
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
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
                                    gqs2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gqs8.
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \once \override Dots.staff-position = #2
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    gqs16
                                    \mf
                                    ]
                                    (
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gqs4
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gqs2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    gqs4
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gqs16
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
                                    aqf16
                                    )
                                    \stopTextSpan
                                    \stopTextSpanOne
                                    ]
                                    r8
                                    \!
                                    r2
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    r4
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    \ottava 1
                                    \pitchedTrill
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''''
                                        \tweak style #'harmonic-mixed
                                        g''''
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    - \espressivo
                                    - \markup \concat { \upright \fraction 6° A \hspace #0.5 }
                                    ^ \markup \concat { \upright \fraction 7° A \hspace #0.5 }
                                    \startTrillSpan a'
                                    \boxed-markup "MSP" 1
                                    \ottava 0
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        bqf'32 * 3/2
                                        \pppp
                                        \stopTrillSpan
                                        [
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        - \tweak padding #8
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \<
                                        bqf'32 * 3/2
                                        - \accent
                                        bqf'32 * 49/32
                                        bqf'32 * 25/16
                                        bqf'32 * 13/8
                                        - \accent
                                        bqf'32 * 55/32
                                        bqf'32 * 29/16
                                        - \accent
                                        bqf'32 * 63/32
                                        bqf'32 * 17/8
                                        bqf'32 * 37/16
                                        - \accent
                                        bqf'32 * 5/2
                                        \stopTextSpanOne
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bqf'32 * 11/4
                                        bqf'32 * 3
                                        - \accent
                                        bqf'32 * 13/4
                                        bqf'32 * 111/32
                                        - \accent
                                        bqf'32 * 117/32
                                        bqf'32 * 119/32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #right
                                        bqf'32 * 125/32
                                        - \accent
                                        [
                                        bqf'32 * 123/32
                                        bqf'32 * 59/16
                                        bqf'32 * 55/16
                                        - \accent
                                        \stopTextSpanOne
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bqf'32 * 101/32
                                        bqf'32 * 23/8
                                        - \accent
                                        bqf'32 * 83/32
                                        bqf'32 * 19/8
                                        bqf'32 * 69/32
                                        - \accent
                                        bqf'32 * 2
                                        bqf'32 * 59/32
                                        bqf'32 * 7/4
                                        - \accent
                                        bqf'32 * 53/32
                                        bqf'32 * 13/8
                                        - \accent
                                        bqf'32 * 25/16
                                        bqf'32 * 49/32
                                        \ffff
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 5
                                    \clef "altovarC"
                                    af2.
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST }
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
                                    af2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8.
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \once \override Dots.staff-position = #2
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    \mf
                                    ]
                                    (
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \once \override Dots.staff-position = #2
                                    af4
                                    ~
                                    \once \override Dots.staff-position = #2
                                    af2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    af4
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af16
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
                                    gqs16
                                    )
                                    \stopTextSpan
                                    \stopTextSpanOne
                                    ]
                                    r8
                                    \!
                                    r2
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    r4
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    \clef "treble"
                                    \pitchedTrill
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a'''
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    - \espressivo
                                    - \markup \concat { \upright \fraction 3° A \hspace #0.5 }
                                    ^ \markup \concat { \upright \fraction 4° A \hspace #0.5 }
                                    \startTrillSpan a'
                                    \boxed-markup "MSP" 1
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        \clef "altovarC"
                                        bqs32 * 3/2
                                        \pppp
                                        \stopTrillSpan
                                        [
                                        - \tweak padding #11.25
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        - \tweak padding #14.25
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \<
                                        bqs32 * 3/2
                                        bqs32 * 49/32
                                        - \accent
                                        bqs32 * 25/16
                                        bqs32 * 13/8
                                        - \accent
                                        bqs32 * 55/32
                                        bqs32 * 29/16
                                        bqs32 * 63/32
                                        bqs32 * 17/8
                                        bqs32 * 37/16
                                        - \accent
                                        bqs32 * 5/2
                                        bqs32 * 11/4
                                        bqs32 * 3
                                        bqs32 * 13/4
                                        - \accent
                                        bqs32 * 111/32
                                        bqs32 * 117/32
                                        - \accent
                                        bqs32 * 119/32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #right
                                        bqs32 * 125/32
                                        \stopTextSpanOne
                                        [
                                        - \tweak padding #11.25
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bqs32 * 123/32
                                        bqs32 * 59/16
                                        bqs32 * 55/16
                                        - \accent
                                        bqs32 * 101/32
                                        bqs32 * 23/8
                                        bqs32 * 83/32
                                        bqs32 * 19/8
                                        - \accent
                                        bqs32 * 69/32
                                        bqs32 * 2
                                        - \accent
                                        bqs32 * 59/32
                                        bqs32 * 7/4
                                        bqs32 * 53/32
                                        bqs32 * 13/8
                                        bqs32 * 25/16
                                        - \accent
                                        bqs32 * 49/32
                                        \ffff
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 5
                                    \clef "bass"
                                    af2.
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    ~
                                    af2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8.
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    \mf
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
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
                                    af4
                                    \once \override Dots.staff-position = #2
                                    af2.
                                    \once \override Dots.staff-position = #2
                                    af4
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af16
                                    [
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    \stopTextSpan
                                    \stopTextSpanOne
                                    ]
                                    r8
                                    \!
                                    r2
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/4
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
                                    r4
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    \clef "treble"
                                    \pitchedTrill
                                    <
                                        \tweak style #'harmonic-mixed
                                        gqs'
                                        \tweak style #'harmonic-mixed
                                        fqs''
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    - \espressivo
                                    - \markup \concat { \upright \fraction 11° A \hspace #0.5 }
                                    ^ \markup \concat { \upright \fraction 13° A \hspace #0.5 }
                                    \startTrillSpan a
                                    \boxed-markup "MSP" 1
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        \clef "bass"
                                        bf32 * 3/2
                                        - \accent
                                        \pppp
                                        \stopTrillSpan
                                        [
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \<
                                        bf32 * 3/2
                                        bf32 * 49/32
                                        bf32 * 25/16
                                        bf32 * 13/8
                                        bf32 * 55/32
                                        - \accent
                                        bf32 * 29/16
                                        - \accent
                                        bf32 * 63/32
                                        bf32 * 17/8
                                        \stopTextSpanOne
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bf32 * 37/16
                                        bf32 * 5/2
                                        - \accent
                                        bf32 * 11/4
                                        bf32 * 3
                                        bf32 * 13/4
                                        bf32 * 111/32
                                        bf32 * 117/32
                                        - \accent
                                        \stopTextSpanOne
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bf32 * 119/32
                                        - \accent
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #right
                                        bf32 * 125/32
                                        [
                                        bf32 * 123/32
                                        bf32 * 59/16
                                        bf32 * 55/16
                                        - \accent
                                        bf32 * 101/32
                                        bf32 * 23/8
                                        bf32 * 83/32
                                        bf32 * 19/8
                                        bf32 * 69/32
                                        - \accent
                                        \stopTextSpanOne
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bf32 * 2
                                        - \accent
                                        bf32 * 59/32
                                        bf32 * 7/4
                                        bf32 * 53/32
                                        bf32 * 13/8
                                        - \accent
                                        bf32 * 25/16
                                        bf32 * 49/32
                                        \ffff
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 5
                                    \clef "treble"
                                    af'2.
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    af'2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'8.
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    af'16
                                    \mf
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    af'4
                                    ~
                                    af'2.
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    af'4.
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                    r8
                                    \!
                                    r2
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
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
                                    R1 * 3/2
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
                                    R1 * 3/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    gs,2.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fpp"))
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
                                    gs,2
                                    \once \override Dots.staff-position = #2
                                    gs,2.
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    \once \override Dots.staff-position = #2
                                    gs,2.
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    gs,2.
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
                                        gs,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
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
