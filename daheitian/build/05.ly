    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % OPENING:
            % COMMANDS:
            \time 6/16
            s1 * 3/8
            % AFTER:
            % MARKUP:
            - \tweak padding #14
            ^ \markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { II. 鬼 }
            % COMMANDS:
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"48"
                  [\abjad-metric-modulation #1 #1 #2 #0 #'(1 . 1)]
              }
            }
            % OPENING:
            % COMMANDS:
            \time 4/16
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 9/16
            s1 * 9/16
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 7/16
            s1 * 7/16
            % OPENING:
            % COMMANDS:
            \time 5/16
            s1 * 5/16
            % OPENING:
            % COMMANDS:
            \time 4/16
            s1 * 1/4
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/4
            R1 * 1/4
            % AFTER:
            % MARKUP:
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.ufermata" }
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
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
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Solo } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -8.5
                                    \startTextSpan
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs''8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
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
                                    ds''4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \pp
                                    cs''8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    ~
                                    cs''8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
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
                                    ds''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Tie.transparent = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    cs''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
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
                                    ds''8.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    ~
                                    ds''8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds''16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
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
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                            bqf!8.
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
                                            bqf8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            ^ \ppp
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \>
                                            % OPENING:
                                            % COMMANDS:
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            bqf8.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \!
                                            % STOP_BEAM:
                                            ]
                                            r16
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
                                            % ARTICULATIONS:
                                            ^ \ppp
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            ^ \>
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
                                            r8.
                                            % OPEN_BRACKETS:
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
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
                                                % ARTICULATIONS:
                                                ^ \ppp
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
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
                                            % CLOSE_BRACKETS:
                                            }
                                            r8.
                                            r16
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 4 0))
                                            \times 15/18
                                            {
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
                                                % ARTICULATIONS:
                                                ^ \ppp
                                                % SPANNER_STARTS:
                                                - \tweak circled-tip ##t
                                                ^ \>
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
                                            as4.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            \<
                                            ~
                                            as4
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as4.
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \ppp
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as8.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as4..
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as4..
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as8.
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as8
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                            ~
                                            as4
                                            % AFTER:
                                            % SPANNER_STARTS:
                                            \repeatTie
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                            r1 * 3/16
                            s1 * 3/16
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
                            r1 * 1/8
                            s1 * 1/8
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
                            r1 * 9/32
                            s1 * 9/32
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
                            r1 * 7/32
                            s1 * 7/32
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
                            r1 * 7/32
                            s1 * 7/32
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
                            r1 * 5/32
                            s1 * 5/32
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
                            r1 * 1/8
                            s1 * 1/8
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
                            r1 * 1/8
                            s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    \ottava 1
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
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
                                    \revert Staff.Stem.stemlet-length
                                    <a''' bf''' ds'''' e'''' fs''''>16
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :128
                                    % ARTICULATIONS:
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Dots.staff-position = #2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a''' bf''' ds'''' e'''' fs''''>32
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :256
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <a''' bf''' ds'''' e'''' fs''''>32
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :256
                                    % ARTICULATIONS:
                                    \!
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    r8
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
                                    % AFTER:
                                    % COMMANDS:
                                    \stopStaff \startStaff
                                    r8.
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a''' bf''' ds'''' e'''' fs''''>8..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <a''' bf''' ds'''' e'''' fs''''>32
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :256
                                    % ARTICULATIONS:
                                    \f
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    s1 * 1/8
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
                        \tag #'voice12
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "harp 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "harp 2 voice"
                                {
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                            r1 * 3/16
                            s1 * 3/16
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
                            r1 * 1/8
                            s1 * 1/8
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
                            r1 * 9/32
                            s1 * 9/32
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
                            r1 * 7/32
                            s1 * 7/32
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
                            r1 * 7/32
                            s1 * 7/32
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
                            r1 * 5/32
                            s1 * 5/32
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
                            r1 * 1/8
                            s1 * 1/8
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
                            r1 * 1/8
                            s1 * 1/8
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
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    c'4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    c'4
                                    c'4.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    c'4..
                                    c'4..
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    c'8.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    c'8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \repeatTie
                                    c'4
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    s1 * 1/8
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    r8.
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    c'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    % OPEN_BRACKETS:
                                    <<
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Accidental.stencil = ##f
                                            \voiceTwo
                                            cs'8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            \mf
                                            r8
                                            % OPEN_BRACKETS:
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 8 9) (ly:make-duration 4 0))
                                            \times 9/8
                                            {
                                                r4
                                                % BEFORE:
                                                % COMMANDS:
                                                \once \override Staff.Accidental.stencil = ##f
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                \mf
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                        % OPEN_BRACKETS:
                                        \context Voice = "percussion 3 imbrication"
                                        \with
                                        {
                                            \override TupletBracket.stencil = ##f
                                            \override TupletNumber.stencil = ##f
                                        }
                                        {
                                            % BEFORE:
                                            % COMMANDS:
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Staff.Accidental.stencil = ##f
                                            \voiceOne
                                            cs'8
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \accent
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
                                                \once \override Staff.Accidental.stencil = ##f
                                                cs'4
                                                % AFTER:
                                                % ARTICULATIONS:
                                                - \accent
                                            % CLOSE_BRACKETS:
                                            }
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    >>
                                    % AFTER:
                                    % COMMANDS:
                                    \oneVoice
                                    r8.
                                    r32
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Tie.transparent = ##f
                                    c'16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    \mp
                                    % SPANNER_STARTS:
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'8
                                    r8.
                                    r32
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Tie.transparent = ##f
                                    c'16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'8
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 4 5) (ly:make-duration 4 0))
                                    \times 15/12
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \once \override Staff.Accidental.stencil = ##f
                                        c'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \stopped
                                        r8
                                    % CLOSE_BRACKETS:
                                    }
                                    r8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.Accidental.stencil = ##f
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \stopped
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \once \override Staff.BarLine.transparent = ##f
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    r1 * 1/8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 3/16
                                    s1 * 3/16
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 9/32
                                    s1 * 9/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 7/32
                                    s1 * 7/32
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
                                    r1 * 5/32
                                    s1 * 5/32
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
                                    r1 * 1/8
                                    s1 * 1/8
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
                                    r1 * 1/8
                                    s1 * 1/8
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
