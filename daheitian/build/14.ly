    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % AFTER:
            % MARKUP:
            - \tweak padding #14
            ^ \markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { III. 化 }
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
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-markup #2 #0 #1 #"48" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #1 #"72" [\abjad-metric-modulation-tuplet-lhs #2 #0 #2 #3 #2 #0 #'(1 . 1)] } }
            \startTextSpan
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
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
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
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
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
            ^ \markup \override #'(font-name . "Bodoni72 Book") \fontsize #7.5 \center-column { "18.5\"" }
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.uverylongfermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/4
            R1 * 1/4
            % AFTER:
            % MARKUP:
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.ushortfermata" }
            % COMMANDS:
            \break
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                    cs''4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2.5
                                    \startTextSpan
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e''16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    ds''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    cs''4..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e''16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    ds''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "flute voice temp"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceTwo
                                            ds''4.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            cs''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % SPANNER_STARTS:
                                            ~
                                            cs''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                e''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            ds''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            ds''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % SPANNER_STOPS:
                                            )
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            cs''4..
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "flute divisi voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            f''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1.|2. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -15
                                            \startTextSpan
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                af''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            g''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            g''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % SPANNER_STOPS:
                                            )
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            f''4..
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                af''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            g''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            f''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            f''4..
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            g''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % SPANNER_STOPS:
                                            \stopTextSpan
                                            % SPANNER_STARTS:
                                            ~
                                            g''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    r2.
                                    r4.
                                    r8.
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e''16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        - \accent
                                        \ff
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak padding #9
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -5
                                        \startTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "flute voice temp"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceTwo
                                            cs''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            cs''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                e''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % START_BEAM:
                                            [
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % START_BEAM:
                                            [
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds'8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                e'16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % STOP_BEAM:
                                            ]
                                            cs'4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                e'16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % STOP_BEAM:
                                            ]
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "flute div voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            f''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1.|2. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -8
                                            \startTextSpan
                                            ~
                                            f''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            g''4..
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            f''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                af''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            g''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \>
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            f''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            g''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % ARTICULATIONS:
                                            \p
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            f'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            f'4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            \>
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                af'16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            g'8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % START_BEAM:
                                            [
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            f'8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                af'16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            g'8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % ARTICULATIONS:
                                            \!
                                            % SPANNER_STOPS:
                                            )
                                            \stopTextSpan
                                            % STOP_BEAM:
                                            ]
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r4.
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    r16
                                    r16
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    r16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    r16
                                    r16
                                    r16
                                    % AFTER:
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
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    <aqf''' bf'''>2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <aqf''' bf'''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % COMMANDS:
                                    \-
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "bassclarinet staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "bassclarinet voice"
                                {
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                            \textSpannerDown
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceTwo
                                            as2
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            \<
                                            - \tweak padding #15.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ton } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Überblasen }
                                            - \tweak bound-details.right.padding 1
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
                                            \override Staff.Stem.stemlet-length = 0.75
                                            as16
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
                                            as16
                                                % CLOSING:
                                                % COMMANDS:
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                            % AFTER:
                                            % SPANNER_STOPS:
                                            \stopTextSpan
                                            % COMMANDS:
                                            \textSpannerUp
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            as8
                                            % AFTER:
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            \<
                                            ~
                                            as2
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet divisi voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            r4
                                            r16
                                            bqf8.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \<
                                            - \tweak padding #9.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ton } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Überblasen }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
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
                                            \override Staff.Stem.stemlet-length = 0.75
                                            bqf16
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
                                            bqf16
                                                % CLOSING:
                                                % COMMANDS:
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                            % AFTER:
                                            % SPANNER_STOPS:
                                            \stopTextSpanOne
                                            % STOP_BEAM:
                                            ]
                                            r8
                                            r2
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
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            bqf8
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \<
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
                                            bqf8
                                                % CLOSING:
                                                % COMMANDS:
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \>
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
                                            bqf8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \!
                                            % STOP_BEAM:
                                            ]
                                            r8
                                            r8
                                            bqf8
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \<
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
                                            bqf8
                                                % CLOSING:
                                                % COMMANDS:
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \>
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
                                            bqf8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \!
                                            % STOP_BEAM:
                                            ]
                                            r4
                                            r8
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                bqf8
                                                % AFTER:
                                                % START_BEAM:
                                                [
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \<
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
                                                bqf8
                                                    % CLOSING:
                                                    % COMMANDS:
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "mp"))
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
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
                                                bqf8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                                % STOP_BEAM:
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                            r4.
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                bqf8
                                                % AFTER:
                                                % START_BEAM:
                                                [
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \<
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
                                                bqf8
                                                    % CLOSING:
                                                    % COMMANDS:
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "mp +"))
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
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
                                                bqf8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                                % STOP_BEAM:
                                                ]
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet div voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceTwo
                                            as2
                                                % CLOSING:
                                                % COMMANDS:
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf +"))
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak stencil #constante-hairpin
                                            \<
                                            ~
                                            as2.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as1
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \!
                                            % SPANNER_STARTS:
                                            \repeatTie
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    r4.
                                    r4.
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override Staff.Accidental.stencil = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak padding #4.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Überblasen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16
                                    r16
                                    r16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override Staff.Accidental.stencil = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    r16
                                    r16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 3 0))
                                            \times 9/7
                                            {
                                                % OPENING:
                                                % COMMANDS:
                                                \voiceOne
                                                bqf2
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \<
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
                                                bqf4
                                                    % CLOSING:
                                                    % COMMANDS:
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "ff"))
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
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
                                                bqf8
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                            % CLOSE_BRACKETS:
                                            }
                                            r2
                                            r8
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bass clarinet divisi voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceTwo
                                            as2
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ff
                                            % SPANNER_STARTS:
                                            - \tweak stencil #constante-hairpin
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
                                            \override Staff.Stem.stemlet-length = 0.75
                                            as8
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Dots.staff-position = #2
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            as8
                                            % AFTER:
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            \>
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Dots.staff-position = #2
                                            as4
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Dots.staff-position = #2
                                            % OPENING:
                                            \afterGrace
                                            as8
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
                                                as16
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                            % CLOSE_BRACKETS:
                                            }
                                            r2
                                            r8
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
                                    R1 * 3/4
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r4.
                                    r4.
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    d16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ff
                                    % MARKUP:
                                    ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                                    r16
                                    r16
                                    r16
                                    % AFTER:
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
                            R1 * 1/2
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''!
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            \pppp
                            % MARKUP:
                            ^ \markup \center-align { \center-column { \line { \concat { C+41 }  }\line { \concat { +35 }  } } }
                            % SPANNER_STARTS:
                            \<
                            r16.
                            r16
                            % OPENING:
                            % COMMANDS:
                            \override Staff.Stem.stemlet-length = 0.75
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Staff.Stem.stemlet-length
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % STOP_BEAM:
                            ]
                            % OPENING:
                            % COMMANDS:
                            \override Staff.Stem.stemlet-length = 0.75
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % START_BEAM:
                            [
                            % OPENING:
                            % COMMANDS:
                            \revert Staff.Stem.stemlet-length
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % STOP_BEAM:
                            ]
                            r16
                            r32
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            r32
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            r8
                            r32
                            % OPENING:
                            % COMMANDS:
                            \override Staff.Stem.stemlet-length = 0.75
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % START_BEAM:
                            [
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % OPENING:
                            % COMMANDS:
                            \revert Staff.Stem.stemlet-length
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >32
                            % AFTER:
                            % ARTICULATIONS:
                            - \staccato
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''!
                            >4
                            % AFTER:
                            % ARTICULATIONS:
                            \mp
                            % MARKUP:
                            ^ \multiple-staccato
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            % COMMANDS:
                            \-
                            \boxed-markup "Frei: Aperiodische Staccati" 1
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
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
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    \pppp
                                    % SPANNER_STARTS:
                                    \<
                                    r16.
                                    r16
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    r32
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    r32
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    r8
                                    r32
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <d'' f''>32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <d'' f''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \multiple-staccato
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % COMMANDS:
                                    \-
                                    \boxed-markup "Frei: Aperiodische Staccati" 1
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    R1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''!
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    \pppp
                                    % MARKUP:
                                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                                    % SPANNER_STARTS:
                                    \<
                                    r16.
                                    r16
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    r32
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    r32
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    r8
                                    r32
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''!
                                    >4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \multiple-staccato
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % COMMANDS:
                                    \-
                                    \boxed-markup "Frei: Aperiodische Staccati" 1
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <ef, c>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % SPANNER_STARTS:
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <c'' ef'' e'' af''>4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <fs''' e''''>4
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    r4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <e, cs>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    r4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <ef'' e'' g'' b''>4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <af''' fs''''>4
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    r4
                                    r2.
                                    r4.
                                    r8.
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <e, ef>8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <ef'' e'' g'' b''>4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <g''' f''''>4
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <fs, ef>4
                                    r4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <ef'' fs'' g'' b''>8
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <bf,,>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \sustainOn
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <g fs'>4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b''>4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \sustainOff
                                    % COMMANDS:
                                    \ottava 0
                                    r4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <b,,>4
                                    r4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <bf a'>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \sustainOn
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <b''>4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \sustainOff
                                    % COMMANDS:
                                    \ottava 0
                                    r4
                                    r2.
                                    r4.
                                    r8.
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <cs,>8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \sustainOn
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <bf a'>4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <c'''>4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \sustainOff
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <cs,>4
                                    r4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <bf a'>8
                                    r8
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    <a''' bf''' ds'''' e'''' fs''''>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \espressivo
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    r8
                                    r2
                                    <g''' a''' bf''' ds'''' e''''>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \espressivo
                                    \arpeggio
                                    r4
                                    <a''' bf''' ds'''' e'''' fs''''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \espressivo
                                    \arpeggio
                                    r4
                                    <g''' a''' bf''' ds'''' e''''>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \espressivo
                                    \arpeggio
                                    \ff
                                    % SPANNER_STARTS:
                                    ~
                                    <g''' a''' bf''' ds'''' e''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % COMMANDS:
                                    \ottava 0
                                    r4.
                                    r2.
                                    r4.
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <a''' bf''' ds'''' e'''' fs''''>8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    - \espressivo
                                    \arpeggio
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    <a''' bf''' ds'''' e'''' fs''''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    <g''' a''' bf''' ds'''' e''''>8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    - \espressivo
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    r16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    r4
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \textSpannerDown
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    \tweak style #'la
                                    c'2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ( sim. ) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    \tweak style #'la
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'1
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % COMMANDS:
                                    \textSpannerUp
                                    r2.
                                    r4.
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \textSpannerDown
                                    \tweak style #'la
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    ^ \ff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    ^ \>
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { ( sim. ) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    \tweak style #'la
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % COMMANDS:
                                    \textSpannerUp
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
                            R1 * 1
                            % AFTER:
                            % COMMANDS:
                              %! +SCORE
                            \stopStaff \startStaff
                            % OPENING:
                            % COMMANDS:
                            \clef "bass"
                            c2.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % ARTICULATIONS:
                            \mp
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
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
                            \afterGrace
                            c8.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % SPANNER_STARTS:
                            \repeatTie
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
                                aqs,16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            r8.
                            r4.
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
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
                                    R1 * 1/2
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
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % COMMANDS:
                                    \boxed-markup "Triangel" 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \once \override StemTremolo.X-offset = 0.6
                                    \once \override StemTremolo.Y-offset = 1.75
                                    c'4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \bendAfter #'0
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    R1 * 1/2
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
                                    % COMMANDS:
                                    \boxed-markup "Tam-Tam mit Bogen" 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    c'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'0
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r4.
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    r16
                                    r16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    <d' f'>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    <g b>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    r16
                                    r16
                                    r16
                                    % AFTER:
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r4.
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    <d' f'>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    r16
                                    r16
                                    r16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    r16
                                    <g b>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    r16
                                    r16
                                    % AFTER:
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    r16
                                    r16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    <d' f'>8.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
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
                                    \afterGrace
                                    <d' f'>8
                                    % AFTER:
                                    % START_BEAM:
                                    [
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
                                        <d' f'>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                    % CLOSE_BRACKETS:
                                    }
                                    r16
                                    r16
                                    r16
                                    r16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    <g b>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % START_BEAM:
                                    [
                                    r16
                                    r16
                                    r16
                                    r16
                                    r16
                                    % AFTER:
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    r4.
                                    r4.
                                    r4.
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    <d' f'>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ff
                                    % START_BEAM:
                                    [
                                    % COMMANDS:
                                    \boxed-markup "DP, Kratzen" 1
                                    r16
                                    r16
                                    r16
                                    r16
                                    r16
                                    % AFTER:
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
                                    R1 * 1
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a,2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
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
                                    \afterGrace
                                    a,8.
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
                                        a,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                    % CLOSE_BRACKETS:
                                    }
                                    r8.
                                    r4.
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
