\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
\score
{
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
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
                  [\abjad-metric-modulation #1 #0 #2 #0 #'(1 . 1)]
              }
            }
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
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.ushortfermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                \tag #'voice5
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context Staff = "frenchhorn staff"
                    {
                        % OPEN_BRACKETS:
                        \context Voice = "frenchhorn voice"
                        {
                            % BEFORE:
                            % COMMANDS:
                            \highest
                            \once \override NoteHead.no-ledgers = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
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
                            - \tweak padding #7
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Flatternventile } \hspace #0.5 }
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
                            % AFTER:
                            % STEM_TREMOLOS:
                            :128
                            % ARTICULATIONS:
                            - \accent
                            - \staccato
                            \sf
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
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 1/8
                            s1 * 1/8
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/4
                            s1 * 3/4
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 1/8
                            s1 * 1/8
                            % AFTER:
                            % COMMANDS:
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
                                    \staff-line-count 5
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \clef "treble"
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
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
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}
