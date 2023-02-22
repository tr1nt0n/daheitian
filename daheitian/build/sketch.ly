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
            - \markup \fontsize #7 "Stage 1 ( always accumulating / interpolating)"
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "Stage 2"
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #7 "Stage 3"
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
                        R1 * 9/4
                        R1 * 9/4
                        R1 * 9/4
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "bassclarinet voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \voiceTwo
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % SPANNER_STARTS:
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Schlagzunge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    r16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    r8.
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                \times 4/5
                                {
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                \times 9/10
                                {
                                    r2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    r8
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                \times 6/5
                                {
                                    r16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    r16
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "bassclarinet imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \voiceOne
                                    s8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    s16
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    s16
                                    s16
                                    s8.
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                \times 4/5
                                {
                                    s16
                                    s16
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 0
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                \times 9/10
                                {
                                    s2
                                    s8
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s8
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                \times 6/5
                                {
                                    s16
                                    s32
                                    s16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
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
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \voiceTwo
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Schlagzunge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                \times 4/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                \times 9/10
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                \times 6/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c''32
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "bassclarinet imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 4 0))
                                \times 6/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \voiceOne
                                    s16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    s16
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 4) (ly:make-duration 4 0))
                                \times 4/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s16
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 10 9) (ly:make-duration 4 0))
                                \times 9/10
                                {
                                    s8
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    cs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 3 }
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    cs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 3 }
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 3 }
                                    s16
                                    s16
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 7) (ly:make-duration 4 0))
                                \times 7/5
                                {
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 5 0))
                                \times 6/5
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    cs''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s32
                                    s32
                                    s32
                                    s32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "bassoon voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                \times 7/6
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \voiceTwo
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    b8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % SPANNER_STARTS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Schlagzunge" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                % CLOSE_BRACKETS:
                                }
                                r4.
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                r8.
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf8.
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                r8.
                                r4..
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b16
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 2 }
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b16
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 3 }
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % STOP_BEAM:
                                ]
                                r16
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "bassoon imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                \times 7/6
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \voiceOne
                                    s8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    s8
                                    s8
                                % CLOSE_BRACKETS:
                                }
                                s4.
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 3 }
                                    s8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                s8.
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                % MARKUP:
                                - \markup \center-column { \circle 3 }
                                s8.
                                s4..
                                s16
                                s16
                                s16
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
                            \context Voice = "bassoon voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                \voiceTwo
                                b8
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 3 }
                                % START_BEAM:
                                [
                                % SPANNER_STARTS:
                                - \tweak padding #12.5
                                - \abjad-dashed-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \upright { "Schlagzunge" } \hspace #0.5 }
                                - \tweak bound-details.right.padding -1
                                \startTextSpan
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b8
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 1 }
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf8
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 2 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b8.
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 3 }
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b8.
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 2 }
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf8.
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                \times 7/6
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 1 }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                \times 7/6
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % MARKUP:
                                    ^ \markup \center-column { \circle 3 }
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b16
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 1 }
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                b16
                                % AFTER:
                                % MARKUP:
                                ^ \markup \center-column { \circle 3 }
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf16
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % SPANNER_STOPS:
                                \stopTextSpan
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "bassoon imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % BEFORE:
                                % COMMANDS:
                                \voiceOne
                                s8
                                s8
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                % MARKUP:
                                - \markup \center-column { \circle 3 }
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                \times 2/3
                                {
                                    s8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 3 }
                                    s8
                                % CLOSE_BRACKETS:
                                }
                                s8.
                                s8.
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                % MARKUP:
                                - \markup \center-column { \circle 3 }
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                \times 7/6
                                {
                                    s8
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 2 }
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 4 0))
                                \times 7/6
                                {
                                    s8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 1
                                    bf8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % MARKUP:
                                    - \markup \center-column { \circle 1 }
                                    s8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                s16
                                s16
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                bf16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                % MARKUP:
                                - \markup \center-column { \circle 1 }
                                % SPANNER_STOPS:
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
                        R1 * 9/4
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
                        R1 * 9/4
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "piano 1 voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \voiceTwo
                                R1 * 9/4
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "piano imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % BEFORE:
                                % COMMANDS:
                                \voiceOne
                                s1
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
                            \context Voice = "piano 1 voice temp"
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                \times 6/7
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    \voiceTwo
                                    c''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    % START_BEAM:
                                    [
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    g''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    cs''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    g''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    cs''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    af''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                                \times 4/7
                                {
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % START_BEAM:
                                    [
                                    af''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    cs''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    af''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    d''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    d''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                \times 9/7
                                {
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % START_BEAM:
                                    [
                                    cs''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    af''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    d''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    c''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    e''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
                                e''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                % START_BEAM:
                                [
                                c''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                e''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                c''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                bf'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                c''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                bf'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
                                c''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                % START_BEAM:
                                [
                                e''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                c''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                d''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                af''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                bf'''16
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                af''''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                                \times 6/7
                                {
                                    cs''''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    % START_BEAM:
                                    [
                                    af''''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    cs''''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    bf'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    cs''''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    bf'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    cs''''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "piano imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 4 0))
                                \times 6/7
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \voiceOne
                                    s16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                    s16
                                    s16
                                    s16
                                    s16
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                                \times 4/7
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                    s16
                                    s16
                                    s16
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 2
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                    s16
                                % CLOSE_BRACKETS:
                                }
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 9) (ly:make-duration 4 0))
                                \times 9/7
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                    s16
                                    s16
                                    s16
                                    s16
                                    s16
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                % CLOSE_BRACKETS:
                                }
                                s16
                                s16
                                s16
                                s16
                                bf'''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                s16
                                bf'''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                % STOP_BEAM:
                                ]
                                s16
                                s16
                                s16
                                s16
                                s16
                                bf'''16
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                s16
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 5 0))
                                \times 6/7
                                {
                                    s32
                                    s32
                                    s32
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    bf'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                    s32
                                    % BEFORE:
                                    % COMMANDS:
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 3
                                    bf'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                    s32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                % CLOSE_BRACKETS:
                                }
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
                \context Staff = "piano 2 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 2 voice"
                    {
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
                        c'2.
                        % AFTER:
                        % COMMANDS:
                        \boxed-markup "Bangu" 1
                        c'2..
                        c'2
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'8
                        c'4..
                        c'4.
                        c'4
                        c'2
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'16
                        c'4..
                        c'8.
                        c'4.
                        c'4
                        c'2
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        c'16
                        c'4..
                        c'4..
                        c'8.
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
                        % OPEN_BRACKETS:
                        <<
                            % OPEN_BRACKETS:
                            \context Voice = "percussion 3 voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                \voiceTwo
                                r4.
                                % ABSOLUTE_BEFORE:
                                % COMMANDS:
                                \staff-line-count 1
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                % OPENING:
                                % COMMANDS:
                                \clef "percussion"
                                cs'4.
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % COMMANDS:
                                \boxed-markup "Amboss" 1
                                r2..
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 3 0))
                                \times 15/12
                                {
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "anvil imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % BEFORE:
                                % COMMANDS:
                                \voiceOne
                                s4.
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'4.
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                s2..
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 3 0))
                                \times 15/12
                                {
                                    s4
                                    s4
                                % CLOSE_BRACKETS:
                                }
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
                            \context Voice = "percussion 3 voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \voiceTwo
                                r8..
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8..
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                r8.
                                r8
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                \times 9/8
                                {
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                % CLOSE_BRACKETS:
                                }
                                r8..
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8..
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'16.
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                r16.
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "anvil imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % BEFORE:
                                % COMMANDS:
                                \voiceOne
                                s8..
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8..
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                s8.
                                s8.
                                s8
                                s8
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                \times 9/8
                                {
                                    s4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    cs'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    - \stopped
                                % CLOSE_BRACKETS:
                                }
                                s8..
                                s8..
                                s16.
                                s16.
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
                            \context Voice = "percussion 3 voice temp"
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                \voiceTwo
                                cs'8.
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                % STOP_BEAM:
                                ]
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                \times 9/8
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                % CLOSE_BRACKETS:
                                }
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8..
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8..
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'8..
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8..
                                % AFTER:
                                % ARTICULATIONS:
                                \f
                                % STOP_BEAM:
                                ]
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'16.
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                \mp
                                % START_BEAM:
                                [
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                c'16.
                                % AFTER:
                                % ARTICULATIONS:
                                - \stopped
                                % STOP_BEAM:
                                ]
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "anvil imbrication"
                            \with
                            {
                                \override TupletBracket.stencil = ##f
                                \override TupletNumber.stencil = ##f
                            }
                            {
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                \voiceOne
                                cs'8.
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                % START_BEAM:
                                [
                                s8.
                                s8
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                % STOP_BEAM:
                                ]
                                % OPEN_BRACKETS:
                                \tweak text #tuplet-number::calc-fraction-text
                                \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                \times 9/8
                                {
                                    s4
                                    s4
                                % CLOSE_BRACKETS:
                                }
                                s8..
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8..
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                % STOP_BEAM:
                                ]
                                s8..
                                % BEFORE:
                                % COMMANDS:
                                \once \override Staff.Accidental.stencil = ##f
                                cs'8..
                                % AFTER:
                                % ARTICULATIONS:
                                - \accent
                                - \stopped
                                % STOP_BEAM:
                                ]
                                s16.
                                s16.
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
                        R1 * 9/4
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
