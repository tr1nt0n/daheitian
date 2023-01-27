    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
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
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                    s1 * 1
                    s1 * 3/4
                    s1 * 7/8
                    s1 * 3/4
                    s1 * 3/2
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 7/8
                    s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                    s1 * 1
                    s1 * 3/4
                    s1 * 7/8
                    s1 * 3/4
                    s1 * 3/2
                    s1 * 1
                    s1 * 1
                    s1 * 1
                    s1 * 3/4
                    s1 * 3/4
                    s1 * 7/8
                    s1 * 7/8
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
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 3 0))
                    \times 8/9
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        bs,1
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        \glissando
                        aqs,8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                    % CLOSE_BRACKETS:
                    }
                    s1 * 3/4
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 14) (ly:make-duration 4 0))
                    \times 14/9
                    {
                        bs,2
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        \glissando
                        aqs,16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
                    % CLOSE_BRACKETS:
                    }
                    s1 * 3/4
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 1 1))
                    \times 2/3
                    {
                        bs,\breve
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        \glissando
                        aqs,4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                    % CLOSE_BRACKETS:
                    }
                    s1 * 1
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 3 0))
                    \times 8/9
                    {
                        bs,1
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        \glissando
                        aqs,8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                    % CLOSE_BRACKETS:
                    }
                    s1 * 1
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 1))
                    \times 2/3
                    {
                        bs,1
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        \glissando
                        aqs,8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                    % CLOSE_BRACKETS:
                    }
                    s1 * 3/4
                    s1 * 7/8
                    s1 * 7/8
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
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        s1 * 1
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 3/4
                        s1 * 3/2
                        s1 * 1
                        s1 * 1
                        s1 * 1
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        as,1
                        s1 * 3/4
                        as,2..
                        s1 * 3/4
                        as,1.
                        s1 * 1
                        as,1
                        s1 * 1
                        as,2.
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 7/8
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
