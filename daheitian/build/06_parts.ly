    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 12/8
            s1 * 3/2
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #2 #0 #5 #6 #2 #0 #'(1 . 1)]
              }
            }
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak padding #-14
            ^ \markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( Ganz kurz, } \line { nur ein Atemzug ) } }
            _ \markup \center-column { \abs-fontsize #15 \musicglyph "scripts.uveryshortfermata" }
            \once \override Score.BarLine.transparent = ##f
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'group2
                {
                    \context SquareBracketGroup = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "flute staff"
                            {
                                \context Voice = "flute voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                    cs'4.
                                    :32
                                    \ppp
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -17
                                    \startTextSpan
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    ds'16
                                    :128
                                    ]
                                    ~
                                    ds'4
                                    :32
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ds'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    cs'8.
                                    :64
                                    \pp
                                    ]
                                    \<
                                    ~
                                    cs'4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        :128
                                        - \accent
                                        (
                                    }
                                    }
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    ds'16
                                    :128
                                    ]
                                    ~
                                    ds'4.
                                    :32
                                    )
                                    cs'4.
                                    :32
                                    \p
                                    \stopTextSpan
                                    <<
                                        \context Voice = "flute voice temp"
                                        {
                                            \voiceTwo
                                            ds'4..
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "( p )"))
                                            :32
                                            \<
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            cs'16
                                            :128
                                            ~
                                            cs'4
                                            :32
                                            \scaleDurations #'(1 . 1) {
                                            \slashedGrace {
                                                e'16
                                                :128
                                                - \accent
                                                (
                                            }
                                            }
                                            ds'4
                                            :32
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'16
                                            :128
                                            )
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            cs'8.
                                            :64
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            cs'16
                                            :128
                                            \mp
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \scaleDurations #'(1 . 1) {
                                            \slashedGrace {
                                                e'16
                                                :128
                                                - \accent
                                                (
                                            }
                                            }
                                            \revert Staff.Stem.stemlet-length
                                            ds'8.
                                            :64
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            ds'8
                                            :64
                                            )
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            cs'8
                                            :64
                                            ]
                                        }
                                        \context Voice = "flute divisi voice"
                                        {
                                            \voiceOne
                                            f'2
                                            :32
                                            :32
                                            - \tweak padding #8
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1.|2. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -15
                                            \startTextSpan
                                            ~
                                            f'16
                                            :128
                                            :128
                                              %! +SCORE
                                        %%% \repeatTie
                                            g'4..
                                            :32
                                            :32
                                            f'4
                                            :32
                                            :32
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            f'8.
                                            :64
                                            :64
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \scaleDurations #'(1 . 1) {
                                            \slashedGrace {
                                                af'16
                                                :128
                                                - \accent
                                                (
                                            }
                                            }
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            g'16
                                            :128
                                            :128
                                            \stopTextSpan
                                            ]
                                            ~
                                            g'4
                                            :32
                                            :32
                                            )
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "oboe staff"
                            {
                                \context Voice = "oboe voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    <<
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                            \voiceOne
                                            r4.
                                            r4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 7) (ly:make-duration 3 0))
                                            \times 7/6
                                            {
                                                bqf4
                                                - \tweak circled-tip ##t
                                                ^ \<
                                                  %! abjad.glissando(7)
                                                \glissando
                                                \once \override Dots.staff-position = #2
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                bqf4
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pppp"))
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                bqf4
                                                \!
                                            }
                                            r4.
                                            bqf8
                                            [
                                            - \tweak circled-tip ##t
                                            ^ \<
                                              %! abjad.glissando(7)
                                            \glissando
                                            \once \override Dots.staff-position = #2
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            bqf8
                                                ^ #(make-dynamic-script (markup #:whiteout #:italic "ppp"))
                                            - \tweak circled-tip ##t
                                            ^ \>
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            bqf8
                                            \!
                                            ]
                                            r8
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 2/3
                                            {
                                                bqf4
                                                - \tweak circled-tip ##t
                                                ^ \<
                                                  %! abjad.glissando(7)
                                                \glissando
                                                \once \override Dots.staff-position = #2
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                bqf4
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "ppp"))
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                bqf4
                                                \!
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 6 5) (ly:make-duration 3 0))
                                            \times 15/18
                                            {
                                                bqf4
                                                - \tweak circled-tip ##t
                                                ^ \<
                                                  %! abjad.glissando(7)
                                                \glissando
                                                \once \override Dots.staff-position = #2
                                                  %! abjad.glissando(1)
                                                \hide NoteHead
                                                  %! abjad.glissando(1)
                                                \override Accidental.stencil = ##f
                                                  %! abjad.glissando(1)
                                                \override NoteColumn.glissando-skip = ##t
                                                  %! abjad.glissando(1)
                                                \override NoteHead.no-ledgers = ##t
                                                bqf4
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp"))
                                                - \tweak circled-tip ##t
                                                ^ \>
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                bqf4
                                                \!
                                            }
                                        }
                                        \context Voice = "bassclarinet divisi voice"
                                        {
                                            \voiceTwo
                                            as1.
                                            - \tweak circled-tip ##t
                                            \<
                                            ~
                                            as2.
                                                _ #(make-dynamic-script (markup #:whiteout #:italic "ppp +"))
                                            \<
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            as2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            as2.
                                            \pp
                                            \<
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            as2
                                            \p
                                              %! +SCORE
                                        %%% \repeatTie
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice5
                {
                    \context Staff = "frenchhorn staff"
                    {
                        \context Voice = "frenchhorn voice"
                        {
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group3
                {
                    \context SquareBracketGroup = "sub group 2"
                    <<
                        \tag #'voice6
                        {
                            \context Staff = "trumpet staff"
                            {
                                \context Voice = "trumpet voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "tenortrombone staff"
                            {
                                \context Voice = "tenortrombone voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice8
                        {
                            \context Staff = "tuba staff"
                            {
                                \context Voice = "tuba voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context GrandStaff = "sub group 3"
                    <<
                        \tag #'voice9
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r2
                                    \clef "bass"
                                    <ef, c>4
                                    \ppp
                                    (
                                    \clef "treble"
                                    <cs'' d'' f'' a''>4
                                    \p
                                    \ottava 1
                                    <fs''' e''''>8
                                    \pp
                                    )
                                    \ottava 0
                                    r8
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice10
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r2
                                    \clef "bass"
                                    <bf,,>4
                                    (
                                    \sustainOn
                                    \clef "treble"
                                    <af g'>4
                                    \ottava 1
                                    <b''>8
                                    )
                                    \sustainOff
                                    \ottava 0
                                    r8
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group5
                {
                    \context GrandStaff = "sub group 4"
                    <<
                        \tag #'voice11
                        {
                            \context Staff = "harp 1 staff"
                            {
                                \context Voice = "harp 1 voice"
                                {
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    r4.
                                    r4
                                    \ottava 1
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    :64
                                    - \espressivo
                                    \arpeggio
                                    \ppp
                                    ~
                                    <a''' bf''' ds'''' e'''' fs''''>4.
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    <a''' bf''' ds'''' e'''' fs''''>8
                                    :64
                                      %! +SCORE
                                %%% \repeatTie
                                    r4
                                    r4
                                    <g''' a''' bf''' ds'''' e''''>4
                                    :32
                                    - \espressivo
                                    \arpeggio
                                    r4
                                    <a''' bf''' ds'''' e'''' fs''''>4
                                    :32
                                    - \espressivo
                                    \arpeggio
                                    r4
                                    r4.
                                    <g''' a''' bf''' ds'''' e''''>4.
                                    :32
                                    - \espressivo
                                    \arpeggio
                                    ~
                                    <g''' a''' bf''' ds'''' e''''>8
                                    :64
                                      %! +SCORE
                                %%% \repeatTie
                                    \ottava 0
                                    r4.
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                    r2.
                                    r8.
                                    \staff-line-count 1
                                    \textSpannerDown
                                    \clef "percussion"
                                    \tweak style #'la
                                    c'8.
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-up-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Langsam die mit Draht umwickelten Saiten mit einer Plastikkarte Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ^ \<
                                    ~
                                    \tweak style #'la
                                    c'4.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2
                                    ^ \pp
                                      %! +SCORE
                                %%% \repeatTie
                                    ^ \<
                                    ~
                                    \tweak style #'la
                                    c'2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \tweak style #'la
                                    c'2
                                    ^ \p
                                    \stopTextSpan
                                      %! +SCORE
                                %%% \repeatTie
                                    \textSpannerUp
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'voice13
                {
                    \context Staff = "percussion 1 staff"
                    {
                        \context Voice = "percussion 1 voice"
                        {
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                        %%% \stopStaff \startStaff
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                        }
                    }
                }
                \tag #'group6
                {
                    \context SquareBracketGroup = "sub group 5"
                    <<
                        \tag #'voice14
                        {
                            \context Staff = "percussion 2 staff"
                            {
                                \context Voice = "percussion 2 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice15
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group7
                {
                    \context SquareBracketGroup = "sub group 6"
                    <<
                        \tag #'voice16
                        {
                            \context Staff = "violin 1 staff"
                            {
                                \context Voice = "violin 1 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
