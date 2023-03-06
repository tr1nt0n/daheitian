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
            \time 8/4
            s1 * 2
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { ( not transposed ) }
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                    % OPEN_BRACKETS:
                    <<
                        % OPEN_BRACKETS:
                        \context Voice = "frenchhorn voice temp"
                        {
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            % OPENING:
                            % COMMANDS:
                            \voiceOne
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                            fs''!\breve
                            % AFTER:
                            % MARKUP:
                            ^ \markup \center-align { \concat { F+41 } }
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \context Voice = "frenchhorn 2 voice"
                        {
                            % OPENING:
                            % COMMANDS:
                            \voiceTwo
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                            cs''!\breve
                            % AFTER:
                            % MARKUP:
                            _ \markup \center-align { \concat { +35 } }
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
                        <d'' f''>\breve
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "tenortrombone voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                e''!\breve
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-align { \concat { +29 } }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "tenortrombone 2 voice"
                            {
                                % OPENING:
                                % COMMANDS:
                                \voiceTwo
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                c''!\breve
                                % AFTER:
                                % MARKUP:
                                _ \markup \center-align { \concat { +47 } }
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
                \context Staff = "tuba staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "tuba voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <b,, as,>\breve
                        % AFTER:
                        % MARKUP:
                        ^ \markup { if only one tubist, sing higher pitch }
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context GrandStaff = "sub group 3"
            <<
                % OPEN_BRACKETS:
                \context Staff = "piano 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                    R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
