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
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { sectional incisions can be made between any two points }
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
                        R1 * 1
                        R1 * 15/4
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
                        R1 * 1
                        r\breve.
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 2 7 0)
                              (7 0 7.5 -2 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 1 11 0)
                              (11 0 11.5 -1 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 2 17 0)
                              (17 0 17.5 -2 18 0)
                              (18 0 18.5 1 19 0)
                              (19 0 19.5 -1 20 0)
                              (20 0 20.5 1 21 0)
                              (21 0 21.5 -1 22 0)
                              (22 0 22.5 1 23 0)
                              (23 0 23.5 -1 24 0)
                         )
                         #0.5
                        % OPENING:
                        % COMMANDS:
                        #(define afterGraceFraction (cons 12 13))
                        b2
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
                        % SPANNER_STARTS:
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        \glissando
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        \!
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            b16
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
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
                        R1 * 1
                        r\breve.
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 2 7 0)
                              (7 0 7.5 -2 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 1 11 0)
                              (11 0 11.5 -1 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 2 17 0)
                              (17 0 17.5 -2 18 0)
                              (18 0 18.5 1 19 0)
                              (19 0 19.5 -1 20 0)
                              (20 0 20.5 1 21 0)
                              (21 0 21.5 -1 22 0)
                              (22 0 22.5 1 23 0)
                              (23 0 23.5 -1 24 0)
                         )
                         #0.5
                        % OPENING:
                        % COMMANDS:
                        #(define afterGraceFraction (cons 12 13))
                        bf'2
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
                        % SPANNER_STARTS:
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        \glissando
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        bf'8
                        % AFTER:
                        % ARTICULATIONS:
                        \!
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            bf'16
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
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
                        R1 * 1
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        r\breve.
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 2 7 0)
                              (7 0 7.5 -2 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 1 11 0)
                              (11 0 11.5 -1 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 2 17 0)
                              (17 0 17.5 -2 18 0)
                              (18 0 18.5 1 19 0)
                              (19 0 19.5 -1 20 0)
                              (20 0 20.5 1 21 0)
                              (21 0 21.5 -1 22 0)
                              (22 0 22.5 1 23 0)
                              (23 0 23.5 -1 24 0)
                         )
                         #0.5
                        % OPENING:
                        % COMMANDS:
                        #(define afterGraceFraction (cons 12 13))
                        g,2
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
                        % SPANNER_STARTS:
                        (
                        - \tweak stencil #constante-hairpin
                        \<
                        \glissando
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        g,8
                        % AFTER:
                        % ARTICULATIONS:
                        \!
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            g,16
                            % AFTER:
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
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
                    R1 * 1
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
                        R1 * 1
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
                        R1 * 1
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
                        R1 * 1
                        R1 * 15/4
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
                        R1 * 1
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
                        R1 * 1
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        r2..
                        % BEFORE:
                        % COMMANDS:
                        \ottava -2
                        bf,,,4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        bf,,,4
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
                        bf,,,4
                        bf,,,8
                        % AFTER:
                        % COMMANDS:
                        \ottava 0
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
                        R1 * 1
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
                        R1 * 1
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
                    % OPENING:
                    % COMMANDS:
                    #(define afterGraceFraction (cons 12 13))
                    \clef "bass"
                    \afterGrace
                    c1
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % ARTICULATIONS:
                    \mp
                    % SPANNER_STARTS:
                    (
                    \glissando
                    % OPEN_BRACKETS:
                    {
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        \slash
                        aqs,16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                    % CLOSE_BRACKETS:
                    }
                    % OPENING:
                    % COMMANDS:
                    #(define afterGraceFraction (cons 10 11))
                    \afterGrace
                    aqs,4
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % SPANNER_STARTS:
                    (
                    \glissando
                    % OPEN_BRACKETS:
                    {
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        \slash
                        b16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                    % CLOSE_BRACKETS:
                    }
                    % OPENING:
                    % COMMANDS:
                    #(define afterGraceFraction (cons 10 11))
                    gs2
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % SPANNER_STARTS:
                    (
                    \glissando
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    gs8
                    % AFTER:
                    % STEM_TREMOLOS:
                    :64
                    % SPANNER_STARTS:
                    \repeatTie
                    % OPEN_BRACKETS:
                    {
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        \slash
                        e'16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1 1 0)
                          (1 0 1.5 -1 2 0)
                          (2 0 2.5 1 3 0)
                          (3 0 3.5 -1 4 0)
                          (4 0 4.5 1 5 0)
                          (5 0 5.5 -1 6 0)
                          (6 0 6.5 1 7 0)
                          (7 0 7.5 -1 8 0)
                          (8 0 8.5 1 9 0)
                          (9 0 9.5 -1 10 0)
                          (10 0 10.5 1 11 0)
                          (11 0 11.5 -1 12 0)
                     )
                     #0.5
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                    % OPENING:
                    % COMMANDS:
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    \afterGrace
                    e'1
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % SPANNER_STARTS:
                    (
                    \glissando
                    % OPEN_BRACKETS:
                    {
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        \slash
                        e'16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \fancy-gliss
                       #'(
                          (0 0 0.5 1 1 0)
                          (1 0 1.5 -1 2 0)
                          (2 0 2.5 1 3 0)
                          (3 0 3.5 -1 4 0)
                          (4 0 4.5 2 5 0)
                          (5 0 5.5 -2 6 0)
                          (6 0 6.5 1 7 0)
                          (7 0 7.5 -1 8 0)
                          (8 0 8.5 2 9 0)
                          (9 0 9.5 -2 10 0)
                          (10 0 10.5 1 11 0)
                          (11 0 11.5 -1 12 0)
                          (12 0 12.5 1 13 0)
                          (13 0 13.5 -1 14 0)
                     )
                     #0.5
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                    % OPENING:
                    % COMMANDS:
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    e'1
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % SPANNER_STARTS:
                    (
                    \glissando
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    e'4
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % SPANNER_STARTS:
                    \repeatTie
                    % OPEN_BRACKETS:
                    {
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        \slash
                        e'16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                    % CLOSE_BRACKETS:
                    }
                    % BEFORE:
                    % COMMANDS:
                    \fancy-gliss
                       #'(
                          (0 0 0.5 2 1 0)
                          (1 0 1.5 -2 2 0)
                          (2 0 2.5 3 3 0)
                          (3 0 3.5 -3 4 0)
                          (4 0 4.5 1 5 0)
                          (5 0 5.5 -1 6 0)
                          (6 0 6.5 1 7 0)
                          (7 0 7.5 -1 8 0)
                          (8 0 8.5 1 9 0)
                          (9 0 9.5 -1 10 0)
                          (10 0 10.5 2 11 0)
                          (11 0 11.5 -2 12 0)
                          (12 0 12.5 1 13 0)
                          (13 0 13.5 -1 14 0)
                     )
                     #0.5
                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                    % OPENING:
                    % COMMANDS:
                    \once \override NoteHead.no-ledgers = ##t
                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                    e'2
                    % AFTER:
                    % STEM_TREMOLOS:
                    :32
                    % SPANNER_STARTS:
                    (
                    \glissando
                    % OPENING:
                    % COMMANDS:
                    \hide NoteHead
                    \override Accidental.stencil = ##f
                    \override NoteColumn.glissando-skip = ##t
                    \override NoteHead.no-ledgers = ##t
                    \afterGrace
                    e'8
                    % AFTER:
                    % STEM_TREMOLOS:
                    :64
                    % SPANNER_STARTS:
                    \repeatTie
                    % OPEN_BRACKETS:
                    {
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        \slash
                        e'16
                        % AFTER:
                        % SPANNER_STOPS:
                        )
                    % CLOSE_BRACKETS:
                    }
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
                        R1 * 1
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 2
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        r2..
                        <b d'>4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        \<
                        % COMMANDS:
                        \boxed-markup "Bangu + Tanggu" 1
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        <b d'>4
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
                        <b d'>4
                        <b d'>8
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
                        R1 * 1
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
                        R1 * 1
                        r2..
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 9 8) (ly:make-duration 3 0))
                        \times 8/9
                        {
                            % BEFORE:
                            % COMMANDS:
                            \ottava 1
                            % OPENING:
                            % PITCHED_TRILL:
                            \pitchedTrill
                            cs''''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \pp
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #11.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { Ord. }
                            \startTextSpan
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan d''''
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            a'''16
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \repeatTie
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''4.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs''''4..
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs''''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs''''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs''''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs''''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs''''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        \fff
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        ~
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 5) (ly:make-duration 3 0))
                        \times 5/7
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            cs''''8.
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            a'''16
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \repeatTie
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STOPS:
                            \stopTrillSpan
                            % STOP_BEAM:
                            ]
                            % COMMANDS:
                            \ottava 0
                        % CLOSE_BRACKETS:
                        }
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
                        R1 * 1
                        r1
                        r8
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            % BEFORE:
                            % COMMANDS:
                            \ottava 1
                            % OPENING:
                            % PITCHED_TRILL:
                            \pitchedTrill
                            fs'''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \pp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #11.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { Ord. }
                            \startTextSpan
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan g'''
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            bf''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            gs'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            gs'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef'''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        ef'''4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        fs'''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            fs'''8.
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \repeatTie
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            bf''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            gs'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef'''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            gs'''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            fs'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c''''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            bf''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            gs'''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            ef'''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \fff
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        ef'''8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        gs'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        ef'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        fs'''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        c''''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        bf''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        gs'''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STOPS:
                        \stopTrillSpan
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        \ottava 0
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
                        R1 * 1
                        % OPENING:
                        % COMMANDS:
                        \clef "altovarC"
                        r\breve
                        r2.
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            % BEFORE:
                            % COMMANDS:
                            \ottava 1
                            % OPENING:
                            % PITCHED_TRILL:
                            \pitchedTrill
                            b''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \pp
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #16.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { Ord. }
                            \startTextSpan
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan c'''
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            d''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            g''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            g'16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            a'16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            c'8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \fff
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        c'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        % SPANNER_STARTS:
                        \repeatTie
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        d'16
                        % AFTER:
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        \repeatTie
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        b'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        bf''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STOPS:
                        \stopTrillSpan
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        \ottava 0
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
                        R1 * 1
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        r\breve
                        r8
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 3 0))
                        \times 4/5
                        {
                            % BEFORE:
                            % COMMANDS:
                            \ottava 1
                            % OPENING:
                            % PITCHED_TRILL:
                            \pitchedTrill
                            g''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            \pp
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            - \tweak padding #13
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "MSP" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { Ord. }
                            \startTextSpan
                            \<
                            % TRILL_SPANNER_STARTS:
                            \startTrillSpan af''
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            g''16
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \repeatTie
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            d''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            e''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            bf'16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        fs'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        g'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        a'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        e'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        fs'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        \fff
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        ~
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            cs'8.
                            % AFTER:
                            % STOP_BEAM:
                            ]
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            d'4
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            d'16
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            \repeatTie
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            as16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            e16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            f16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Accidental.stencil = ##f
                            \once \override Dots.staff-position = #2
                            \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \hide NoteHead
                            \override Accidental.stencil = ##f
                            \override NoteColumn.glissando-skip = ##t
                            \override NoteHead.no-ledgers = ##t
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            cs16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            % SPANNER_STARTS:
                            - \abjad-zero-padding-glissando
                            \glissando
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Accidental.stencil = ##f
                        \once \override Dots.staff-position = #2
                        \once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        e16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        - \abjad-zero-padding-glissando
                        \glissando
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \revert Accidental.stencil
                        \revert NoteColumn.glissando-skip
                        \revert NoteHead.no-ledgers
                        \undo \hide NoteHead
                        cs16
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STOPS:
                        \stopTrillSpan
                        % STOP_BEAM:
                        ]
                        % COMMANDS:
                        \ottava 0
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
                        a,1
                        % AFTER:
                        % ARTICULATIONS:
                        \mp
                        b,\breve..
                        % AFTER:
                        % SPANNER_STARTS:
                        \<
                        \glissando
                        b,4
                        % AFTER:
                        % ARTICULATIONS:
                        \fff
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
