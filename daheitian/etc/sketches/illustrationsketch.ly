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
            \time 9/4
            s1 * 9/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { Stage 1 }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { Stage 2 }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { Stage 3 }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #8 { Stage 4 }
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \mf
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo, 1/3 Luftklang" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf16
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \mf
                        % SPANNER_STARTS:
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 Luftklang" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \f
                        % SPANNER_STARTS:
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 Luftklang" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "Norm." }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf16
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STOPS:
                        \stopTextSpan
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \!
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
                        R1 * 9/4
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \mf
                        % SPANNER_STARTS:
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 Luftklang" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        c''8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \f
                            % SPANNER_STARTS:
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "1/3 Luftklang" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "Norm." }
                            \startTextSpan
                            - \tweak stencil #constante-hairpin
                            \<
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            r8.
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''8.
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % SPANNER_STARTS:
                            ~
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''8.
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''16
                            % AFTER:
                            % SPANNER_STARTS:
                            \repeatTie
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            r8.
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''16
                            % AFTER:
                            % SPANNER_STARTS:
                            \repeatTie
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            % SPANNER_STOPS:
                            \stopTextSpan
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            r8.
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8.
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                        % CLOSE_BRACKETS:
                        }
                        % OPEN_BRACKETS:
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                        \times 2/3
                        {
                            c''16
                            % AFTER:
                            % SPANNER_STARTS:
                            \repeatTie
                            r8.
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''4
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            c''8
                            % AFTER:
                            % ARTICULATIONS:
                            - \tenuto
                            \!
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
                        R1 * 9/4
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \mf
                        % SPANNER_STARTS:
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 Luftklang" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \!
                        % SPANNER_STOPS:
                        \stopTextSpan
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \f
                        % SPANNER_STARTS:
                        - \tweak padding #5.5
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "1/3 Luftklang" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { "Norm." }
                        \startTextSpan
                        - \tweak stencil #constante-hairpin
                        \<
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        % SPANNER_STOPS:
                        \stopTextSpan
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        r8.
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf4
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8.
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        bf8
                        % AFTER:
                        % ARTICULATIONS:
                        - \tenuto
                        \!
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
                    R1 * 9/4
                    R1 * 9/4
                    R1 * 9/4
                    % OPENING:
                    % COMMANDS:
                    \clef "bass"
                    ef\breve
                    ef4
                    % AFTER:
                    % SPANNER_STARTS:
                    \repeatTie
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                        R1 * 9/4
                        R1 * 9/4
                        % BEFORE:
                        % COMMANDS:
                        \lowest
                        \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        #(define afterGraceFraction (cons 10 11))
                        \clef "bass"
                        c,1
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            c,16
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        c,1
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            c,16
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        c,1
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            c,16
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        c,1
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override NoteHead.no-ledgers = ##t
                        % OPENING:
                        % COMMANDS:
                        \hide NoteHead
                        \override Accidental.stencil = ##f
                        \override NoteColumn.glissando-skip = ##t
                        \override NoteHead.no-ledgers = ##t
                        \afterGrace
                        c,8
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        % OPEN_BRACKETS:
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override NoteHead.no-ledgers = ##t
                            % OPENING:
                            % COMMANDS:
                            \revert Accidental.stencil
                            \revert NoteColumn.glissando-skip
                            \revert NoteHead.no-ledgers
                            \undo \hide NoteHead
                            \slash
                            c,16
                            % AFTER:
                            % ARTICULATIONS:
                            \ff
                        % CLOSE_BRACKETS:
                        }
                        % ABSOLUTE_AFTER:
                        % COMMANDS:
                        \revert-noteheads
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
                        R1 * 9/4
                        R1 * 9/4
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        gs,,\breve
                        gs,,4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        gs,,\breve
                        gs,,4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                    R1 * 9/4
                    R1 * 9/4
                    R1 * 9/4
                    R1 * 9/4
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 1
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        c'2
                        % AFTER:
                        % COMMANDS:
                        \boxed-markup "Tanggu" 1
                        c'2
                        c'2
                        c'2
                        c'4
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        % OPEN_BRACKETS:
                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 2 0))
                        \times 9/8
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 2
                            % OPENING:
                            % COMMANDS:
                            \clef "percussion"
                            b2
                            % AFTER:
                            % COMMANDS:
                            \boxed-markup "Gongs der chinesisch Oper" 1
                            d'2
                            b2
                            d'2
                        % CLOSE_BRACKETS:
                        }
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #right
                            b'32 * 127/32
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding #7
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Pizz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3
                            \startTextSpan
                            b'32 * 31/8
                            b'32 * 59/16
                            b'32 * 109/32
                            b'32 * 49/16
                            b'32 * 11/4
                            b'32 * 79/32
                            b'32 * 71/32
                            b'32 * 65/32
                            b'32 * 15/8
                            b'32 * 7/4
                            b'32 * 27/16
                            b'32 * 13/8
                            b'32 * 51/32
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                            \startTextSpanOne
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #left
                            b'32 * 49/32
                            % AFTER:
                            % START_BEAM:
                            [
                            b'32 * 25/16
                            b'32 * 51/32
                            b'32 * 53/32
                            b'32 * 55/32
                            b'32 * 59/32
                            b'32 * 63/32
                            b'32 * 69/32
                            b'32 * 19/8
                            b'32 * 83/32
                            b'32 * 23/8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % SPANNER_STARTS:
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "MSP" }
                            \startTextSpanOne
                            b'32 * 101/32
                            b'32 * 55/16
                            b'32 * 59/16
                            b'32 * 123/32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #right
                            bqf'32 * 127/32
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding #7
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Pizz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3
                            \startTextSpan
                            bqf'32 * 31/8
                            bqf'32 * 59/16
                            bqf'32 * 109/32
                            bqf'32 * 49/16
                            bqf'32 * 11/4
                            bqf'32 * 79/32
                            bqf'32 * 71/32
                            bqf'32 * 65/32
                            bqf'32 * 15/8
                            bqf'32 * 7/4
                            bqf'32 * 27/16
                            bqf'32 * 13/8
                            bqf'32 * 51/32
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                            \startTextSpanOne
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #left
                            bqf'32 * 49/32
                            % AFTER:
                            % START_BEAM:
                            [
                            bqf'32 * 25/16
                            bqf'32 * 51/32
                            bqf'32 * 53/32
                            bqf'32 * 55/32
                            bqf'32 * 59/32
                            bqf'32 * 63/32
                            bqf'32 * 69/32
                            bqf'32 * 19/8
                            bqf'32 * 83/32
                            bqf'32 * 23/8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % SPANNER_STARTS:
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "MSP" }
                            \startTextSpanOne
                            bqf'32 * 101/32
                            bqf'32 * 55/16
                            bqf'32 * 59/16
                            bqf'32 * 123/32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #right
                            % OPENING:
                            % COMMANDS:
                            \clef "altovarC"
                            aqs'32 * 127/32
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Pizz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3
                            \startTextSpan
                            aqs'32 * 31/8
                            aqs'32 * 59/16
                            aqs'32 * 109/32
                            aqs'32 * 49/16
                            aqs'32 * 11/4
                            aqs'32 * 79/32
                            aqs'32 * 71/32
                            aqs'32 * 65/32
                            aqs'32 * 15/8
                            aqs'32 * 7/4
                            aqs'32 * 27/16
                            aqs'32 * 13/8
                            aqs'32 * 51/32
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                            \startTextSpanOne
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #left
                            aqs'32 * 49/32
                            % AFTER:
                            % START_BEAM:
                            [
                            aqs'32 * 25/16
                            aqs'32 * 51/32
                            aqs'32 * 53/32
                            aqs'32 * 55/32
                            aqs'32 * 59/32
                            aqs'32 * 63/32
                            aqs'32 * 69/32
                            aqs'32 * 19/8
                            aqs'32 * 83/32
                            aqs'32 * 23/8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % SPANNER_STARTS:
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "MSP" }
                            \startTextSpanOne
                            aqs'32 * 101/32
                            aqs'32 * 55/16
                            aqs'32 * 59/16
                            aqs'32 * 123/32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #right
                            % OPENING:
                            % COMMANDS:
                            \clef "bass"
                            bf32 * 127/32
                            % AFTER:
                            % START_BEAM:
                            [
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \<
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            \startTextSpanOne
                            - \tweak padding #8
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Pizz." } \hspace #0.5 }
                            - \tweak bound-details.right.padding -3
                            \startTextSpan
                            bf32 * 31/8
                            bf32 * 59/16
                            bf32 * 109/32
                            bf32 * 49/16
                            bf32 * 11/4
                            bf32 * 79/32
                            bf32 * 71/32
                            bf32 * 65/32
                            bf32 * 15/8
                            bf32 * 7/4
                            bf32 * 27/16
                            bf32 * 13/8
                            bf32 * 51/32
                            % AFTER:
                            % ARTICULATIONS:
                            \mf
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                            % SPANNER_STARTS:
                            - \tweak circled-tip ##t
                            \>
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "SP" } \hspace #0.5 }
                            \startTextSpanOne
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
                        % BEFORE:
                        % GROB_OVERRIDES:
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \context Score = "Score"
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \context RhythmicStaff = "Rhythmic_Staff"
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'1
                                        ~
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        % OPEN_BRACKETS:
                        \times 1/1
                        {
                            % BEFORE:
                            % GROB_OVERRIDES:
                            \once \override Beam.grow-direction = #left
                            bf32 * 49/32
                            % AFTER:
                            % START_BEAM:
                            [
                            bf32 * 25/16
                            bf32 * 51/32
                            bf32 * 53/32
                            bf32 * 55/32
                            bf32 * 59/32
                            bf32 * 63/32
                            bf32 * 69/32
                            bf32 * 19/8
                            bf32 * 83/32
                            bf32 * 23/8
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpanOne
                            % SPANNER_STARTS:
                            - \tweak padding #5.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { "MSP" }
                            \startTextSpanOne
                            bf32 * 101/32
                            bf32 * 55/16
                            bf32 * 59/16
                            bf32 * 123/32
                            % AFTER:
                            % ARTICULATIONS:
                            \!
                            % SPANNER_STOPS:
                            \stopTextSpan
                            \stopTextSpanOne
                            % STOP_BEAM:
                            ]
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % GROB_REVERTS:
                        \revert TupletNumber.text
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
                        R1 * 9/4
                        R1 * 9/4
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        gs,\breve
                        gs,4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
                        gs,\breve
                        gs,4
                        % AFTER:
                        % SPANNER_STARTS:
                        \repeatTie
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
