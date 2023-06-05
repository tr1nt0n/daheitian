  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.14"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.14"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5"
                  [\abjad-metric-modulation-tuplet-lhs #1 #0 #5 #4 #2 #0 #'(1 . 1)]
              }
            }
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            - \tweak padding #11.5
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { { \override #'(font-size . 5.5) \concat { ( \abjad-metronome-mark-mixed-number-markup #2 #0 #1 #"57" #"3" #"5" ) } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { \override #'(font-size . 5.5) \concat { \abjad-metronome-mark-markup #2 #0 #1 #"72" [\abjad-metric-modulation-tuplet-lhs #2 #0 #4 #5 #2 #0 #'(1 . 1)] } }
            \startTextSpan
            \time 2/4
            s1 * 1/2
            \time 4/4
            s1 * 1
            \stopTextSpan
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    f'8.
                                    - \tenuto
                                    \fff
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    r16
                                    r8
                                    f'8
                                    - \tenuto
                                    f'4
                                    - \tenuto
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    f'4
                                    - \tenuto
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    f'16
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    f'16
                                      %! +SCORE
                                    \repeatTie
                                    r8.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    f'4
                                    - \tenuto
                                    - \tweak circled-tip ##t
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \tenuto
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        b'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    )
                                    [
                                      %! +SCORE
                                    \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    f'16
                                    - \tenuto
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \tenuto
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 15 16) (ly:make-duration 4 0))
                                    \times 16/15
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        [
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
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        f'16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'16
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        f'16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        f'32
                                        ^ \markup \center-column { \circle 3 }
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        f'16
                                        \!
                                        ^ \markup \center-column { \circle 2 }
                                        ]
                                    }
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                          %! +SCORE
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \tenuto
                                        \fff
                                        [
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        c''8.
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''8
                                        r8.
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''16
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''16
                                        )
                                        c''4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''16
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''16
                                        c''4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''16
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        c''16
                                        c''4
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        c''16
                                        - \tenuto
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''16
                                        [
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                        c''8.
                                        - \tenuto
                                        )
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \tenuto
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    - \tenuto
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c''8
                                    - \tenuto
                                    ]
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        r8.
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \tenuto
                                        [
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8.
                                        [
                                        c''8
                                        - \tenuto
                                        \scaleDurations #'(1 . 1) {
                                        \slashedGrace {
                                            fs''16
                                            (
                                            \glissando
                                        }
                                        }
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8.
                                        )
                                        [
                                        c''8
                                        - \tenuto
                                          %! +SCORE
                                        \once \override Tie.transparent = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c''16
                                        - \tenuto
                                        ]
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c''8.
                                        - \tenuto
                                        ]
                                        r16
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                    \times 2/3
                                    {
                                        r8
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        - \tenuto
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        - \tenuto
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''32
                                    [
                                    (
                                    - \tweak circled-tip ##t
                                    \>
                                    df''32
                                    c''32
                                    df''32
                                    c''16
                                    df''32
                                    \revert Staff.Stem.stemlet-length
                                    c''32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    df''32
                                    [
                                    c''16
                                    df''32
                                    c''32
                                    df''16
                                    \revert Staff.Stem.stemlet-length
                                    c''32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    df''32
                                    [
                                    c''32
                                    df''32
                                    c''16
                                    df''32
                                    c''32
                                    \revert Staff.Stem.stemlet-length
                                    df''32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                    df''32
                                    c''32
                                    df''16
                                    c''32
                                    \revert Staff.Stem.stemlet-length
                                    df''32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''32
                                    [
                                    df''32
                                    c''16
                                    df''32
                                    c''32
                                    df''32
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c''32
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''32
                                    [
                                    df''32
                                    c''32
                                    df''16
                                    c''32
                                    df''32
                                    \revert Staff.Stem.stemlet-length
                                    c''32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    df''32
                                    [
                                    c''16
                                    df''32
                                    c''32
                                    df''32
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    df''32
                                    [
                                    c''32
                                    df''16
                                    c''32
                                    df''32
                                    c''32
                                    \revert Staff.Stem.stemlet-length
                                    df''32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                    df''32
                                    c''32
                                    df''32
                                    c''16
                                    \revert Staff.Stem.stemlet-length
                                    df''32
                                    \!
                                    )
                                    ]
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    r8.
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \clef "bass"
                                    bf16
                                    - \tenuto
                                    \fff
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    )
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    - \tenuto
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    bf8
                                    )
                                    r8
                                    r16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    - \tenuto
                                    [
                                    ~
                                    bf16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8.
                                    [
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    - \tenuto
                                    ]
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                      %! +SCORE
                                    \repeatTie
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    bf16
                                    - \tenuto
                                    ~
                                    bf16
                                      %! +SCORE
                                    \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    - \tenuto
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                    \scaleDurations #'(1 . 1) {
                                    \slashedGrace {
                                        e'16
                                        (
                                        \glissando
                                    }
                                    }
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \tenuto
                                    ]
                                    ~
                                    bf16
                                    )
                                      %! +SCORE
                                    \repeatTie
                                    r8.
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf16
                                        ^ \markup \center-column { \circle 3 }
                                        [
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
                                        bf16
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf8
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf8
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        \revert Staff.Stem.stemlet-length
                                        bf16
                                        ^ \markup \center-column { \circle 1 }
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 8) (ly:make-duration 3 0))
                                    \times 8/7
                                    {
                                        \once \override Dots.staff-position = #2
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        [
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 2 }
                                        \once \override Dots.staff-position = #2
                                        bf16
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 1 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 3 }
                                        \once \override Dots.staff-position = #2
                                        bf32
                                        ^ \markup \center-column { \circle 2 }
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        \revert Staff.Stem.stemlet-length
                                        bf32
                                        \!
                                        ^ \markup \center-column { \circle 3 }
                                        ]
                                    }
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            \clef "bass"
                            ef2.
                            \ff
                            - \tweak circled-tip ##t
                            \>
                            ~
                            ef2
                              %! +SCORE
                            \repeatTie
                            ~
                            ef8.
                              %! +SCORE
                            \repeatTie
                            r16
                            \!
                            r4
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                            \clef "treble"
                            \override Staff.Stem.stemlet-length = 0.75
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''!
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''!
                            >8..
                            ^ \markup \center-align { \center-column { \line { \concat { C+41 }  }\line { \concat { +35 }  } } }
                            [
                            - \tweak circled-tip ##t
                            _ \<
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
                            \revert Staff.Stem.stemlet-length
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                cs'''
                            >32
                                _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                            ]
                            - \tweak circled-tip ##t
                            _ \>
                            \once \override Dots.staff-position = #2
                            \override Staff.Stem.stemlet-length = 0.75
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                cs'''
                            >8
                            [
                            \once \override Dots.staff-position = #2
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                cs'''
                            >32
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            \revert Staff.Stem.stemlet-length
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                \tweak Accidental.transparent ##t
                                cs'''
                            >32
                            \!
                            ]
                            r16
                            r2
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d'' f''>8..
                                    [
                                    - \tweak circled-tip ##t
                                    _ \<
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
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.transparent ##t
                                        d''
                                        \tweak Accidental.transparent ##t
                                        f''
                                    >32
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    ]
                                    - \tweak circled-tip ##t
                                    _ \>
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.transparent ##t
                                        d''
                                        \tweak Accidental.transparent ##t
                                        f''
                                    >8
                                    [
                                    \once \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.transparent ##t
                                        d''
                                        \tweak Accidental.transparent ##t
                                        f''
                                    >32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.transparent ##t
                                        d''
                                        \tweak Accidental.transparent ##t
                                        f''
                                    >32
                                    \!
                                    ]
                                    r16
                                    r2
                                }
                            }
                        }
                        \tag #'voice7
                        {
                            \context Staff = "tenortrombone staff"
                            {
                                \context Voice = "tenortrombone voice"
                                {
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! +SCORE
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                    \clef "bass"
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    c,2.
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c,2..
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "ff"))
                                    }
                                    r8
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        c''!
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        e''!
                                    >8..
                                    ^ \markup \center-align { \center-column { \line { \concat { +29 }  }\line { \concat { +47 }  } } }
                                    [
                                    - \tweak circled-tip ##t
                                    _ \<
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
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        \tweak Accidental.transparent ##t
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        \tweak Accidental.transparent ##t
                                        e''
                                    >32
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    ]
                                    - \tweak circled-tip ##t
                                    _ \>
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        \tweak Accidental.transparent ##t
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        \tweak Accidental.transparent ##t
                                        e''
                                    >8
                                    [
                                    \once \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        \tweak Accidental.transparent ##t
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        \tweak Accidental.transparent ##t
                                        e''
                                    >32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-undecimal-quarter-tone-up  }
                                        \tweak Accidental.transparent ##t
                                        c''
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \markup { \one-septimal-comma-up  }
                                        \tweak Accidental.transparent ##t
                                        e''
                                    >32
                                    \!
                                    ]
                                    r16
                                    r2
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tuben }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { tb. }
                                    \clef "bass"
                                    gs,,2.
                                    \ff
                                    - \tweak circled-tip ##t
                                    \>
                                    ~
                                    gs,,4
                                      %! +SCORE
                                    \repeatTie
                                    r2.
                                    \!
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b,, as,>8..
                                    [
                                    - \tweak circled-tip ##t
                                    _ \<
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
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.transparent ##t
                                        b,,
                                        \tweak Accidental.transparent ##t
                                        as,
                                    >32
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "p"))
                                    ]
                                    - \tweak circled-tip ##t
                                    _ \>
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak Accidental.transparent ##t
                                        b,,
                                        \tweak Accidental.transparent ##t
                                        as,
                                    >8
                                    [
                                    \once \override Dots.staff-position = #2
                                    <
                                        \tweak Accidental.transparent ##t
                                        b,,
                                        \tweak Accidental.transparent ##t
                                        as,
                                    >32
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak Accidental.transparent ##t
                                        b,,
                                        \tweak Accidental.transparent ##t
                                        as,
                                    >32
                                    \!
                                    ]
                                    r16
                                    r2
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
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice12
                        {
                            \context Staff = "harp 2 staff"
                            {
                                \context Voice = "harp 2 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                            \staff-line-count 5
                              %! +SCORE
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \clef "bass"
                            gs,4
                            \f
                            \laissezVibrer
                            \boxed-markup "( ord. )" 1
                            r2
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 3/4
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/2
                              %! +SCORE
                            \stopStaff \startStaff
                              %! +SCORE
                            \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                            \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1
                              %! +SCORE
                            \stopStaff \startStaff
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \staff-line-count 1
                                          %! +SCORE
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 1 }
                                        \clef "percussion"
                                        c'4.
                                        \ff
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \boxed-markup "Tanggu" 1
                                        c'4.
                                        c'8
                                        ~
                                    }
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                    \times 2/3
                                    {
                                        c'2
                                          %! +SCORE
                                        \repeatTie
                                        c'4
                                        ~
                                    }
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
                                                    c'2
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #right
                                        c'32 * 63/16
                                        [
                                          %! +SCORE
                                        \repeatTie
                                        c'32 * 115/32
                                        c'32 * 91/32
                                        c'32 * 35/16
                                        c'32 * 29/16
                                        c'32 * 13/8
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \staff-line-count 2
                                    \clef "percussion"
                                    <b d'>2.
                                    :32
                                    \arpeggio
                                    \>
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "+ Bangu mit dem Holz der Schlegel" 1
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <b d'>2
                                    :32
                                    \once \override Dots.staff-position = #2
                                    <b d'>2.
                                    :32
                                    \p
                                    \once \override Dots.staff-position = #2
                                    <b d'>2
                                    :32
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    <b d'>1
                                    - \tweak circled-tip ##t
                                    \>
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <b d'>16
                                        :128
                                        \!
                                    }
                                }
                            }
                        }
                        \tag #'voice15
                        {
                            \context Staff = "percussion 3 staff"
                            {
                                \context Voice = "percussion 3 voice"
                                {
                                    <<
                                        \context Voice = "percussion 3 voice temp"
                                        {
                                            \staff-line-count 3
                                              %! +SCORE
                                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                              %! +SCORE
                                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                            \clef "percussion"
                                            \voiceTwo
                                            a4
                                            - \tenuto
                                            \f
                                            - \tweak stencil #constante-hairpin
                                            \<
                                            \boxed-markup "Tam-Tam mit Bogen, Gongs der chinesische Oper" 1
                                            r8.
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                              %! +SCORE
                                            \once \override Tie.transparent = ##f
                                            a16
                                            - \tenuto
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a16
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            a8.
                                            - \tenuto
                                            ]
                                            ~
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 13 12) (ly:make-duration 4 0))
                                            \times 12/13
                                            {
                                                \override Staff.Stem.stemlet-length = 0.75
                                                a16
                                                [
                                                  %! +SCORE
                                                \repeatTie
                                                \revert Staff.Stem.stemlet-length
                                                a8
                                                - \tenuto
                                                ]
                                                a4
                                                - \tenuto
                                                a8
                                                - \tenuto
                                                a4
                                                - \tenuto
                                            }
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                                            \times 2/3
                                            {
                                                a4
                                                - \tenuto
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                  %! +SCORE
                                                \once \override Tie.transparent = ##f
                                                a8
                                                - \tenuto
                                                ~
                                            }
                                            \override Staff.Stem.stemlet-length = 0.75
                                            a8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            a8
                                            - \tenuto
                                            ]
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                                            \times 6/9
                                            {
                                                a4
                                                - \tenuto
                                                a4
                                                - \tenuto
                                                \!
                                                \laissezVibrer
                                                r4
                                            }
                                        }
                                        \context Voice = "percussion divisi voice"
                                        {
                                            \voiceOne
                                            c'4.
                                            ^ \ff
                                            - \tweak stencil #constante-hairpin
                                            ^ \<
                                            e'4.
                                            c'2
                                            e'2
                                            c'4.
                                            e'4.
                                            \!
                                            \laissezVibrer
                                        }
                                    >>
                                    \oneVoice
                                    r8.
                                    \staff-line-count 1
                                    \clef "percussion"
                                    c'16
                                    :128
                                    - \stopped
                                    \fff
                                    \>
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "Triangel" 1
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    c'4
                                    :32
                                    - \stopped
                                    \once \override Dots.staff-position = #2
                                    c'2.
                                    :32
                                    - \stopped
                                    \p
                                    \once \override Dots.staff-position = #2
                                    c'2
                                    :32
                                    - \stopped
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    c'1
                                    - \tweak circled-tip ##t
                                    \>
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        :128
                                        - \stopped
                                        \!
                                    }
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
                                                    c'\breve
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
                                    \times 1/1
                                    {
                                          %! +SCORE
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                        \once \override Beam.grow-direction = #left
                                        b'32 * 49/32
                                        \fff
                                        [
                                        - \tweak padding #10
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST }
                                        - \tweak bound-details.right.padding 2
                                        \startTextSpanOne
                                        \>
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
                                        b'32 * 49/32
                                        \once \override Dots.staff-position = #2
                                        b'32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c''32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c''32 * 51/32
                                        \once \override Dots.staff-position = #2
                                        c''32 * 13/8
                                        \once \override Dots.staff-position = #2
                                        c''32 * 53/32
                                        \once \override Dots.staff-position = #2
                                        c''32 * 27/16
                                        \once \override Dots.staff-position = #2
                                        d''32 * 7/4
                                        \once \override Dots.staff-position = #2
                                        d''32 * 29/16
                                        \once \override Dots.staff-position = #2
                                        d''32 * 15/8
                                        \once \override Dots.staff-position = #2
                                        d''32 * 63/32
                                        \once \override Dots.staff-position = #2
                                        d''32 * 65/32
                                        \once \override Dots.staff-position = #2
                                        e''32 * 17/8
                                        \once \override Dots.staff-position = #2
                                        e''32 * 9/4
                                        \once \override Dots.staff-position = #2
                                        f''32 * 75/32
                                        \once \override Dots.staff-position = #2
                                        f''32 * 5/2
                                        \once \override Dots.staff-position = #2
                                        f''32 * 21/8
                                        \once \override Dots.staff-position = #2
                                        f''32 * 89/32
                                        \once \override Dots.staff-position = #2
                                        g''32 * 93/32
                                        \once \override Dots.staff-position = #2
                                        g''32 * 49/16
                                        \once \override Dots.staff-position = #2
                                        a''32 * 103/32
                                        \once \override Dots.staff-position = #2
                                        a''32 * 27/8
                                        \once \override Dots.staff-position = #2
                                        a''32 * 113/32
                                        \once \override Dots.staff-position = #2
                                        b''32 * 117/32
                                        \once \override Dots.staff-position = #2
                                        b''32 * 15/4
                                        \once \override Dots.staff-position = #2
                                        c'''32 * 61/16
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''32 * 31/8
                                        \pppp
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    aqf2.
                                    \ppp
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
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
                                    aqf2
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    aqf1
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        aqf16
                                        \stopTextSpan
                                        \stopTextSpanOne
                                    }
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
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
                                                    c'\breve
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
                                    \times 1/1
                                    {
                                          %! +SCORE
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                        \once \override Beam.grow-direction = #left
                                        bqf'32 * 49/32
                                        \fff
                                        [
                                        - \tweak padding #10
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST }
                                        - \tweak bound-details.right.padding 2
                                        \startTextSpanOne
                                        \>
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
                                        b'32 * 49/32
                                        \once \override Dots.staff-position = #2
                                        b'32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c''32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c''32 * 51/32
                                        \once \override Dots.staff-position = #2
                                        c''32 * 13/8
                                        \once \override Dots.staff-position = #2
                                        c''32 * 53/32
                                        \once \override Dots.staff-position = #2
                                        c''32 * 27/16
                                        \once \override Dots.staff-position = #2
                                        d''32 * 7/4
                                        \once \override Dots.staff-position = #2
                                        d''32 * 29/16
                                        \once \override Dots.staff-position = #2
                                        d''32 * 15/8
                                        \once \override Dots.staff-position = #2
                                        d''32 * 63/32
                                        \once \override Dots.staff-position = #2
                                        d''32 * 65/32
                                        \once \override Dots.staff-position = #2
                                        e''32 * 17/8
                                        \once \override Dots.staff-position = #2
                                        e''32 * 9/4
                                        \once \override Dots.staff-position = #2
                                        f''32 * 75/32
                                        \once \override Dots.staff-position = #2
                                        f''32 * 5/2
                                        \once \override Dots.staff-position = #2
                                        f''32 * 21/8
                                        \once \override Dots.staff-position = #2
                                        f''32 * 89/32
                                        \once \override Dots.staff-position = #2
                                        g''32 * 93/32
                                        \once \override Dots.staff-position = #2
                                        g''32 * 49/16
                                        \once \override Dots.staff-position = #2
                                        a''32 * 103/32
                                        \once \override Dots.staff-position = #2
                                        a''32 * 27/8
                                        \once \override Dots.staff-position = #2
                                        a''32 * 113/32
                                        \once \override Dots.staff-position = #2
                                        b''32 * 117/32
                                        \once \override Dots.staff-position = #2
                                        b''32 * 15/4
                                        \once \override Dots.staff-position = #2
                                        c'''32 * 61/16
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'''32 * 31/8
                                        \pppp
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    gqs2.
                                    \ppp
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    gqs2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    gqs1
                                      %! +SCORE
                                    \repeatTie
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        aqf16
                                        \stopTextSpan
                                        \stopTextSpanOne
                                    }
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
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
                                                    c'\breve
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
                                    \times 1/1
                                    {
                                          %! +SCORE
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                        \once \override Beam.grow-direction = #left
                                        \clef "altovarC"
                                        bqs32 * 49/32
                                        \fff
                                        [
                                        - \tweak padding #10
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST }
                                        - \tweak bound-details.right.padding 2
                                        \startTextSpanOne
                                        \>
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
                                        b32 * 49/32
                                        \once \override Dots.staff-position = #2
                                        c'32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c'32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c'32 * 51/32
                                        \once \override Dots.staff-position = #2
                                        c'32 * 13/8
                                        \once \override Dots.staff-position = #2
                                        c'32 * 53/32
                                        \once \override Dots.staff-position = #2
                                        d'32 * 27/16
                                        \once \override Dots.staff-position = #2
                                        d'32 * 7/4
                                        \once \override Dots.staff-position = #2
                                        d'32 * 29/16
                                        \once \override Dots.staff-position = #2
                                        d'32 * 15/8
                                        \once \override Dots.staff-position = #2
                                        e'32 * 63/32
                                        \once \override Dots.staff-position = #2
                                        e'32 * 65/32
                                        \once \override Dots.staff-position = #2
                                        e'32 * 17/8
                                        \once \override Dots.staff-position = #2
                                        f'32 * 9/4
                                        \once \override Dots.staff-position = #2
                                        f'32 * 75/32
                                        \once \override Dots.staff-position = #2
                                        f'32 * 5/2
                                        \once \override Dots.staff-position = #2
                                        g'32 * 21/8
                                        \once \override Dots.staff-position = #2
                                        g'32 * 89/32
                                        \once \override Dots.staff-position = #2
                                        g'32 * 93/32
                                        \once \override Dots.staff-position = #2
                                        a'32 * 49/16
                                        \once \override Dots.staff-position = #2
                                        a'32 * 103/32
                                        \once \override Dots.staff-position = #2
                                        b'32 * 27/8
                                        \once \override Dots.staff-position = #2
                                        b'32 * 113/32
                                        \once \override Dots.staff-position = #2
                                        c''32 * 117/32
                                        \once \override Dots.staff-position = #2
                                        c''32 * 15/4
                                        \once \override Dots.staff-position = #2
                                        d''32 * 61/16
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        d''32 * 31/8
                                        \pppp
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    af2.
                                    \ppp
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    af2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    af1
                                      %! +SCORE
                                    \repeatTie
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gqs16
                                        \stopTextSpan
                                        \stopTextSpanOne
                                    }
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
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
                                                    c'\breve
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
                                    \times 1/1
                                    {
                                          %! +SCORE
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                          %! +SCORE
                                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                        \once \override Beam.grow-direction = #left
                                        \clef "tenorvarC"
                                        bf32 * 49/32
                                        \fff
                                        [
                                        - \tweak padding #10
                                        - \abjad-solid-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Pizz. } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MST }
                                        - \tweak bound-details.right.padding 2
                                        \startTextSpanOne
                                        \>
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
                                        b32 * 49/32
                                        \once \override Dots.staff-position = #2
                                        b32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c'32 * 25/16
                                        \once \override Dots.staff-position = #2
                                        c'32 * 51/32
                                        \once \override Dots.staff-position = #2
                                        c'32 * 13/8
                                        \once \override Dots.staff-position = #2
                                        c'32 * 53/32
                                        \once \override Dots.staff-position = #2
                                        c'32 * 27/16
                                        \once \override Dots.staff-position = #2
                                        c'32 * 7/4
                                        \once \override Dots.staff-position = #2
                                        d'32 * 29/16
                                        \once \override Dots.staff-position = #2
                                        d'32 * 15/8
                                        \once \override Dots.staff-position = #2
                                        d'32 * 63/32
                                        \once \override Dots.staff-position = #2
                                        d'32 * 65/32
                                        \once \override Dots.staff-position = #2
                                        e'32 * 17/8
                                        \once \override Dots.staff-position = #2
                                        e'32 * 9/4
                                        \once \override Dots.staff-position = #2
                                        e'32 * 75/32
                                        \once \override Dots.staff-position = #2
                                        e'32 * 5/2
                                        \once \override Dots.staff-position = #2
                                        f'32 * 21/8
                                        \once \override Dots.staff-position = #2
                                        f'32 * 89/32
                                        \once \override Dots.staff-position = #2
                                        f'32 * 93/32
                                        \once \override Dots.staff-position = #2
                                        f'32 * 49/16
                                        \once \override Dots.staff-position = #2
                                        g'32 * 103/32
                                        \once \override Dots.staff-position = #2
                                        g'32 * 27/8
                                        \once \override Dots.staff-position = #2
                                        a'32 * 113/32
                                        \once \override Dots.staff-position = #2
                                        a'32 * 117/32
                                        \once \override Dots.staff-position = #2
                                        a'32 * 15/4
                                        \once \override Dots.staff-position = #2
                                        b'32 * 61/16
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        b'32 * 31/8
                                        \pppp
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4.
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    af2.
                                    \ppp
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { 1. } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    - \tweak padding #8
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { SP }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
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
                                    af2
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    af1
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        af16
                                        \stopTextSpan
                                        \stopTextSpanOne
                                    }
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                      %! +SCORE
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \clef "bass"
                                    gs,2.
                                    \ff
                                    - \tweak stencil #constante-hairpin
                                    \<
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
                                    gs,1
                                    \once \override Dots.staff-position = #2
                                    gs,2.
                                    \>
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    gs,2
                                    \p
                                    - \tweak circled-tip ##t
                                    \>
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        gs,16
                                        \!
                                    }
                                    \clef "treble"
                                    \tweak style #'cross
                                    af'2.
                                    \ppp
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -51
                                    \startTextSpan
                                    \<
                                    ~
                                    \tweak style #'cross
                                    af'2
                                      %! +SCORE
                                    \repeatTie
                                    ~
                                    \tweak style #'cross
                                    af'1
                                    \stopTextSpan
                                      %! +SCORE
                                    \repeatTie
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}
