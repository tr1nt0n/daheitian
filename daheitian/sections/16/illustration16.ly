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
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/4
            R1 * 1/4
            % AFTER:
            % MARKUP:
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % AFTER:
            % COMMANDS:
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #3 #2 #0 #'(1 . 1)]
              }
            }
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/2
            s1 * 3/2
            % AFTER:
            % COMMANDS:
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #4 #5 #2 #0 #'(1 . 1)]
              }
            }
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % AFTER:
            % COMMANDS:
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #4 #2 #0 #'(1 . 1)]
              }
            }
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #11.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #1 #"144" [\abjad-metric-modulation-tuplet-lhs #3 #0 #4 #5 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
        % CLOSE_BRACKETS:
        }
        % BEFORE:
        % COMMANDS:
        \tag #'group1
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            \context StaffGroup = "Staff Group"
            <<
                % BEFORE:
                % COMMANDS:
                \tag #'group2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context SquareBracketGroup = "sub group 1"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice1
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "flute staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "flute voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    \set fontSize = #-3
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    \pp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    g''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    b''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Stem.stencil = ##f
                                    a''''64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \flageolet
                                    \!
                                    % SPANNER_STOPS:
                                    )
                                    % COMMANDS:
                                    \ottava 0
                                    \set fontSize = #-0.25
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice2
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "oboe staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "oboe voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #5.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    bf4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \f
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    r8
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    r8.
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    r16
                                    r8
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    bf4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    r8
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    r8.
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    r16
                                    r8
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    bf4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \ffff
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "bassclarinet staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "bassclarinet voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        fs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    c''16
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        fs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    c''16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \f
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        fs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    c''8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    r8
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    c''16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    c''16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        fs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    c''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    r8.
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                    % CLOSE_BRACKETS:
                                    }
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        % BEFORE:
                                        % BEFORE:
                                        % COMMANDS:
                                        \scaleDurations #'(1 . 1) {
                                        % OPEN_BRACKETS:
                                        \slashedGrace {
                                            fs''16
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            (
                                            \glissando
                                        % CLOSE_BRACKETS:
                                        }
                                        % AFTER:
                                        % COMMANDS:
                                        }
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STOPS:
                                        )
                                    % CLOSE_BRACKETS:
                                    }
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    c''8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                    % CLOSE_BRACKETS:
                                    }
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    r4
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        \<
                                        % BEFORE:
                                        % BEFORE:
                                        % COMMANDS:
                                        \scaleDurations #'(1 . 1) {
                                        % OPEN_BRACKETS:
                                        \slashedGrace {
                                            fs''16
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            (
                                            \glissando
                                        % CLOSE_BRACKETS:
                                        }
                                        % AFTER:
                                        % COMMANDS:
                                        }
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    c''4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    c''4
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        r8
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        r4
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        % BEFORE:
                                        % BEFORE:
                                        % COMMANDS:
                                        \scaleDurations #'(1 . 1) {
                                        % OPEN_BRACKETS:
                                        \slashedGrace {
                                            fs''16
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            (
                                            \glissando
                                        % CLOSE_BRACKETS:
                                        }
                                        % AFTER:
                                        % COMMANDS:
                                        }
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        % BEFORE:
                                        % BEFORE:
                                        % COMMANDS:
                                        \scaleDurations #'(1 . 1) {
                                        % OPEN_BRACKETS:
                                        \slashedGrace {
                                            fs''16
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            (
                                            \glissando
                                        % CLOSE_BRACKETS:
                                        }
                                        % AFTER:
                                        % COMMANDS:
                                        }
                                        c''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STOPS:
                                        )
                                    % CLOSE_BRACKETS:
                                    }
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    r4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ffff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice4
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "bassoon staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "bassoon voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \mf
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    bf4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \f
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    r8
                                    bf4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    r8
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf8.
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf8.
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    r8.
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf8
                                    r8
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    bf16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    r16
                                    r8
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    bf4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STOPS:
                                    )
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \ffff
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'voice5
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context Staff = "frenchhorn staff"
                    {
                        % OPEN_BRACKETS:
                        \context Voice = "frenchhorn voice"
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % BEFORE:
                            % COMMANDS:
                            \highest
                            \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \override Staff.Stem.stemlet-length = 0.75
                            c'''8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % ARTICULATIONS:
                            \ff
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \<
                            - \tweak padding #8.5
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Bewegen Sie die Ventile schnell und wahllos. } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            c'''16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            \f
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            c'''16
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            - \accent
                            - \staccato
                            \ff
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            c'''8
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STARTS:
                            \>
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Staff.Stem.stemlet-length
                            c'''16
                                % CLOSING:
                                % COMMANDS:
                                _ #(make-dynamic-script (markup #:whiteout #:italic "pf"))
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            - \accent
                            - \staccato
                            % STOP_BEAM:
                            ]
                            % OPEN_BRACKETS:
                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                            \times 16/20
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.no-ledgers = ##t
                                c'''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                - \tweak circled-tip ##t
                                \<
                                % BEFORE:
                                % COMMANDS:
                                \once \override NoteHead.no-ledgers = ##t
                                c'''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % ARTICULATIONS:
                                - \accent
                                - \staccato
                                \fff
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % COMMANDS:
                                \revert-noteheads
                                r2
                                r8.
                            % CLOSE_BRACKETS:
                            }
                            % OPENING:
                            % COMMANDS:
                            \clef "bass"
                            ef2.
                                % CLOSING:
                                % COMMANDS:
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fpp"))
                            % AFTER:
                            % SPANNER_STARTS:
                            \<
                              %! abjad.glissando(7)
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            % COMMANDS:
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            ef2
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            ef2.
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            ef2
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            ef2.
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            ef2
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            ef2
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            ef2
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            \afterGrace
                            ef2.
                            % AFTER:
                            % OPEN_BRACKETS:
                            {
                                % OPENING:
                                % COMMANDS:
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
                                    % CLOSING:
                                    % COMMANDS:
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group3
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context SquareBracketGroup = "sub group 2"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice6
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "trumpet staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "trumpet voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice7
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "tenortrombone staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "tenortrombone voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r8.
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r8.
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    r4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
                                    r4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r8.
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,4..
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "f"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ff"))
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "fff"))
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                                    % CLOSE_BRACKETS:
                                    }
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice8
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "tuba staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "tuba voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    gs,,2.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fpp"))
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gs,,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,,2.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,,2.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    \afterGrace
                                    gs,,2.
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                                    % CLOSE_BRACKETS:
                                    }
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group4
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context GrandStaff = "sub group 3"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice9
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 1 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice10
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 2 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group5
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context GrandStaff = "sub group 4"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice11
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "harp 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "harp 1 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice12
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "harp 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "harp 2 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'voice13
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context Staff = "percussion 1 staff"
                    {
                        % OPEN_BRACKETS:
                        \context Voice = "percussion 1 voice"
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            % OPENING:
                            % COMMANDS:
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group6
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context SquareBracketGroup = "sub group 5"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice14
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "percussion 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "percussion 2 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                                    \times 8/7
                                    {
                                        r2
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "percussion"
                                        c'4.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        \<
                                        ~
                                        % COMMANDS:
                                        \boxed-markup "Tanggu" 1
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 3 0))
                                    \times 12/13
                                    {
                                        c'8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'2
                                        c'2
                                        c'2
                                    % CLOSE_BRACKETS:
                                    }
                                    c'2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <c' df'>2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % COMMANDS:
                                    \boxed-markup "Röhrenglocken" 1
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 2 0))
                                    \times 16/20
                                    {
                                        <c' df'>2
                                        <c' df'>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        r2
                                        r8.
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "percussion"
                                        c'2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \<
                                        % COMMANDS:
                                        \boxed-markup "Tanggu" 1
                                        c'4.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        c'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) (ly:make-duration 4 0))
                                    \times 12/11
                                    {
                                        c'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'4..
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        c'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'2
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                    \times 6/5
                                    {
                                        c'4..
                                        c'8.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        ~
                                        c'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                    \times 4/5
                                    {
                                        c'4.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        c'2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 11 12) (ly:make-duration 4 0))
                                    \times 12/11
                                    {
                                        c'4.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % SPANNER_STARTS:
                                        ~
                                        c'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                    % CLOSE_BRACKETS:
                                    }
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice15
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "percussion 3 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "percussion 3 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \staff-line-count 1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "percussion"
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        \pp
                                        % SPANNER_STARTS:
                                        \<
                                        % COMMANDS:
                                        \boxed-markup "Tam-Tam mit Bogen" 1
                                        c'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                          %! +SCORE
                                        \repeatTie
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        c'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    c'8
                                    r8
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    ~
                                    c'16
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8.
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \mp
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'8
                                        r8.
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                    % CLOSE_BRACKETS:
                                    }
                                    c'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        c'4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % BEFORE:
                                        % COMMANDS:
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \tenuto
                                        % SPANNER_STARTS:
                                        ~
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    r16
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                % OPENING:
                                                % COMMANDS:
                                                \voiceTwo
                                                r8
                                                % OPENING:
                                                % COMMANDS:
                                                \override Staff.Stem.stemlet-length = 0.75
                                                c'8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % START_BEAM:
                                                [
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Staff.Stem.stemlet-length
                                                c'8.
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % STOP_BEAM:
                                                ]
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'16
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                              %! +SCORE
                                            \repeatTie
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            c'16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % SPANNER_STARTS:
                                            ~
                                            c'16
                                            % ABSOLUTE_BEFORE:
                                            % COMMANDS:
                                            \staff-line-count 3
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \clef "percussion"
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                % OPENING:
                                                % COMMANDS:
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a8.
                                                % AFTER:
                                                % START_BEAM:
                                                [
                                                a8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Staff.Stem.stemlet-length
                                                a8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % STOP_BEAM:
                                                ]
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                              %! +SCORE
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion divisi voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            r2.
                                            e'4.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            ^ \pppp
                                            % SPANNER_STARTS:
                                            ^ \<
                                            % COMMANDS:
                                            \boxed-markup "+ Gongs der chinesisch Oper" 1
                                            c'4.
                                            e'4
                                            c'4
                                            % AFTER:
                                            % ARTICULATIONS:
                                            ^ \p
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceTwo
                                            a4
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            \mp
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                              %! +SCORE
                                            \repeatTie
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % SPANNER_STARTS:
                                            ~
                                            a16
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4.
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                \<
                                                a4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                a16
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                  %! +SCORE
                                                \repeatTie
                                                r8.
                                                % OPENING:
                                                % COMMANDS:
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % START_BEAM:
                                                [
                                                % BEFORE:
                                                % COMMANDS:
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Staff.Stem.stemlet-length
                                                a16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % STOP_BEAM:
                                                ]
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a2
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % BEFORE:
                                                % COMMANDS:
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                a8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                              %! +SCORE
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4.
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                a4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                            \times 8/7
                                            {
                                                a16
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                  %! +SCORE
                                                \repeatTie
                                                r8.
                                                % OPENING:
                                                % COMMANDS:
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % START_BEAM:
                                                [
                                                % BEFORE:
                                                % COMMANDS:
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Staff.Stem.stemlet-length
                                                a16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % STOP_BEAM:
                                                ]
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8.
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            a16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                a8
                                                a2
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % BEFORE:
                                                % COMMANDS:
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                a8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a8
                                                a4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \tenuto
                                                % SPANNER_STARTS:
                                                ~
                                            % CLOSE_BRACKETS:
                                            }
                                            a16
                                            % AFTER:
                                            % SPANNER_STARTS:
                                              %! +SCORE
                                            \repeatTie
                                            a8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \tenuto
                                            \f
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "opera gongs voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            e'4.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            ^ \p
                                            % SPANNER_STARTS:
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
                                            % AFTER:
                                            % ARTICULATIONS:
                                            ^ \ffff
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group7
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context SquareBracketGroup = "sub group 6"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice16
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "violin 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "violin 1 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #3.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    c'2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    c'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    % PITCHED_TRILL:
                                    \pitchedTrill
                                    \tweak style #'harmonic-mixed
                                    b'4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \espressivo
                                    % MARKUP:
                                    ^ \markup \concat { \upright \fraction 9° A \hspace #0.5 }
                                    % TRILL_SPANNER_STARTS:
                                    \startTrillSpan a'
                                    % COMMANDS:
                                    \boxed-markup "MSP" 1
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        b'32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pppp
                                        % SPANNER_STOPS:
                                        \stopTrillSpan
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
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
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        b'32 * 29/16
                                        b'32 * 63/32
                                        b'32 * 17/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        b'32 * 37/16
                                        b'32 * 5/2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        b'32 * 11/4
                                        b'32 * 3
                                        b'32 * 13/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        b'32 * 111/32
                                        b'32 * 117/32
                                        b'32 * 119/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #right
                                        b'32 * 125/32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        b'32 * 123/32
                                        b'32 * 59/16
                                        b'32 * 55/16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        b'32 * 101/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        b'32 * 23/8
                                        b'32 * 83/32
                                        b'32 * 19/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        b'32 * 69/32
                                        b'32 * 2
                                        b'32 * 59/32
                                        b'32 * 7/4
                                        b'32 * 53/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        b'32 * 13/8
                                        b'32 * 25/16
                                        b'32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ffff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice17
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "violin 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "violin 2 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    gqs2.
                                    % AFTER:
                                    % SPANNER_STARTS:
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gqs2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gqs8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    gqs16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gqs4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gqs2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gqs4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gqs16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    \stopTextSpanOne
                                    % STOP_BEAM:
                                    ]
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    \ottava 1
                                    % OPENING:
                                    % PITCHED_TRILL:
                                    \pitchedTrill
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''''
                                        \tweak style #'harmonic-mixed
                                        g''''
                                    >4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \espressivo
                                    % MARKUP:
                                    - \markup \concat { \upright \fraction 6° A \hspace #0.5 }
                                    ^ \markup \concat { \upright \fraction 7° A \hspace #0.5 }
                                    % TRILL_SPANNER_STARTS:
                                    \startTrillSpan a'
                                    % COMMANDS:
                                    \boxed-markup "MSP" 1
                                    \ottava 0
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        bqf'32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pppp
                                        % SPANNER_STOPS:
                                        \stopTrillSpan
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
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
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 49/32
                                        bqf'32 * 25/16
                                        bqf'32 * 13/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 55/32
                                        bqf'32 * 29/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 63/32
                                        bqf'32 * 17/8
                                        bqf'32 * 37/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 5/2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bqf'32 * 11/4
                                        bqf'32 * 3
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 13/4
                                        bqf'32 * 111/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 117/32
                                        bqf'32 * 119/32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #right
                                        bqf'32 * 125/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        bqf'32 * 123/32
                                        bqf'32 * 59/16
                                        bqf'32 * 55/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bqf'32 * 101/32
                                        bqf'32 * 23/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 83/32
                                        bqf'32 * 19/8
                                        bqf'32 * 69/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 2
                                        bqf'32 * 59/32
                                        bqf'32 * 7/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 53/32
                                        bqf'32 * 13/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqf'32 * 25/16
                                        bqf'32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice18
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "viola staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "viola voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "altovarC"
                                    af2.
                                    % AFTER:
                                    % SPANNER_STARTS:
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    af2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    af4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    af2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    af4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    \stopTextSpanOne
                                    % STOP_BEAM:
                                    ]
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    % PITCHED_TRILL:
                                    \pitchedTrill
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a'''
                                    >4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \espressivo
                                    % MARKUP:
                                    - \markup \concat { \upright \fraction 3° A \hspace #0.5 }
                                    ^ \markup \concat { \upright \fraction 4° A \hspace #0.5 }
                                    % TRILL_SPANNER_STARTS:
                                    \startTrillSpan a'
                                    % COMMANDS:
                                    \boxed-markup "MSP" 1
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "altovarC"
                                        bqs32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pppp
                                        % SPANNER_STOPS:
                                        \stopTrillSpan
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
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
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 25/16
                                        bqs32 * 13/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 55/32
                                        bqs32 * 29/16
                                        bqs32 * 63/32
                                        bqs32 * 17/8
                                        bqs32 * 37/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 5/2
                                        bqs32 * 11/4
                                        bqs32 * 3
                                        bqs32 * 13/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 111/32
                                        bqs32 * 117/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 119/32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #right
                                        bqs32 * 125/32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #11.25
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bqs32 * 123/32
                                        bqs32 * 59/16
                                        bqs32 * 55/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 101/32
                                        bqs32 * 23/8
                                        bqs32 * 83/32
                                        bqs32 * 19/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 69/32
                                        bqs32 * 2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 59/32
                                        bqs32 * 7/4
                                        bqs32 * 53/32
                                        bqs32 * 13/8
                                        bqs32 * 25/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bqs32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice19
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    af2.
                                    % AFTER:
                                    % SPANNER_STARTS:
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
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    af4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    af2.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    af4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
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
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \stopTextSpanOne
                                    % STOP_BEAM:
                                    ]
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TrillSpanner.bound-details.right.padding = #0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    % PITCHED_TRILL:
                                    \pitchedTrill
                                    <
                                        \tweak style #'harmonic-mixed
                                        gqs'
                                        \tweak style #'harmonic-mixed
                                        fqs''
                                    >4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \espressivo
                                    % MARKUP:
                                    - \markup \concat { \upright \fraction 11° A \hspace #0.5 }
                                    ^ \markup \concat { \upright \fraction 13° A \hspace #0.5 }
                                    % TRILL_SPANNER_STARTS:
                                    \startTrillSpan a
                                    % COMMANDS:
                                    \boxed-markup "MSP" 1
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        bf32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \pppp
                                        % SPANNER_STOPS:
                                        \stopTrillSpan
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
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
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bf32 * 29/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bf32 * 63/32
                                        bf32 * 17/8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bf32 * 37/16
                                        bf32 * 5/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bf32 * 11/4
                                        bf32 * 3
                                        bf32 * 13/4
                                        bf32 * 111/32
                                        bf32 * 117/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ST } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bf32 * 119/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #right
                                        bf32 * 125/32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        bf32 * 123/32
                                        bf32 * 59/16
                                        bf32 * 55/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bf32 * 101/32
                                        bf32 * 23/8
                                        bf32 * 83/32
                                        bf32 * 19/8
                                        bf32 * 69/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STOPS:
                                        \stopTextSpanOne
                                        % SPANNER_STARTS:
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                        - \tweak bound-details.right.padding 1
                                        \startTextSpanOne
                                        bf32 * 2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bf32 * 59/32
                                        bf32 * 7/4
                                        bf32 * 53/32
                                        bf32 * 13/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        bf32 * 25/16
                                        bf32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice20
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "contrabass staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    af'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    af'2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    af'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    af'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    af'4.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    gs,2.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fpp"))
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gs,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,2.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,2.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    gs,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    \afterGrace
                                    gs,2.
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
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
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ffff"))
                                    % CLOSE_BRACKETS:
                                    }
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
