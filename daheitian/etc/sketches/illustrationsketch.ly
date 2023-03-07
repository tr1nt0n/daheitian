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
            - \markup \fontsize #8 { Stage 1 ( interpolation via single instruments moving to next stage ) }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { Stage 2 }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 15/4
            s1 * 15/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { Stage 3 }
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
                        R1 * 15/4
                        R1 * 15/4
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
                        r4
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak stencil #constante-hairpin
                        \<
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        r4
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        r16
                        r4
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        c''16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % START_BEAM:
                        [
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }
                        % STOP_BEAM:
                        ]
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
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Überblasen" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
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
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
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
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
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
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
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
                        % START_BEAM:
                        [
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
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
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
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
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
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
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
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
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
                        a8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        r8.
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
                        % SPANNER_STARTS:
                        ~
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8
                        r8
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8
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
                        a16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r16
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        r8.
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
                        % SPANNER_STARTS:
                        ~
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8
                        r8
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8
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
                        a16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r16
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                        % OPENING:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                        a8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
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
                        a8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % STOP_BEAM:
                        ]
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
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak stencil #constante-hairpin
                        \<
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        cqs,8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        r16
                        r4
                        r8
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        d16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r4
                        cqs,8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        r16
                        r4
                        r8
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        d16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r4
                        cqs,8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        r16
                        r4
                        r8
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        d16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r4
                        cqs,4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % START_BEAM:
                        [
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % STOP_BEAM:
                        ]
                        cqs,8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % STOP_BEAM:
                        ]
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        d8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % STOP_BEAM:
                        ]
                        cqs,4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % START_BEAM:
                        [
                        cqs,8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % STOP_BEAM:
                        ]
                        d4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        cqs,8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % STOP_BEAM:
                        ]
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % START_BEAM:
                        [
                        cqs,8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % STOP_BEAM:
                        ]
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % START_BEAM:
                        [
                        cqs,8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % STOP_BEAM:
                        ]
                        d4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        cqs,8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % STOP_BEAM:
                        ]
                        cqs,4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % START_BEAM:
                        [
                        cqs,16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        d16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % STOP_BEAM:
                        ]
                        cqs,8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }
                        % START_BEAM:
                        [
                        d8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % MARKUP:
                        ^ \markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }
                        % STOP_BEAM:
                        ]
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
                        R1 * 15/4
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
                        R1 * 15/4
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
                        r4
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 4
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        r4
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        r4
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % STOP_BEAM:
                        ]
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 4
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
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
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        f'2.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        f'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        g2.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        f'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % STOP_BEAM:
                        ]
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
                        r4
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
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        r8
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        r4
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % STOP_BEAM:
                        ]
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
                        r4
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
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
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
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        r8
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        r4
                        r4
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r8
                        r8
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r4
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % STOP_BEAM:
                        ]
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 4
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \fff
                        % START_BEAM:
                        [
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -3
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        r16
                        r16
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r16
                        % AFTER:
                        % START_BEAM:
                        [
                        r16
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        r16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                        r4
                        r4
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        r4
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r8
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        r4
                        g4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r8.
                        r8
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'8.
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        r16
                        r4
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        g4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        g8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        f'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        g8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        d'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        f'16
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % STOP_BEAM:
                        ]
                        b8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        % START_BEAM:
                        [
                        f'8
                        % AFTER:
                        % ARTICULATIONS:
                        - \marcato
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % STOP_BEAM:
                        ]
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
