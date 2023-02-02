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
        % CLOSE_BRACKETS:
        }
        % OPEN_BRACKETS:
        \context StaffGroup = "Staff Group"
        <<
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 1"
            <<
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
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "oboe staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "oboe voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "clarinetineflat staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "clarinetineflat voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klarinette in Es }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kl. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "bassoon staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "bassoon voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
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
                    - \abjad-dashed-line-with-hook
                    - \tweak bound-details.left.text \markup \concat { \upright { "Flatterhafte Ventile" } \hspace #0.5 }
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
                    \times 4/5
                    {
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        c'''4..
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
                        r2.
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 2"
            <<
                % OPEN_BRACKETS:
                \context Staff = "trumpet staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "trumpet voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "tenortrombone staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "tenortrombone voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "tuba staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "tuba voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context PianoStaff = "sub group 3"
            <<
                % OPEN_BRACKETS:
                \context Staff = "piano 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set PianoStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                        \set PianoStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "piano 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 2 voice"
                    {
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context Staff = "harp staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "harp voice"
                {
                    % BEFORE:
                    % COMMANDS:
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                    R1 * 3/2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context Staff = "percussion 1 staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "percussion 1 voice"
                {
                    % BEFORE:
                    % COMMANDS:
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                    R1 * 3/2
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 4"
            <<
                % OPEN_BRACKETS:
                \context Staff = "percussion 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "percussion 2 voice"
                    {
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
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
                        \times 4/5
                        {
                            <c' df'>2
                            <c' df'>2.
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "percussion 3 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "percussion 3 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 5"
            <<
                % OPEN_BRACKETS:
                \context Staff = "violin 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "violin 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violinen 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vl. 1 }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "violin 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "violin 2 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violinen 2 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vl. 2 }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "viola staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "viola voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "cello staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "cello voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "contrabass staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "contrabass voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                        R1 * 3/2
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
