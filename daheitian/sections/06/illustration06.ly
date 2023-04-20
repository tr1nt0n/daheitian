\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily"
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
            \time 12/8
            s1 * 3/2
            % AFTER:
            % COMMANDS:
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #6 #2 #0 #'(1 . 1)]
              }
            }
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                    cs''4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -17
                                    \startTextSpan
                                    \<
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ds''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    ds''4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds''8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \pp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    cs''4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % BEFORE:
                                    % BEFORE:
                                    % COMMANDS:
                                    \scaleDurations #'(1 . 1) {
                                    % OPEN_BRACKETS:
                                    \slashedGrace {
                                        e''16
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :128
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        (
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % COMMANDS:
                                    }
                                    % COMMANDS:
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ds''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    ds''4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STOPS:
                                    )
                                    cs''4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \p
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
                                            ds''4..
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            % SPANNER_STARTS:
                                            \<
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "( p )"))
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            cs''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % SPANNER_STARTS:
                                            ~
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
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            ds''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % SPANNER_STOPS:
                                            )
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            % ARTICULATIONS:
                                            \mp
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                e''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            ds''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % SPANNER_STOPS:
                                            )
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            cs''8
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            % STOP_BEAM:
                                            ]
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "flute divisi voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            f''2
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Duett } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -15
                                            \startTextSpan
                                            ~
                                            f''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            g''4..
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            f''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STARTS:
                                            ~
                                            % OPENING:
                                            % COMMANDS:
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f''8.
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :64
                                            :64
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            % BEFORE:
                                            % BEFORE:
                                            % COMMANDS:
                                            \scaleDurations #'(1 . 1) {
                                            % OPEN_BRACKETS:
                                            \slashedGrace {
                                                af''16
                                                % AFTER:
                                                % STEM_TREMOLOS:
                                                :128
                                                % ARTICULATIONS:
                                                - \accent
                                                % SPANNER_STARTS:
                                                (
                                            % CLOSE_BRACKETS:
                                            }
                                            % AFTER:
                                            % COMMANDS:
                                            }
                                            % COMMANDS:
                                            \once \override Tie.transparent = ##f
                                            \once \override Tie.transparent = ##f
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Staff.Stem.stemlet-length
                                            g''16
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :128
                                            :128
                                            % SPANNER_STOPS:
                                            \stopTextSpan
                                            % STOP_BEAM:
                                            ]
                                            % SPANNER_STARTS:
                                            ~
                                            g''4
                                            % AFTER:
                                            % STEM_TREMOLOS:
                                            :32
                                            :32
                                            % SPANNER_STOPS:
                                            )
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceOne
                                            r4.
                                            r4
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 3 0))
                                            \times 7/6
                                            {
                                                bqf4
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \<
                                                \glissando
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Dots.staff-position = #2
                                                % OPENING:
                                                % COMMANDS:
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                bqf4
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                % COMMANDS:
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "pppp"))
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                bqf4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                            % CLOSE_BRACKETS:
                                            }
                                            r4.
                                            bqf8
                                            % AFTER:
                                            % START_BEAM:
                                            [
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \<
                                            \glissando
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Dots.staff-position = #2
                                            % OPENING:
                                            % COMMANDS:
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            bqf8
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            % COMMANDS:
                                            ^ #(make-dynamic-script (markup #:whiteout #:italic "ppp"))
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            bqf8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \!
                                            % STOP_BEAM:
                                            ]
                                            r8
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                bqf4
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \<
                                                \glissando
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Dots.staff-position = #2
                                                % OPENING:
                                                % COMMANDS:
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                bqf4
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                % COMMANDS:
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "ppp"))
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                bqf4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                            % CLOSE_BRACKETS:
                                            }
                                            r2
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                                            \times 15/18
                                            {
                                                bqf4
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \<
                                                \glissando
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Dots.staff-position = #2
                                                % OPENING:
                                                % COMMANDS:
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                bqf4
                                                % AFTER:
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                % COMMANDS:
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "pp"))
                                                % OPENING:
                                                % COMMANDS:
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                bqf4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \!
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "bassclarinet divisi voice"
                                        {
                                            % OPENING:
                                            % COMMANDS:
                                            \voiceTwo
                                            as1.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            \<
                                            ~
                                            as2.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \<
                                            \repeatTie
                                            ~
                                            % COMMANDS:
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ppp +"))
                                            as2
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as2.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \pp
                                            % SPANNER_STARTS:
                                            \<
                                            \repeatTie
                                            ~
                                            as2
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \p
                                            % SPANNER_STARTS:
                                            \repeatTie
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
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
                \tag #'voice5
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context Staff = "frenchhorn staff"
                    {
                        % OPEN_BRACKETS:
                        \context Voice = "frenchhorn voice"
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/4
                            s1 * 3/4
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/8
                            s1 * 3/8
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 1/4
                            s1 * 1/4
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/8
                            s1 * 3/8
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 1/4
                            s1 * 1/4
                            % AFTER:
                            % COMMANDS:
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    r2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <ef, c>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <cs'' d'' f'' a''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <fs''' e''''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \pp
                                    % SPANNER_STOPS:
                                    )
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    r2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <bf,,>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    \sustainOn
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <af g'>4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <b''>4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    \sustainOff
                                    % COMMANDS:
                                    \ottava 0
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
                                    r4.
                                    r4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \ppp
                                    % SPANNER_STARTS:
                                    ~
                                    <a''' bf''' ds'''' e'''' fs''''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    r4
                                    r4
                                    <g''' a''' bf''' ds'''' e''''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    r4
                                    <a''' bf''' ds'''' e'''' fs''''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    r4
                                    r4.
                                    <g''' a''' bf''' ds'''' e''''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <g''' a''' bf''' ds'''' e''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % COMMANDS:
                                    \ottava 0
                                    r4.
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
                                    r2.
                                    r8.
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
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Kratzen Sie langsam die mit Draht umwickelten Saiten mit einer Plastikkarte } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ^ \<
                                    ~
                                    \tweak style #'la
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    ^ \pp
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ^ \<
                                    ~
                                    \tweak style #'la
                                    c'2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    ^ \p
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    % COMMANDS:
                                    \textSpannerUp
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
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/4
                            s1 * 3/4
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/8
                            s1 * 3/8
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 1/4
                            s1 * 1/4
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 3/8
                            s1 * 3/8
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \once \override Staff.BarLine.transparent = ##f
                            % BEFORE:
                            % COMMANDS:
                            \once \override Rest.transparent = ##t
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            r1 * 1/4
                            s1 * 1/4
                            % AFTER:
                            % COMMANDS:
                            \stopStaff \startStaff
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/4
                                    s1 * 3/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/4
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
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
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}
