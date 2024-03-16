    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tweak text "×7" \startMeasureSpanner
            \bar ".|:"
              %! +SCORE
        %%% \break
            \time 6/4
            s1 * 3/2
            \stopTextSpan
            \bar ":|."
            \stopMeasureSpanner
            \once \override Score.TimeSignature.stencil = ##f
            \time 6/4
            s1 * 3/2
            - \tweak padding #11.5
            - \abjad-solid-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \fontsize #5.5 { Rall. } \hspace #0.5 }
            - \tweak bound-details.right.padding -60
            \startTextSpan
            \time 5/4
            s1 * 5/4
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Flöten }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ fl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #1.5 \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (two three five six)) (lh . (gis)) (rh . (c))) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >8
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >16
                                    - \marcato
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >16
                                    - \marcato
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >8
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >8
                                    - \marcato
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >16
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >8.
                                    - \marcato
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >4
                                    - \marcato
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >8
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >8
                                    - \marcato
                                    \!
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        b'
                                        \tweak style #'la
                                        c''
                                        \tweak style #'la
                                        d''
                                        \tweak style #'la
                                        e''
                                        \tweak style #'la
                                        f''
                                        \tweak style #'la
                                        g''
                                        \tweak style #'la
                                        a''
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    - \marcato
                                    \stopTextSpan
                                    \<
                                    \set suggestAccidentals = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    cs''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    dqf''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    dqs''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    eqf''8.
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    e''4
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    eqs''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    fqs''4
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    g''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    cs'''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    ds'''8.
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    e'''4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \set suggestAccidentals = ##f
                                }
                            }
                        }
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                      %! +PARTS
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                      %! +SCORE
                                %%% - \tweak padding #3.5
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #4
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Überblasen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    - \marcato
                                    [
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a16
                                    - \marcato
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    - \marcato
                                    ]
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    - \marcato
                                    [
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a8
                                    - \marcato
                                    ]
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    - \marcato
                                    [
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    - \marcato
                                    ]
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a4
                                    - \marcato
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    - \marcato
                                    [
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \revert Staff.Stem.stemlet-length
                                    a8
                                    - \marcato
                                    \!
                                    ]
                                    \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    a4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    - \marcato
                                    \stopTextSpan
                                    \<
                                    \set suggestAccidentals = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    fqs16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    bf8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bqs16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    cs'8.
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    dqs'4
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    fqs'8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    g'4
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf'8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    cqs''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    ef''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    aqf''8
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'''16
                                    - \bendAfter #'2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    eqs'''8.
                                    - \bendAfter #'2.5
                                    - \marcato
                                    ]
                                    fs'''4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \set suggestAccidentals = ##f
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "bassoon staff"
                            {
                                \context Voice = "bassoon voice"
                                {
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Fagotte }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { fg.}
                                    \clef "bass"
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \hspace #4 \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >8
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >16
                                    - \marcato
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >16
                                    - \marcato
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >8
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >8
                                    - \marcato
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >16
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >8.
                                    - \marcato
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >4
                                    - \marcato
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >8
                                    - \marcato
                                    [
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >8
                                    - \marcato
                                    \!
                                    ]
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        d
                                        \tweak style #'la
                                        e
                                        \tweak style #'la
                                        f
                                        \tweak style #'la
                                        g
                                        \tweak style #'la
                                        a
                                        \tweak style #'la
                                        b
                                        \tweak style #'la
                                        c'
                                    >4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                                    - \marcato
                                    \stopTextSpan
                                    \<
                                    \set suggestAccidentals = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    dqf16
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    cs16
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqs8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cqf16
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b,8.
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    bqf,4
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    aqs,8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    a,4
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    aqf,8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    af,16
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    gqs,16
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    gqf,8
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,16
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f,8.
                                    - \bendAfter #'-2.5
                                    - \marcato
                                    ]
                                    e,4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \set suggestAccidentals = ##f
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Hörner in F }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hn. }
                            r1
                            \clef "treble"
                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-septimal-comma-up \hspace #0.125 \abjad-sharp  }
                                gs''
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \markup \concat { \one-tridecimal-third-tone-down \hspace #0.125 \abjad-sharp  }
                                cs'''
                            >4
                            ^ \markup \center-align { \center-column { \line { \concat { C+41 }  }\line { \concat { +35 }  } } }
                            - \tweak circled-tip ##t
                            _ \<
                              %! abjad.glissando(7)
                            \glissando
                            \once \override Dots.staff-position = #2
                            \once \override Dots.staff-position = #2
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
                                _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                            - \tweak circled-tip ##t
                            _ \>
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
                                \!
                            }
                              %! +SCORE
                        %%% \once \override Staff.BarLine.transparent = ##f
                              %! +SCORE
                        %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                              %! +SCORE
                        %%% \once \override Staff.TimeSignature.transparent = ##t
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
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 5/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Trompeten in C }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic"){ tpt. }
                                    r1
                                    <d'' f''>4
                                    - \tweak circled-tip ##t
                                    _ \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \once \override Dots.staff-position = #2
                                    \once \override Dots.staff-position = #2
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
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "mf"))
                                    - \tweak circled-tip ##t
                                    _ \>
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
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <d'' f''>16
                                        \!
                                    }
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                    r1
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
                                    \clef "treble"
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                    \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                    \afterGrace
                                    c'''2
                                    \p
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Kneifen der Kehle, wie ein Knurren } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -1
                                    \startTextSpan
                                    \<
                                    \glissando
                                    {
                                        \once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))
                                        \once \override Flag.stroke-style = #"grace"
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #'(0 . 0.75)
                                        \once \override Staff.AccidentalPlacement.right-padding = #0.6
                                        c'''16
                                        \ffff
                                        \stopTextSpan
                                    }
                                    \clef "bass"
                                    e,1.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    e,2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    e,2
                                    \!
                                      %! +SCORE
                                %%% \repeatTie
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \clef "bass"
                                    fs,1.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    fs,2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    fs,4
                                      %! +SCORE
                                %%% \repeatTie
                                    e,4
                                    \!
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                    r1
                                    \ottava 1
                                    \afterGrace
                                    <g''' a''' bf''' ds'''' e''''>2
                                    :32
                                    \arpeggio
                                    \p
                                    \<
                                    \glissando
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                        <g''' a''' bf''' ds'''' e''''>16
                                        :128
                                        \ffff
                                        \ottava 0
                                    }
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                    r1
                                    \staff-line-count 5
                                    \clef "bass"
                                    \afterGrace
                                    <g,, g,>2
                                    :32
                                    \arpeggio
                                    \glissando
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                        <g,, g,>16
                                        :128
                                    }
                                    <fs,, fs,>1.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "sffz"))
                                    :32
                                    \arpeggio
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <fs,, fs,>2.
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    <fs,, fs,>4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    <e,, e,>4
                                    :32
                                    \!
                                    \arpeggio
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Pauken }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pk. }
                            \clef "bass"
                            c2.
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                            :32
                            - \tweak stencil #constante-hairpin
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
                            c2
                            :32
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            \afterGrace
                            c8
                            :64
                              %! +SCORE
                        %%% \repeatTie
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
                                aqs,16
                                :128
                                \!
                            }
                            r8
                            c1.
                                _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
                            :32
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
                            c2.
                            :32
                              %! +SCORE
                        %%% \repeatTie
                            ~
                            \once \override Dots.staff-position = #2
                            \afterGrace
                            c2
                            :32
                              %! +SCORE
                        %%% \repeatTie
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
                                e16
                                    _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                :128
                            }
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { schlz. 2 }
                                    r1
                                    \staff-line-count 5
                                    \boxed-markup "Glockenspiel" 1
                                    \clef "treble"
                                    \afterGrace
                                    d''2
                                    :32
                                    \p
                                    \<
                                    \glissando
                                    {
                                        \once \override Flag.stroke-style = #"grace"
                                        d''16
                                        :128
                                        \mf
                                    }
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 5/4
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
                                    \staff-line-count 4
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 1 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 1 }
                                    \clef "percussion"
                                    f'4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                      %! +PARTS
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                      %! +SCORE
                                %%% ^ \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \marcato
                                    [
                                    f'16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \marcato
                                    ]
                                    f'4
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \marcato
                                    \!
                                    \stopTextSpan
                                    ]
                                    f'4
                                    - \marcato
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \marcato
                                    [
                                    f'16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    - \marcato
                                    ]
                                    \staff-line-count 5
                                    \clef "treble"
                                    e''4
                                    - \marcato
                                    \pp
                                    \stopTextSpanOne
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
                                    \once \override Dots.staff-position = #2
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
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    a''4
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    b''16
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    c'''16
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    d'''8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''16
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    d'''8.
                                    - \marcato
                                    ]
                                    \ottava 2
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    e'''''4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \stopTextSpanOne
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice17
                        {
                            \context Staff = "violin 2 staff"
                            {
                                \context Voice = "violin 2 voice"
                                {
                                    \staff-line-count 4
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Geigen 2 }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { g. 2 }
                                    \clef "percussion"
                                    d'4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    - \marcato
                                    [
                                    d'16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    - \marcato
                                    ]
                                    d'4
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    - \marcato
                                    \!
                                    \stopTextSpan
                                    ]
                                    d'4
                                    - \marcato
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    - \marcato
                                    [
                                    d'16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    - \marcato
                                    ]
                                    \staff-line-count 5
                                    \clef "treble"
                                    a'4
                                    - \marcato
                                    \pp
                                    \stopTextSpanOne
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
                                    \once \override Dots.staff-position = #2
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
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    d''8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    e''4
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    a''16
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    b''8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''16
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    d'''8.
                                    - \marcato
                                    ]
                                    \ottava 2
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    e'''''4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \stopTextSpanOne
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice18
                        {
                            \context Staff = "viola staff"
                            {
                                \context Voice = "viola voice"
                                {
                                    \staff-line-count 4
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                                    \clef "percussion"
                                    b4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    - \marcato
                                    [
                                    b16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b8.
                                    - \marcato
                                    ]
                                    b4
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    - \marcato
                                    \!
                                    \stopTextSpan
                                    ]
                                    b4
                                    - \marcato
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    - \marcato
                                    [
                                    b16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    b8.
                                    - \marcato
                                    ]
                                    \staff-line-count 5
                                    \clef "altovarC"
                                    g4
                                    - \marcato
                                    \pp
                                    \stopTextSpanOne
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
                                    \once \override Dots.staff-position = #2
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
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    d'4
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    g'16
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    a'16
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    b'8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    d''8.
                                    - \marcato
                                    ]
                                    \ottava 1
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    e'''4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \stopTextSpanOne
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice19
                        {
                            \context Staff = "cello staff"
                            {
                                \context Voice = "cello voice"
                                {
                                    \staff-line-count 4
                                    \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                                    \clef "percussion"
                                    g4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    - \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { DP, Kratzen } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -11.5
                                    \startTextSpan
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    - \marcato
                                    [
                                    g16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g8.
                                    - \marcato
                                    ]
                                    g4
                                    - \marcato
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g8
                                    - \marcato
                                    \!
                                    \stopTextSpan
                                    ]
                                    g4
                                    - \marcato
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    - \marcato
                                    [
                                    g16
                                    - \marcato
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g8
                                    - \marcato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    - \marcato
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    g8.
                                    - \marcato
                                    ]
                                    \staff-line-count 5
                                    \clef "bass"
                                    c,4
                                    - \marcato
                                    \pp
                                    \stopTextSpanOne
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Steg ( kein Kratzen ) } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    \<
                                      %! abjad.glissando(7)
                                    \glissando
                                    \boxed-markup "( Gleichmäßiges Glissando bis zum letzten Ton )" 1
                                    \once \override Dots.staff-position = #2
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
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    g,8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    a,4
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    f16
                                    - \marcato
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    f16
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    a8
                                    - \marcato
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    - \marcato
                                    [
                                    \once \override Dots.staff-position = #2
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    - \marcato
                                    ]
                                    \ottava 2
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    e'''4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    - \marcato
                                    \stopTextSpanOne
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice20
                        {
                            \context Staff = "contrabass staff"
                            {
                                \context Voice = "contrabass voice"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                                    \clef "bass"
                                    a,1.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    :32
                                    \boxed-markup "MST" 1
                                    a,1.
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "fffffpp"))
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
                                    a,2.
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    a,2
                                      %! +SCORE
                                %%% \repeatTie
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
                                        e,16
                                            _ #(make-dynamic-script (markup #:whiteout #:italic "fffff"))
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
