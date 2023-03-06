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
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \fontsize #8 { Monolith } \hspace #0.5 }
            - \tweak bound-details.right.text \markup \fontsize #8 { Living Mass }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                    \once \override Beam.stencil = ##f
                    \once \override Dots.stencil = ##f
                    \once \override Flag.stencil = ##f
                    \once \override NoteHead.duration-log = 2
                    \once \override Stem.stencil = ##f
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                        gs''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                        cs'''!
                    >\breve
                    % AFTER:
                    % MARKUP:
                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-7 \center-column { \line { Choralisches Atmen, } \line { jeder Atemzug cresc. dal niente } } }
                    ^ \markup \center-align { \center-column { \line { \concat { C+41 }  }\line { \concat { +35 }  } } }
                    % COMMANDS:
                    \-
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                    \times 2/3
                    {
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''!
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''!
                        >8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fp
                        % MARKUP:
                        ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                        r8
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''!
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''!
                        >8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fp
                        % MARKUP:
                        ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    % CLOSE_BRACKETS:
                    }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >4
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''
                    >16
                    % AFTER:
                    % SPANNER_STARTS:
                    \repeatTie
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >4
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''
                    >16
                    % AFTER:
                    % SPANNER_STARTS:
                    \repeatTie
                    ~
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                    \times 8/7
                    {
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''
                        >8.
                        r4
                    % CLOSE_BRACKETS:
                    }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >4
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                    \times 5/6
                    {
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''!
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''!
                        >4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fp
                        % MARKUP:
                        ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''!
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''!
                        >4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fp
                        % MARKUP:
                        ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8
                    % CLOSE_BRACKETS:
                    }
                    r4.
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >8
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    % OPEN_BRACKETS:
                    \tweak text #tuplet-number::calc-fraction-text
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) (ly:make-duration 4 0))
                    \times 4/3
                    {
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            g''
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            b''
                        >16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8
                    % CLOSE_BRACKETS:
                    }
                    r16
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >4.
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >8.
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                    <
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                        g''!
                        \tweak Accidental.stencil #ly:text-interface::print
                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                        b''!
                    >8
                    % AFTER:
                    % ARTICULATIONS:
                    - \marcato
                    \fp
                    % MARKUP:
                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
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
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                        <d'' f''>\breve
                        % AFTER:
                        % MARKUP:
                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-7 \center-column { \line { Choralisches Atmen, } \line { jeder Atemzug cresc. dal niente } } }
                        % COMMANDS:
                        \-
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 3 5 0)
                              (5 0 5.5 -3 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 4 11 0)
                              (11 0 11.5 -4 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 1 17 0)
                              (17 0 17.5 -1 18 0)
                              (18 0 18.5 1 19 0)
                              (19 0 19.5 -1 20 0)
                              (20 0 20.5 2 21 0)
                              (21 0 21.5 -2 22 0)
                              (22 0 22.5 1 23 0)
                              (23 0 23.5 -1 24 0)
                         )
                         #0.5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        #(define afterGraceFraction (cons 15 16))
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        \afterGrace
                        c'''4..
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
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
                            c'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \marcato
                            \ffff
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 4 1 0)
                              (1 0 1.5 -4 2 0)
                              (2 0 2.5 5 3 0)
                              (3 0 3.5 -5 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 1 11 0)
                              (11 0 11.5 -1 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 1 17 0)
                              (17 0 17.5 -1 18 0)
                         )
                         #0.5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c'''16
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
                        ~
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) (ly:make-duration 3 0))
                        \times 4/3
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
                            c'''4
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                            % OPENING:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            \afterGrace
                            c'''16
                            % AFTER:
                            % SPANNER_STARTS:
                            \repeatTie
                            % OPEN_BRACKETS:
                            {
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
                                      (12 0 12.5 2 13 0)
                                      (13 0 13.5 -2 14 0)
                                      (14 0 14.5 3 15 0)
                                      (15 0 15.5 -3 16 0)
                                      (16 0 16.5 4 17 0)
                                      (17 0 17.5 -4 18 0)
                                      (18 0 18.5 5 19 0)
                                      (19 0 19.5 -5 20 0)
                                 )
                                 #0.5
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                % OPENING:
                                % COMMANDS:
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                \slash
                                c'''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \ffff
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            r16
                        % CLOSE_BRACKETS:
                        }
                        r4.
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 1 1 0)
                              (1 0 1.5 -1 2 0)
                              (2 0 2.5 1 3 0)
                              (3 0 3.5 -1 4 0)
                              (4 0 4.5 3 5 0)
                              (5 0 5.5 -3 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 4 11 0)
                              (11 0 11.5 -4 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 1 17 0)
                              (17 0 17.5 -1 18 0)
                              (18 0 18.5 1 19 0)
                              (19 0 19.5 -1 20 0)
                              (20 0 20.5 2 21 0)
                              (21 0 21.5 -2 22 0)
                              (22 0 22.5 1 23 0)
                              (23 0 23.5 -1 24 0)
                         )
                         #0.5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c'''8
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 4) (ly:make-duration 3 0))
                        \times 4/3
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
                            \afterGrace
                            c'''4
                            % AFTER:
                            % SPANNER_STARTS:
                            \repeatTie
                            % OPEN_BRACKETS:
                            {
                                % BEFORE:
                                % COMMANDS:
                                \fancy-gliss
                                   #'(
                                      (0 0 0.5 4 1 0)
                                      (1 0 1.5 -4 2 0)
                                      (2 0 2.5 5 3 0)
                                      (3 0 3.5 -5 4 0)
                                      (4 0 4.5 1 5 0)
                                      (5 0 5.5 -1 6 0)
                                      (6 0 6.5 1 7 0)
                                      (7 0 7.5 -1 8 0)
                                      (8 0 8.5 1 9 0)
                                      (9 0 9.5 -1 10 0)
                                      (10 0 10.5 1 11 0)
                                      (11 0 11.5 -1 12 0)
                                      (12 0 12.5 1 13 0)
                                      (13 0 13.5 -1 14 0)
                                      (14 0 14.5 1 15 0)
                                      (15 0 15.5 -1 16 0)
                                      (16 0 16.5 1 17 0)
                                      (17 0 17.5 -1 18 0)
                                 )
                                 #0.5
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                % OPENING:
                                % COMMANDS:
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.no-ledgers = ##t
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                \revert Accidental.stencil
                                \revert NoteColumn.glissando-skip
                                \revert NoteHead.no-ledgers
                                \undo \hide NoteHead
                                \slash
                                c'''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \marcato
                                \ffff
                                % SPANNER_STOPS:
                                )
                            % CLOSE_BRACKETS:
                            }
                            r8
                        % CLOSE_BRACKETS:
                        }
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
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 1 11 0)
                              (11 0 11.5 -1 12 0)
                              (12 0 12.5 2 13 0)
                              (13 0 13.5 -2 14 0)
                              (14 0 14.5 3 15 0)
                              (15 0 15.5 -3 16 0)
                              (16 0 16.5 4 17 0)
                              (17 0 17.5 -4 18 0)
                              (18 0 18.5 5 19 0)
                              (19 0 19.5 -5 20 0)
                         )
                         #0.5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c'''4.
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
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
                        \afterGrace
                        c'''4
                        % AFTER:
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
                            c'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \marcato
                            \ffff
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
                              (4 0 4.5 3 5 0)
                              (5 0 5.5 -3 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 4 11 0)
                              (11 0 11.5 -4 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 1 17 0)
                              (17 0 17.5 -1 18 0)
                              (18 0 18.5 1 19 0)
                              (19 0 19.5 -1 20 0)
                              (20 0 20.5 2 21 0)
                              (21 0 21.5 -2 22 0)
                              (22 0 22.5 1 23 0)
                              (23 0 23.5 -1 24 0)
                         )
                         #0.5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c'''4
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
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
                        \afterGrace
                        c'''4
                        % AFTER:
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
                            c'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \marcato
                            \ffff
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \fancy-gliss
                           #'(
                              (0 0 0.5 4 1 0)
                              (1 0 1.5 -4 2 0)
                              (2 0 2.5 5 3 0)
                              (3 0 3.5 -5 4 0)
                              (4 0 4.5 1 5 0)
                              (5 0 5.5 -1 6 0)
                              (6 0 6.5 1 7 0)
                              (7 0 7.5 -1 8 0)
                              (8 0 8.5 1 9 0)
                              (9 0 9.5 -1 10 0)
                              (10 0 10.5 1 11 0)
                              (11 0 11.5 -1 12 0)
                              (12 0 12.5 1 13 0)
                              (13 0 13.5 -1 14 0)
                              (14 0 14.5 1 15 0)
                              (15 0 15.5 -1 16 0)
                              (16 0 16.5 1 17 0)
                              (17 0 17.5 -1 18 0)
                         )
                         #0.5
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c'''4
                        % AFTER:
                        % SPANNER_STARTS:
                        (
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
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
                        \afterGrace
                        c'''4
                        % AFTER:
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
                            c'''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \marcato
                            \ffff
                            % SPANNER_STOPS:
                            )
                        % CLOSE_BRACKETS:
                        }
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
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                        <
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                            c''!
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \markup { \one-septimal-comma-up  }
                            e''!
                        >\breve
                        % AFTER:
                        % MARKUP:
                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-7 \center-column { \line { Choralisches Atmen, } \line { jeder Atemzug cresc. dal niente } } }
                        ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                        % COMMANDS:
                        \-
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c,4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \ffff
                        % SPANNER_STARTS:
                        - \tweak stencil #constante-hairpin
                        \<
                        r2
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
                        % ARTICULATIONS:
                        - \marcato
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            % OPENING:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            c,8.
                            % AFTER:
                            % SPANNER_STARTS:
                            \repeatTie
                            r4
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
                        c,2
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        c,16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            r4
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            % OPENING:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            c,8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \marcato
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
                        c,8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 4 0))
                        \times 8/7
                        {
                            r4.
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                            % OPENING:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                            \once \override Staff.AccidentalPlacement.right-padding = #0.6
                            c,16
                            % AFTER:
                            % ARTICULATIONS:
                            - \marcato
                            \!
                        % CLOSE_BRACKETS:
                        }
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
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <b,, as,>\breve
                        % AFTER:
                        % MARKUP:
                        - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-7 \center-column { \line { Choralisches Atmen, } \line { jeder Atemzug cresc. dal niente } } }
                        % COMMANDS:
                        \-
                        <b,, as,>\breve...
                        % AFTER:
                        % ARTICULATIONS:
                        \ffff
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                    R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
                        R1 * 2
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
