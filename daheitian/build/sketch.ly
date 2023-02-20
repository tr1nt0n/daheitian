    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "Stage 1 ( accumulate instrumentation to Stage 2 )"
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "Stage 2 ( all cresc., then dissipate instrumentation to Stage 3 )"
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "Stage 3"
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "Stage 4"
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
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                        cs''4..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \<
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            e''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        ds''4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        cs''4..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        ds''4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        cs''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        ds''2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        ~
                        ds''16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        cs''4..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        ds''4..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        cs''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        ~
                        cs''16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        ds''8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        % ARTICULATIONS:
                        \f
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "flute voice temp"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                - \tweak padding #9
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "Duo" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -1
                                \startTextSpan
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                cs''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                ds''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                cs''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                cs''4.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                ds''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                cs''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % SPANNER_STARTS:
                                ~
                                ds''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                \>
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''8
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                cs''8
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                ds''8
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                cs''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                ds''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                ds''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                ds''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                ds''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                cs''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                ds''8.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                cs''8.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                % ARTICULATIONS:
                                \!
                                % SPANNER_STOPS:
                                \stopTextSpan
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "flute a voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                f''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                g''4.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                g''4.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                g''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                g''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                f''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                g''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                f''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                g''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                g''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                g''2
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                g''4.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                f''4..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                g''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                % SPANNER_STARTS:
                                ~
                                g''16
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                                f''8.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % AFTER:
                        % COMMANDS:
                        \oneVoice
                        f''8.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        % ARTICULATIONS:
                        \pp
                        % SPANNER_STARTS:
                        - \tweak padding #9
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            af''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        g''8.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        f''8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        g''8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        f''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            af''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        g''8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        f''8.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        g''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        ~
                        g''16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        f''4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        g''2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        f''4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            af''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        g''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        ~
                        g''16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        f''4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            af''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        g''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        ~
                        g''16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        % ARTICULATIONS:
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "bassclarinet staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "bassclarinet voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                    R1 * 15/4
                    R1 * 15/4
                    R1 * 15/4
                    R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <ef, c>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \p
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <cs'' d'' f'' a''>4.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <fs''' e''''>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        ~
                        <fs''' e''''>8
                        % AFTER:
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <ef, c>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <c'' ef'' e'' af''>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <fs''' e''''>4.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <e, cs>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        ~
                        <e, cs>8
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <ef'' e'' g'' b''>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <af''' fs''''>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % COMMANDS:
                        \ottava 0
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <bf,,>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        \sustainOn
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <af g'>4.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <b''>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        ~
                        <b''>8
                        % AFTER:
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <bf,,>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        \sustainOn
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <g fs'>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <b''>4.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <b,,>2
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STARTS:
                        \sustainOn
                        ~
                        <b,,>8
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <bf a'>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <b''>4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                        R1 * 15/4
                        R1 * 15/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context GrandStaff = "sub group 4"
            <<
                % OPEN_BRACKETS:
                \context Staff = "harp 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "harp 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                        r2..
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <a''' bf''' ds'''' e'''' fs''''>4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        \p
                        % SPANNER_STARTS:
                        - \tweak stencil #constante-hairpin
                        \<
                        r2
                        r8
                        <g''' a''' bf''' ds'''' e''''>4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        r8
                        <a''' bf''' ds'''' e'''' fs''''>2..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        r4.
                        <g''' a''' bf''' ds'''' e''''>4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        % SPANNER_STARTS:
                        ~
                        <g''' a''' bf''' ds'''' e''''>4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        r4
                        <a''' bf''' ds'''' e'''' fs''''>8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        r2..
                        <g''' a''' bf''' ds'''' e''''>4.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        r2
                        r8
                        <a''' bf''' ds'''' e'''' fs''''>4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \arpeggio
                        r8
                        <g''' a''' bf''' ds'''' e''''>2.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \!
                        \arpeggio
                        % COMMANDS:
                        \ottava 0
                        R1 * 15/4
                        R1 * 15/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
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
                        c'\breve...
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        - \tweak padding #7
                        - \abjad-dashed-line-with-up-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Kratzen Sie die mit Draht umwickelten Saiten mit einer Plastikkarte ab." } \hspace #0.5 }
                        - \tweak bound-details.right.padding -195
                        \startTextSpan
                        \tweak style #'la
                        c'\breve...
                        % AFTER:
                        % ARTICULATIONS:
                        \mf
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % COMMANDS:
                        \textSpannerUp
                        R1 * 15/4
                        R1 * 15/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
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
                    R1 * 15/4
                    R1 * 15/4
                    R1 * 15/4
                    R1 * 15/4
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 5"
            <<
                % OPEN_BRACKETS:
                \context Staff = "percussion 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "percussion 2 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 6"
            <<
                % OPEN_BRACKETS:
                \context Staff = "violin 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "violin 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
                        R1 * 15/4
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
