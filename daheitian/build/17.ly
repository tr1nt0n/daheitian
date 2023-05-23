    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \tweak text "×7" \startMeasureSpanner
            % BEFORE:
            % COMMANDS:
            \bar ".|:"
              %! +SCORE
            \break
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % COMMANDS:
            \bar ":|."
            \stopMeasureSpanner
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #11.5
            - \abjad-solid-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \fontsize #5.5 { Rall. } \hspace #0.5 }
            - \tweak bound-details.right.padding -60
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
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
                                    R1 * 5/4
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    c''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % STOP_BEAM:
                                    ]
                                    c''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    \<
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    dqf''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    dqs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    eqf''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    e''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    eqs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    fqs''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    g''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ds'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    e'''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##f
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
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Überblasen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a16
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
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a4
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    \<
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    fqs16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bqs16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    dqs'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fqs'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    g'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    cqs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    aqf''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    eqs'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    fs'''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##f
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
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    d4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #8.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #4 \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    d16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    d4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % STOP_BEAM:
                                    ]
                                    d4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    \<
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    dqf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    bqf,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    aqs,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    a,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    af,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    gqs,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    gqf,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    e,4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##f
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            r1
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >4
                            % AFTER:
                            % MARKUP:
                            ^ \markup \center-align { \center-column { \line { \concat { C+41 }  }\line { \concat { +35 }  } } }
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            _ \<
                              %! abjad.glissando(7)
                            \glissando
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
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
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \afterGrace
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >4
                                % CLOSING:
                                % COMMANDS:
                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            _ \>
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
                                    \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                    gs''
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                    cs'''
                                >16
                                % AFTER:
                                % ARTICULATIONS:
                                \!
                            % CLOSE_BRACKETS:
                            }
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                              %! +SCORE
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
                            R1 * 5/4
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    r1
                                    <d'' f''>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    _ \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <d'' f''>4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    _ \>
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
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <d'' f''>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    R1 * 5/4
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                    r1
                                    % BEFORE:
                                    % COMMANDS:
                                    \fancy-gliss
                                       #'(
                                          (0 0 0.5 0.25 1 0)
                                          (1 0 1.5 -0.25 2 0)
                                          (2 0 2.5 0.5 3 0)
                                          (3 0 3.5 -0.5 4 0)
                                          (4 0 4.5 0.75 5 0)
                                          (5 0 5.5 -0.75 6 0)
                                          (6 0 6.5 1 7 0)
                                          (7 0 7.5 -1 8 0)
                                          (8 0 8.5 1.5 9 0)
                                          (9 0 9.5 -1.5 10 0)
                                          (10 0 10.5 2 11 0)
                                          (11 0 11.5 -2 12 0)
                                          (12 0 12.5 3 13 0)
                                          (13 0 13.5 -3 14 0)
                                          (14 0 14.5 4 15 0)
                                          (15 0 15.5 -4 16 0)
                                          (16 0 16.5 6 17 0)
                                          (17 0 17.5 -6 18 0)
                                          (18 0 18.5 8 19 0)
                                          (19 0 19.5 -8 20 0)
                                     )
                                     #0.5
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Growl } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    \<
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        c'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ffff
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    e,,1.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    e,,2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    e,,2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    % COMMANDS:
                                    \ottava 0
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
                                    R1 * 3/2
                                    % AFTER:
                                    % COMMANDS:
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    fs,1.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    fs,2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    fs,4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    e,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
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
                                    R1 * 5/4
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
                                    R1 * 5/4
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    r1
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    \afterGrace
                                    <g''' a''' bf''' ds'''' e''''>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \p
                                    % SPANNER_STARTS:
                                    \<
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
                                        <g''' a''' bf''' ds'''' e''''>16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \ffff
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    R1 * 5/4
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
                                    r1
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \afterGrace
                                    <g,, g,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
                                        <g,, g,>16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                    % CLOSE_BRACKETS:
                                    }
                                    <fs,, fs,>1.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <fs,, fs,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    <fs,, fs,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    <e,, e,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \!
                                    \arpeggio
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
                            % BEFORE:
                            % COMMANDS:
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            % OPENING:
                            % COMMANDS:
                            \clef "bass"
                            c2.
                                % CLOSING:
                                % COMMANDS:
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                            - \tweak stencil #constante-hairpin
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
                            c2
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                              %! +SCORE
                            \repeatTie
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            \afterGrace
                            c8
                            % AFTER:
                            % STEM_TREMOLOS:
                            :64
                            % SPANNER_STARTS:
                              %! +SCORE
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
                            r8
                            c1.
                                % CLOSING:
                                % COMMANDS:
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
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
                            c2.
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                              %! +SCORE
                            \repeatTie
                            ~
                            % BEFORE:
                            % COMMANDS:
                            \once \override Dots.staff-position = #2
                            % OPENING:
                            \afterGrace
                            c2
                            % AFTER:
                            % STEM_TREMOLOS:
                            :32
                            % SPANNER_STARTS:
                              %! +SCORE
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
                                e16
                                    % CLOSING:
                                    % COMMANDS:
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    r1
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % BEFORE:
                                    % COMMANDS:
                                    \boxed-markup "Glockenspiel" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \afterGrace
                                    d''2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \p
                                    % SPANNER_STARTS:
                                    \<
                                    \glissando
                                    % OPEN_BRACKETS:
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \once \override Flag.stroke-style = #"grace"
                                        d''16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        \mf
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                      %! +SCORE
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
                                    R1 * 5/4
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
                                    R1 * 5/4
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
                                    \staff-line-count 4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    f'4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    f'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    f'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    e''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \pp
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
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
                                    f''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    a''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    b''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
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
                                    e'''''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % COMMANDS:
                                    \ottava 0
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
                                    \staff-line-count 4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    d'4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    d'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    d'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    a'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \pp
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
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
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    e''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    a''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
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
                                    e'''''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % COMMANDS:
                                    \ottava 0
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
                                    \staff-line-count 4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    b4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    b4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    b4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "altovarC"
                                    g4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \pp
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % SPANNER_STARTS:
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
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
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    d'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    g'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
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
                                    e'''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % COMMANDS:
                                    \ottava 0
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
                                    \staff-line-count 4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    g4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    % SPANNER_STARTS:
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    g4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \!
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    g4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STARTS:
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 5
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \pp
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % SPANNER_STARTS:
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
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
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    a,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    f16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
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
                                    e'''4
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % SPANNER_STOPS:
                                    \stopTextSpanOne
                                    % COMMANDS:
                                    \ottava 0
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a,1.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \boxed-markup "MST" 1
                                    a,1.
                                        % CLOSING:
                                        % COMMANDS:
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    % AFTER:
                                    % SPANNER_STARTS:
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
                                    a,2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    \afterGrace
                                    a,2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                      %! +SCORE
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
                                        e,16
                                            % CLOSING:
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    % CLOSE_BRACKETS:
                                    }
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
