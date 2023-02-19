\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily"
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
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "build upward in pitch and dynamic from bass, persist tutti for 37 seconds ( Achtel = 60 ) "
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                \set fontSize = #-4
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                % OPENING:
                                % COMMANDS:
                                \slash
                                \voiceOne
                                \tweak style #'harmonic
                                a''8 * 2/25
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                \tweak style #'harmonic
                                e'''16 * 4/25
                                \tweak style #'harmonic
                                a'''16 * 4/25
                                \tweak style #'harmonic
                                cs''''16 * 4/25
                                \tweak style #'harmonic
                                e''''16 * 4/25
                                \tweak style #'harmonic
                                gqf''''16 * 4/25
                                \tweak style #'harmonic
                                a''''16 * 4/25
                                \tweak style #'harmonic
                                gqf''''16 * 4/25
                                \tweak style #'harmonic
                                e''''16 * 4/25
                                \tweak style #'harmonic
                                cs''''16 * 4/25
                                \tweak style #'harmonic
                                a'''16 * 4/25
                                \tweak style #'harmonic
                                e'''16 * 4/25
                                \tweak style #'harmonic
                                a''16 * 4/25
                                a'8 * 2/25
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "flute voice Anchor"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \parenthesize
                                a'2...
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \ff
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                \set fontSize = #-4
                                % OPENING:
                                % COMMANDS:
                                \slash
                                \voiceOne
                                \tweak style #'harmonic
                                a''8 * 2/25
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                \tweak style #'harmonic
                                e'''16 * 4/25
                                \tweak style #'harmonic
                                a'''16 * 4/25
                                \tweak style #'harmonic
                                cs''''16 * 4/25
                                \tweak style #'harmonic
                                e''''16 * 4/25
                                \tweak style #'harmonic
                                gqf''''16 * 4/25
                                \tweak style #'harmonic
                                a''''16 * 4/25
                                \tweak style #'harmonic
                                gqf''''16 * 4/25
                                \tweak style #'harmonic
                                e''''16 * 4/25
                                \tweak style #'harmonic
                                cs''''16 * 4/25
                                \tweak style #'harmonic
                                a'''16 * 4/25
                                \tweak style #'harmonic
                                e'''16 * 4/25
                                \tweak style #'harmonic
                                a''16 * 4/25
                                a'8 * 2/25
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "flute voice Anchor"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \parenthesize
                                a'2...
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "On_Beat_Grace_Container"
                            {
                            % OPENING:
                                % COMMANDS:
                                \set fontSize = #-4
                                % OPENING:
                                % COMMANDS:
                                \slash
                                \voiceOne
                                \tweak style #'harmonic
                                a''8 * 2/25
                                % AFTER:
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                (
                                \tweak style #'harmonic
                                e'''16 * 4/25
                                \tweak style #'harmonic
                                a'''16 * 4/25
                                \tweak style #'harmonic
                                cs''''16 * 4/25
                                \tweak style #'harmonic
                                e''''16 * 4/25
                                \tweak style #'harmonic
                                gqf''''16 * 4/25
                                \tweak style #'harmonic
                                a''''16 * 4/25
                                \tweak style #'harmonic
                                gqf''''16 * 4/25
                                \tweak style #'harmonic
                                e''''16 * 4/25
                                \tweak style #'harmonic
                                cs''''16 * 4/25
                                \tweak style #'harmonic
                                a'''16 * 4/25
                                \tweak style #'harmonic
                                e'''16 * 4/25
                                \tweak style #'harmonic
                                a''16 * 4/25
                                a'8 * 2/25
                                % AFTER:
                                % SPANNER_STOPS:
                                )
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "flute voice Anchor"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \parenthesize
                                a'2...
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        >>
                        r2...
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
                    R1 * 15/4
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
                    R1 * 15/4
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
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \p
                        % SPANNER_STARTS:
                        ~
                        % COMMANDS:
                        \boxed-markup "Triangel" 1
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        c'4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        c'16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                        r4
                        r16
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
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        \p
                        % COMMANDS:
                        \boxed-markup "Glockenspiel" 1
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        a2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % ARTICULATIONS:
                        - \espressivo
                        r4
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
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                        % OPENING:
                        % PITCHED_TRILL:
                        \pitchedTrill
                        \tweak style #'harmonic-mixed
                        b'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \espressivo
                        \mp
                        % SPANNER_STARTS:
                        - \tweak padding #7
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        ~
                        % TRILL_SPANNER_STARTS:
                        \startTrillSpan a'
                        \tweak style #'harmonic-mixed
                        b'16
                        \tweak style #'harmonic-mixed
                        b'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        \tweak style #'harmonic-mixed
                        b'16
                        \tweak style #'harmonic-mixed
                        b'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        \tweak style #'harmonic-mixed
                        b'16
                        \tweak style #'harmonic-mixed
                        b'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        \tweak style #'harmonic-mixed
                        b'16
                        \tweak style #'harmonic-mixed
                        b'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        \tweak style #'harmonic-mixed
                        b'16
                        \tweak style #'harmonic-mixed
                        b'2
                        % AFTER:
                        % ARTICULATIONS:
                        - \espressivo
                        % SPANNER_STARTS:
                        ~
                        \tweak style #'harmonic-mixed
                        b'16
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        r4.
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTrillSpan
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "violin 2 voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \ottava 1
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \mp
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a'
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''''4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                r4.
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "violin 2a voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                - \tweak padding #18
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "both voices MSP" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -8
                                \startTextSpan
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a'
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                g''''4..
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                r4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
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
                % OPEN_BRACKETS:
                \context Staff = "viola staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "viola voice"
                    {
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "viola voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \mp
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a'
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                e''8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                r8.
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "viola a voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                - \tweak padding #16.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "both voices MSP" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -10
                                \startTextSpan
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a'
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \tweak style #'harmonic-mixed
                                a'''4
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                r4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
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
                % OPEN_BRACKETS:
                \context Staff = "cello staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "cello voice"
                    {
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "cello voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                gqs'2
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                \mp
                                % SPANNER_STARTS:
                                ~
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a
                                \tweak style #'harmonic-mixed
                                gqs'8.
                                \tweak style #'harmonic-mixed
                                gqs'2
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                gqs'8.
                                \tweak style #'harmonic-mixed
                                gqs'2
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                gqs'8.
                                \tweak style #'harmonic-mixed
                                gqs'2
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                gqs'8.
                                \tweak style #'harmonic-mixed
                                gqs'2
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                gqs'8.
                                r4
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
                                r16
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "cello a voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                fqs''2.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                - \tweak padding #13
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "both voices MSP" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -6
                                \startTextSpan
                                ~
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a
                                \tweak style #'harmonic-mixed
                                fqs''16
                                \tweak style #'harmonic-mixed
                                fqs''2.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                fqs''16
                                \tweak style #'harmonic-mixed
                                fqs''2.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                fqs''16
                                \tweak style #'harmonic-mixed
                                fqs''2.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                ~
                                \tweak style #'harmonic-mixed
                                fqs''16
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTextSpan
                                r2
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
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
                % OPEN_BRACKETS:
                \context Staff = "contrabass staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "contrabass voice"
                    {
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "contrabass voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                % OPENING:
                                % COMMANDS:
                                \clef "bass"
                                \voiceTwo
                                a,\breve...
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "contrabass a voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                % PITCHED_TRILL:
                                \pitchedTrill
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                % TRILL_SPANNER_STARTS:
                                \startTrillSpan a,
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % SPANNER_STARTS:
                                - \tweak padding #11
                                - \abjad-dashed-line-with-arrow
                                - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                                - \tweak bound-details.right.text \markup \upright { "ord." }
                                \startTextSpan
                                \tweak style #'harmonic-mixed
                                e8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \espressivo
                                % SPANNER_STOPS:
                                \stopTextSpan
                                r8.
                                % AFTER:
                                % SPANNER_STOPS:
                                \stopTrillSpan
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
            >>
        % CLOSE_BRACKETS:
        >>
    % CLOSE_BRACKETS:
    >>
}
