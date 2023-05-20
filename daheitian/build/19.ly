    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 4/16
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 2/16
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 2/16
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 4/16
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 2/16
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 4/16
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 8/16
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 2/16
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % AFTER:
            % COMMANDS:
              %! +SCORE
            \break
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
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
            - \tweak padding #-10.5
            ^ \markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( bis Klavierresonanz aufhört,} \line { "dann + ~2\" zusätzliche Stille" ) } }
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.uverylongfermata" }
            % COMMANDS:
            \bar "||"
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "bassclarinet staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "bassclarinet voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \voiceTwo
                                                r8.
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % SPANNER_STARTS:
                                                - \tweak padding #12
                                                - \abjad-solid-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Slaptongue } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpan
                                                r16
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                            \times 6/5
                                            {
                                                r32
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \pp
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                r16.
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                            \times 6/5
                                            {
                                                r32
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''32
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''32
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mp
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                r16
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                            \times 4/5
                                            {
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''16
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                            \times 6/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''32
                                                    % CLOSING:
                                                    % COMMANDS:
                                                    _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''32
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                r32
                                            % CLOSE_BRACKETS:
                                            }
                                            r8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c''16
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            r16
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                r8.
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                            \times 4/5
                                            {
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mf
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r4
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                r4
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                            % CLOSE_BRACKETS:
                                            }
                                            r8
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c''16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mf
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            r8
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''16
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c''16
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            r8
                                            r8
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                            \times 4/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \f
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                r16
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                            \times 4/5
                                            {
                                                r4.
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                r32
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                r16.
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \f
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''16
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet imbrication"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \voiceOne
                                                s8.
                                                % AFTER:
                                                % START_BEAM:
                                                  %! rmakers.beam_groups()
                                                [
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 2
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % SPANNER_STARTS:
                                                - \tweak padding #12
                                                - \abjad-solid-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Slaptongue } \hspace #0.5 }
                                                - \tweak bound-details.right.padding -2
                                                \startTextSpan
                                                s16
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                            \times 6/5
                                            {
                                                s32
                                                s32
                                                s16.
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                            \times 6/5
                                            {
                                                s32
                                                s32
                                                s16
                                                s32
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 3
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                s16
                                                s32
                                                s16
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                            \times 4/5
                                            {
                                                s8
                                                s16
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 3
                                                cs''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                            \times 6/5
                                            {
                                                s32
                                                s16
                                                s32
                                                s32
                                            % CLOSE_BRACKETS:
                                            }
                                            s8.
                                            s16
                                            s16
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                s16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 2
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                s8.
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                            \times 4/5
                                            {
                                                s8
                                                s8
                                                s4
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                s4
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 0
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 2
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                            % CLOSE_BRACKETS:
                                            }
                                            s8
                                            s16
                                            s8
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                s8
                                                s16
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            s16
                                            s8
                                            s8
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                            \times 4/5
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 2
                                                cs''16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                s8
                                                s16
                                                s16
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                                            \times 4/5
                                            {
                                                s4.
                                                s8
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 5 0))
                                            \times 4/5
                                            {
                                                s32
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 3
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 2
                                                cs''32
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                s16.
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                            \times 6/5
                                            {
                                                s16
                                                s16
                                                s8
                                                s16
                                                % AFTER:
                                                % STOP_BEAM:
                                                  %! rmakers.beam_groups()
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                            \times 9/10
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \voiceTwo
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                                % START_BEAM:
                                                [
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                            \times 9/10
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                            \times 9/10
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c''8
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                                % SPANNER_STOPS:
                                                \stopTextSpan
                                                % STOP_BEAM:
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet imbrication"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                            \times 9/10
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 0
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                \voiceOne
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % START_BEAM:
                                                  %! rmakers.beam_groups()
                                                [
                                                s8
                                                s8
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                            \times 9/10
                                            {
                                                s8
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                s8
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                            \times 9/10
                                            {
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                s8
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 0
                                                cs''8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % SPANNER_STOPS:
                                                \stopTextSpan
                                                % STOP_BEAM:
                                                  %! rmakers.beam_groups()
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
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
                        \tag #'voice4
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "bassoon staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "bassoon voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassoon voice temp"
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                            \times 2/3
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \voiceTwo
                                                % OPENING:
                                                % COMMANDS:
                                                \clef "bass"
                                                \tweak style #'cross
                                                b,16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mp
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \triangleStemOn
                                                bf,16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % COMMANDS:
                                                \stemOff
                                            % CLOSE_BRACKETS:
                                            }
                                            r8.
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \triangleStemOn
                                                bf,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % START_BEAM:
                                                [
                                                % COMMANDS:
                                                \stemOff
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \tweak style #'cross
                                                b,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mp
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                            % CLOSE_BRACKETS:
                                            }
                                            r8
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \triangleStemOn
                                            bf,16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            % SPANNER_STARTS:
                                            ~
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            bf,16
                                            % AFTER:
                                            % COMMANDS:
                                            \stemOff
                                            r8
                                            % AFTER:
                                            % STOP_BEAM:
                                            ]
                                            r2
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 2 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \tweak style #'cross
                                            b,16
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % SPANNER_STARTS:
                                            ~
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16
                                            r8
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \triangleStemOn
                                                bf,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % STOP_BEAM:
                                                ]
                                                % COMMANDS:
                                                \stemOff
                                                r4
                                            % CLOSE_BRACKETS:
                                            }
                                            r8.
                                            r16
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            % COMMANDS:
                                            \stemOff
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \tweak style #'cross
                                                b,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mp
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \triangleStemOn
                                                bf,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % COMMANDS:
                                                \stemOff
                                            % CLOSE_BRACKETS:
                                            }
                                            r4
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                r4
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \tweak style #'cross
                                                b,4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mp
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \tweak style #'cross
                                                b,4
                                                % AFTER:
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                            \times 2/3
                                            {
                                                r16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \triangleStemOn
                                                bf,16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                % COMMANDS:
                                                \stemOff
                                                r16
                                            % CLOSE_BRACKETS:
                                            }
                                            r4.
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassoon imbrication"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                            \times 2/3
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \voiceOne
                                                s16
                                                % AFTER:
                                                % START_BEAM:
                                                  %! rmakers.beam_groups()
                                                [
                                                s16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 2
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                \triangleStemOn
                                                bf,16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                % COMMANDS:
                                                \stemOff
                                            % CLOSE_BRACKETS:
                                            }
                                            s8.
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                \triangleStemOn
                                                bf,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % COMMANDS:
                                                \stemOff
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            s8
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            \triangleStemOn
                                            bf,16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % SPANNER_STARTS:
                                            ~
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            bf,16
                                            % AFTER:
                                            % COMMANDS:
                                            \stemOff
                                            s8
                                            s2
                                            s8
                                            s16
                                            s16
                                            s8
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                \triangleStemOn
                                                bf,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 2 }
                                                % COMMANDS:
                                                \stemOff
                                                s8
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            s8.
                                            s16
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % COMMANDS:
                                            \stemOff
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
                                                s8
                                                s8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 0
                                                \triangleStemOn
                                                bf,8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 3 }
                                                % COMMANDS:
                                                \stemOff
                                            % CLOSE_BRACKETS:
                                            }
                                            s4
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                s4
                                                s4
                                                s4
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                                            \times 2/3
                                            {
                                                s16
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 2
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 2
                                                \triangleStemOn
                                                bf,16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % MARKUP:
                                                ^ \markup \center-column { \circle 1 }
                                                % COMMANDS:
                                                \stemOff
                                                s16
                                                % AFTER:
                                                % STOP_BEAM:
                                                  %! rmakers.beam_groups()
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                            s4.
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassoon voice temp"
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \voiceTwo
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 2 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 2 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \tweak style #'cross
                                            b,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mp
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ffff
                                            % STOP_BEAM:
                                            ]
                                            % COMMANDS:
                                            \stemOff
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassoon imbrication voice"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \voiceOne
                                            s16.
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            % COMMANDS:
                                            \stemOff
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % COMMANDS:
                                            \stemOff
                                            s16.
                                            s16.
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % COMMANDS:
                                            \stemOff
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 3 }
                                            % COMMANDS:
                                            \stemOff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 2 }
                                            % COMMANDS:
                                            \stemOff
                                            s16.
                                            s16.
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            % COMMANDS:
                                            \stemOff
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \triangleStemOn
                                            bf,16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % MARKUP:
                                            ^ \markup \center-column { \circle 1 }
                                            % STOP_BEAM:
                                            ]
                                            % COMMANDS:
                                            \stemOff
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
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
                            R1 * 5/16
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
                            R1 * 3/16
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
                            R1 * 3/16
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
                            R1 * 3/8
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
                            R1 * 3/16
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
                            R1 * 3/16
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
                            R1 * 1/8
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
                            R1 * 1/8
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
                            R1 * 1/8
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
                            R1 * 3/16
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
                            R1 * 5/16
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
                            R1 * 3/8
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
                            R1 * 3/8
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
                            R1 * 5/16
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >4.
                            % AFTER:
                            % MARKUP:
                            ^ \markup \center-align { \center-column { \line { \concat { F\raise #0.75 { \teeny \smaller \sharp } -20 }  }\line { \concat { +2 }  } } }
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
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
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >4
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >2
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >8
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >4.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >4.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >4.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >8.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >4.
                            % AFTER:
                            % SPANNER_STARTS:
                            ~
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
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \abjad-sharp  }
                                cs'
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-twenty-three-limit-comma-up \hspace #0.125 \one-undecimal-quarter-tone-up \hspace #0.125 \abjad-sharp  }
                                es'
                            >8.
                                % CLOSING:
                                % COMMANDS:
                                _ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
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
                            R1 * 5/4
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
                            R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 5 0))
                                    \times 8/7
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        d''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        \pp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \<
                                        c''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        e''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                                    \times 8/7
                                    {
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 6 0))
                                    \times 8/7
                                    {
                                        d''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        e''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        g''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        cs''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                    \times 6/7
                                    {
                                        g''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        \mp
                                        % SPANNER_STARTS:
                                        \<
                                        cs''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        cs''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        cs''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TupletBracket.direction = #UP
                                      %! +SCORE
                                    \once \override TupletBracket.padding = -8
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                    \times 9/7
                                    {
                                        d''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        \ff
                                        % START_BEAM:
                                        [
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        cs''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        af''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        % BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ffff
                                        \laissezVibrer
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TupletBracket.direction = #UP
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                    \times 9/7
                                    {
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        \ff
                                        e''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        e''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        % BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ffff
                                        \laissezVibrer
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        \ff
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TupletBracket.direction = #UP
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                    \times 9/7
                                    {
                                        e''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        % BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ffff
                                        \laissezVibrer
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        \ff
                                        e''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        c''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        d''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    bf,,,,16
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffffffffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    ^ \accent
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
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
                                    s1 * 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    s1 * 3/16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    % OPENING:
                                    \afterGrace
                                    b,,,,4
                                    % AFTER:
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Accidental.stencil = ##f
                                        \once \override Beam.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Stem.stencil = ##f
                                        % GROB_OVERRIDES:
                                        \once \override NoteHead.transparent = ##t
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
                                        b,,,,16
                                        % AFTER:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
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
                        \tag #'voice10
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 2 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    s1 * 9/16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \sustainOn
                                    s1 * 9/16
                                    s1 * 9/16
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "F_15"
                                    s1 * 5/4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \sustainOff
                                    s1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \textSpannerDown
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    \tweak style #'la
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    ^ \<
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Kratzen Sie langsam die mit Draht umwickelten Saiten mit einer Plastikkarte } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
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
                                    \tweak style #'la
                                    c'8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    \tweak style #'la
                                    c'4.
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
                                    \tweak style #'la
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    ^ \p
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % COMMANDS:
                                    \textSpannerUp
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                            R1 * 5/16
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
                            R1 * 3/16
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
                            R1 * 3/16
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
                            R1 * 3/8
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
                            R1 * 3/16
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
                            R1 * 3/16
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
                            R1 * 1/8
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
                            R1 * 1/8
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
                            R1 * 1/8
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
                            R1 * 3/16
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
                            R1 * 5/16
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
                            R1 * 3/8
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
                            R1 * 3/8
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
                            R1 * 5/16
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % OPENING:
                            % COMMANDS:
                            \clef "bass"
                            b,4.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #7
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Mit Ketten } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2
                            \startTextSpan
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
                            b,8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,8
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,4
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,2
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,8
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,4.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,4.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,4.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            b,4.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
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
                            b,8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % ARTICULATIONS:
                            \p
                            % SPANNER_STOPS:
                            \stopTextSpan
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
                            R1 * 5/4
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
                            R1 * 1/4
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
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    c'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % SPANNER_STARTS:
                                    \<
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    c'2
                                    c'8.
                                    c'8.
                                    c'4.
                                    c'8.
                                    c'8.
                                    c'8
                                    c'8
                                    c'4
                                    c'8
                                    c'8.
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    c'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    c'4.
                                    c'2
                                    c'4.
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    c'4.
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    c'4
                                    c'2
                                    c'8
                                    c'4.
                                    c'4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STARTS:
                                    ~
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                        \tag #'voice15
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "percussion 3 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "percussion 3 voice"
                                {
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                            \voiceTwo
                                            r8
                                            % ABSOLUTE_BEFORE:
                                            % COMMANDS:
                                            \staff-line-count 1
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \clef "percussion"
                                            c'8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            \pp
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c'8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \stopped
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            r4
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'4
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            r16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            r16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            \p
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            r8.
                                            r16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'16.
                                                % CLOSING:
                                                % COMMANDS:
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "p +"))
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            r16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            r16
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            \mp
                                            r16
                                            r8
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            r16
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            r16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c'8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \stopped
                                                \mf
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            r8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            r4
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'4
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            \mf
                                            r8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ff
                                                r8
                                            % CLOSE_BRACKETS:
                                            }
                                            r8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            \f
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                r8
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c'8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \stopped
                                            % CLOSE_BRACKETS:
                                            }
                                            r8
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'4
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            r4
                                            r16
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            c'16
                                                % CLOSING:
                                                % COMMANDS:
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "f +"))
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \stopped
                                            r8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 imbrication"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \voiceOne
                                            s8
                                            s8
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                s8
                                                % AFTER:
                                                % START_BEAM:
                                                  %! rmakers.beam_groups()
                                                [
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            s4
                                            s4
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            s16.
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            s8.
                                            s16.
                                            s16.
                                            s16.
                                            s16.
                                            s16
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'16
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            s16
                                            s16
                                            s8
                                            s8
                                            s16
                                            s16
                                            s16.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'16.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                s8
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            s8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            s4
                                            s4
                                            s8.
                                            s8.
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                  %! rmakers.beam_groups()
                                                \set stemLeftBeamCount = 1
                                                  %! rmakers.beam_groups()
                                                \set stemRightBeamCount = 1
                                                cs'8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                s8
                                            % CLOSE_BRACKETS:
                                            }
                                            s8.
                                            s8.
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                            \times 15/12
                                            {
                                                s8
                                                s8
                                                % AFTER:
                                                % STOP_BEAM:
                                                  %! rmakers.beam_groups()
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                            s8
                                            s8
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'4
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                            s4
                                            s16
                                            s16
                                            s8.
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            cs'8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                % ABSOLUTE_BEFORE:
                                                % COMMANDS:
                                                \staff-line-count 1
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \voiceTwo
                                                % OPENING:
                                                % COMMANDS:
                                                \clef "percussion"
                                                c'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \stopped
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                c'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \stopped
                                                \ff
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \ffff
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 imbrication"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \voiceOne
                                                s4
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                s4
                                            % CLOSE_BRACKETS:
                                            }
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 5/4
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \ottava 2
                                    % OPENING:
                                    % PITCHED_TRILL:
                                    \pitchedTrill
                                    f''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \pppp
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak padding #14.6
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1.|2. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11
                                    \startTextSpan
                                    \<
                                    ~
                                    % TRILL_SPANNER_STARTS:
                                    \startTrillSpan gf''''
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    ef''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    g''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    b'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    a''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    cs''''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    f''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f''''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    ef''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    g''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    b'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Accidental.stencil = ##f
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''8.
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
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    a''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a''''4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \stopTrillSpan
                                    % COMMANDS:
                                    \ottava 0
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
                                    % ARTICULATIONS:
                                    \!
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    d''''4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP, senza vib. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
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
                                    d''''8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d''''4.
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
                                    d''''8.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % COMMANDS:
                                    \ottava 0
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "altovarC"
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
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
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >4.
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
                                    <
                                        b'
                                        \tweak style #'harmonic
                                        ds''
                                    >8.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 5/16
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
                                    R1 * 1/8
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
                                    R1 * 3/8
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 9/16
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 5/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/8
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 1/8
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
                                    R1 * 3/16
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
                                    R1 * 5/16
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
                                    R1 * 3/8
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
                                    R1 * 3/8
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
                                    R1 * 5/16
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    b,4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
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
                                    b,8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,4.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b,4.
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
                                    b,8.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
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
                                    R1 * 5/4
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
                                    R1 * 1/4
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
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
  %! abjad.LilyPondFile._get_format_pieces()
