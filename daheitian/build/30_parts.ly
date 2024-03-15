    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \very-long-fermata
            - \tweak padding #-13
            ^ \markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( bis Klavierresonanz } \line { \underline {fast} aufhört ) } }
            \once \override Score.BarLine.transparent = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"72"
              }
            }
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \time 2/4
            s1 * 1/2
            \time 3/4
            s1 * 3/4
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \time 4/4
            s1 * 1
            ^ \markup {
              \raise #9 \with-dimensions-from \null
              \override #'(font-size . 5.5)
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"60"
              }
            }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/4
            s1 * 1
            \time 5/4
            s1 * 5/4
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
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                            \staff-line-count 5
                                            \clef "treble"
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'1
                                            - \espressivo
                                            \fp
                                        }
                                    >>
                                    <<
                                        \context Voice = "On_Beat_Grace_Container"
                                        {
                                              %! trinton.on_beat_grace_container(1)
                                            \set fontSize = #-4
                                            \my-hack-slash
                                            \voiceOne
                                            \tweak style #'harmonic
                                            a''8 * 2/25
                                            [
                                            (
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            a''''16 * 4/25
                                            \tweak style #'harmonic
                                            gqf''''16 * 4/25
                                            \tweak style #'harmonic
                                            e''''16 * 4/25
                                            \tweak style #'harmonic
                                            cs''''16 * 4/25
                                            \tweak style #'harmonic
                                            a'''16 * 4/25
                                            \tweak style #'harmonic
                                            e'''16 * 4/25
                                            \tweak style #'harmonic
                                            a''16 * 4/25
                                            a'8 * 2/25
                                            )
                                            ]
                                        }
                                        \context Voice = "flute voice Anchor"
                                        {
                                              %! trinton.on_beat_grace_container(4)
                                            \voiceTwo
                                            \parenthesize
                                            a'4
                                            - \espressivo
                                            \fp
                                        }
                                    >>
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                        \tag #'voice3
                        {
                            \context Staff = "bassclarinet staff"
                            {
                                \context Voice = "bassclarinet voice"
                                {
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bkl. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    <<
                                        \context Voice = "bassclarinet voice temp"
                                        {
                                            \voiceOne
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r4
                                            r4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r4
                                            r4
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                            r2
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 5 6) (ly:make-duration 3 0))
                                            \times 6/5
                                            {
                                                bqs4..
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
                                                bqs8
                                                    ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
                                                [
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
                                                bqs16
                                                \!
                                                ]
                                            }
                                        }
                                        \context Voice = "bassclarinet divisi voice"
                                        {
                                            \voiceTwo
                                            ass2
                                            - \tweak circled-tip ##t
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
                                            ass2.
                                            \once \override Dots.staff-position = #2
                                            ass2.
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \mp
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \once \override Dots.staff-position = #2
                                            ass1
                                            \once \override Dots.staff-position = #2
                                            ass1
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            ass2.
                                            ~
                                            ass2
                                              %! +SCORE
                                        %%% \repeatTie
                                        }
                                    >>
                                    \oneVoice
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
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
                            R1 * 3/4
                              %! +SCORE
                        %%% \stopStaff \startStaff
                            <<
                                \context Voice = "frenchhorn voice temp"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \voiceOne
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
                                            ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
                                            ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
                                            ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r4
                                    r4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
                                            ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 6) (ly:make-duration 3 0))
                                    \times 6/7
                                    {
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f!2
                                        - \tweak circled-tip ##t
                                        ^ \<
                                          %! abjad.glissando(7)
                                        \glissando
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \once \override Dots.staff-position = #2
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f4
                                            ^ #(make-dynamic-script (markup #:whiteout #:italic "pp +"))
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
                                        \tweak Accidental.stencil #ly:text-interface::print
                                        \tweak Accidental.text \three-eighths-flat-markup
                                        f16
                                        \!
                                    }
                                    r2
                                }
                                \context Voice = "frenchhorn divisi voice"
                                {
                                    \clef "bass"
                                    \voiceTwo
                                    e2
                                    - \tweak circled-tip ##t
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
                                    e2.
                                    \once \override Dots.staff-position = #2
                                    e2
                                    \once \override Dots.staff-position = #2
                                    e2.
                                    \once \override Dots.staff-position = #2
                                    e2.
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \mp
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \once \override Dots.staff-position = #2
                                    e1
                                    \once \override Dots.staff-position = #2
                                    e1
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    e2.
                                    ~
                                    e2
                                      %! +SCORE
                                %%% \repeatTie
                                }
                            >>
                            \oneVoice
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { pos. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    \once \override Beam.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \ottava -1
                                    \clef "bass"
                                    a,,,4
                                        _ #(make-dynamic-script (markup #:whiteout #:italic "ffffffffff"))
                                    - \accent
                                    \laissezVibrer
                                    \ottava 0
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                    R1 * 1
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \clef "bass"
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    \mf
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a1
                                    - \tenuto
                                    \laissezVibrer
                                    a4
                                    - \tenuto
                                    \laissezVibrer
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
                        %%% \once \override Staff.TimeSignature.transparent = ##t
                              %! +SCORE
                        %%% \once \override MultiMeasureRest.transparent = ##t
                            R1 * 1/4
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
                            R1 * 3/4
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
                            R1 * 1/2
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
                            R1 * 3/4
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
                            R1 * 1/2
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
                            R1 * 3/4
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
                            R1 * 3/4
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
                            R1 * 1
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
                            R1 * 1
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
                            R1 * 1
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
                            R1 * 1
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
                            R1 * 1
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
                            R1 * 1
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
                            R1 * 1
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
                            R1 * 1
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
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r4..
                                    \staff-line-count 1
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \clef "percussion"
                                    c'16
                                    :128
                                    - \espressivo
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \boxed-markup "Triangel" 1
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    \p
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
                                    c'4
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    :64
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    :128
                                    - \espressivo
                                    ]
                                    ~
                                    c'4
                                    :32
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    r4
                                    r16
                                    \staff-line-count 5
                                    \clef "treble"
                                    a4..
                                    :32
                                    - \espressivo
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    \boxed-markup "Glockenspiel" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    \p
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    a16
                                    :128
                                      %! +SCORE
                                %%% \repeatTie
                                    a4..
                                    :32
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
                                    ~
                                    a4
                                    :32
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    :128
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    a8.
                                    :64
                                    - \espressivo
                                    ]
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
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
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \pitchedTrill
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    - \espressivo
                                    ^ \markup \concat { \upright \fraction 9° A }
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak padding #12.5
                                    - \abjad-solid-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpan
                                    ~
                                    \startTrillSpan a'
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    b'8.
                                    - \espressivo
                                    ]
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4.
                                      %! +SCORE
                                %%% \repeatTie
                                    \tweak style #'harmonic-mixed
                                    b'4.
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    b'8.
                                    \mp
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    - \espressivo
                                    ]
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    \tweak style #'harmonic-mixed
                                    b'4
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4
                                      %! +SCORE
                                %%% \repeatTie
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    b'8.
                                    - \espressivo
                                    ]
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4.
                                      %! +SCORE
                                %%% \repeatTie
                                    \tweak style #'harmonic-mixed
                                    b'8
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4..
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'16
                                      %! +SCORE
                                %%% \repeatTie
                                    \tweak style #'harmonic-mixed
                                    b'4..
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    b'8
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    b'8
                                    - \espressivo
                                    ]
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4..
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4
                                      %! +SCORE
                                %%% \repeatTie
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    b'8.
                                    - \espressivo
                                    ]
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4.
                                      %! +SCORE
                                %%% \repeatTie
                                    \tweak style #'harmonic-mixed
                                    b'8
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4..
                                      %! +SCORE
                                %%% \repeatTie
                                      %! +SCORE
                                %%% \once \override Tie.transparent = ##f
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    \tweak style #'harmonic-mixed
                                    b'2
                                    - \espressivo
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'harmonic-mixed
                                    b'16
                                    [
                                      %! +SCORE
                                %%% \repeatTie
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'harmonic-mixed
                                    b'8.
                                    - \espressivo
                                    ]
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4.
                                      %! +SCORE
                                %%% \repeatTie
                                    \tweak style #'harmonic-mixed
                                    b'8
                                    - \espressivo
                                    ~
                                    \tweak style #'harmonic-mixed
                                    b'4..
                                    \stopTextSpan
                                    \stopTrillSpan
                                      %! +SCORE
                                %%% \repeatTie
                                    r16
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
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
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    <<
                                        \context Voice = "violin 2 voice temp"
                                        {
                                            \voiceOne
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                            ^ \markup \concat { \upright \fraction 7° A }
                                            - \tweak circled-tip ##t
                                            \<
                                            - \tweak padding #9
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Beide MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -15
                                            \startTextSpan
                                            \startTrillSpan a'
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                            - \espressivo
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            g''''8.
                                            \mp
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            \tweak style #'harmonic-mixed
                                            g''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            g''''8.
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            g''''8
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            g''''8
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            \tweak style #'harmonic-mixed
                                            g''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                            - \espressivo
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            g''''8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            \tweak style #'harmonic-mixed
                                            g''''4.
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            g''''4..
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            g''''4
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            g''''8.
                                            \stopTextSpan
                                            \stopTrillSpan
                                              %! +SCORE
                                        %%% \repeatTie
                                            r16
                                            r4
                                        }
                                        \context Voice = "violin 2 divisi voice"
                                        {
                                            \ottava 1
                                            \voiceTwo
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            _ \markup \concat { \upright \fraction 6° A }
                                            \startTrillSpan a'
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            e''''4
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''''8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            e''''4.
                                            - \espressivo
                                            \stopTrillSpan
                                            \ottava 0
                                        }
                                    >>
                                    \oneVoice
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
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
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    <<
                                        \context Voice = "viola voice temp"
                                        {
                                            \clef "treble"
                                            \voiceOne
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            ^ \markup \concat { \upright \fraction 4° A }
                                            - \tweak circled-tip ##t
                                            \<
                                            - \tweak padding #9
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Beide MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -17
                                            \startTextSpan
                                            \startTrillSpan a'
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \mp
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \tweak style #'harmonic-mixed
                                            a'''4
                                            - \espressivo
                                            \stopTextSpan
                                            \stopTrillSpan
                                            r4
                                        }
                                        \context Voice = "viola divisi voice"
                                        {
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceTwo
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            _ \markup \concat { \upright \fraction 3° A }
                                            [
                                            \startTrillSpan a'
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            ]
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8.
                                            - \espressivo
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            - \espressivo
                                            ]
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e''8
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e''16
                                            \stopTrillSpan
                                              %! +SCORE
                                        %%% \repeatTie
                                            r8.
                                        }
                                    >>
                                    \oneVoice
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    <<
                                        \context Voice = "cello voice temp"
                                        {
                                            \clef "treble"
                                            \voiceOne
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                            - \espressivo
                                            ^ \markup \concat { \upright \fraction 13° A }
                                            - \tweak circled-tip ##t
                                            \<
                                            - \tweak padding #5
                                            - \abjad-solid-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Beide MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -2
                                            \startTextSpan
                                            ~
                                            \startTrillSpan a
                                            \tweak style #'harmonic-mixed
                                            fqs''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            fqs''4..
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''4.
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            fqs''8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2.
                                            \tweak style #'harmonic-mixed
                                            fqs''2.
                                            - \espressivo
                                            \mp
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''8.
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            fqs''4.
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''4..
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            fqs''2.
                                            - \espressivo
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''8.
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''8
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''8
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''4
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''8.
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            fqs''8
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            fqs''8
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            fqs''8.
                                            \stopTextSpan
                                            \stopTrillSpan
                                              %! +SCORE
                                        %%% \repeatTie
                                            r16
                                            r4
                                        }
                                        \context Voice = "cello divisi voice"
                                        {
                                            \voiceTwo
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            - \espressivo
                                            _ \markup \concat { \upright \fraction 11° A }
                                            ~
                                            \startTrillSpan a
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'4.
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'4..
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            - \espressivo
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'8
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'8
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'4..
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            - \espressivo
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'8
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'4.
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'8.
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                            - \espressivo
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'8.
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4.
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'8
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                              %! +SCORE
                                        %%% \repeatTie
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            gqs'8.
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'2
                                              %! +SCORE
                                        %%% \repeatTie
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4..
                                              %! +SCORE
                                        %%% \repeatTie
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \tweak style #'harmonic-mixed
                                            gqs'16
                                            - \espressivo
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4
                                            ~
                                            \tweak style #'harmonic-mixed
                                            gqs'4.
                                            \stopTrillSpan
                                              %! +SCORE
                                        %%% \repeatTie
                                            r8
                                        }
                                    >>
                                    \oneVoice
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
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    <<
                                        \context Voice = "contrabass voice temp"
                                        {
                                            \clef "bass"
                                            \voiceTwo
                                            a,2.
                                            _ #(make-dynamic-script (markup #:whiteout #:normal-text #:italic "die Dynamik des Klaviers anpassen"))
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
                                            a,2
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            a,2
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            a,2.
                                            \once \override Dots.staff-position = #2
                                            \once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2
                                            a,1
                                            \f
                                            _ \markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5 \center-column { \line { ma non aggressivo } \line { oppressi dalle figure della bellezza }} }
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                            \once \override Dots.staff-position = #2
                                            a,1
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            a,2.
                                            ~
                                            a,2
                                              %! +SCORE
                                        %%% \repeatTie
                                        }
                                        \context Voice = "contrabass divisi voice"
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \voiceOne
                                            c'8.
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'16
                                            \once \override Accidental.stencil = ##f
                                            \once \override Beam.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Stem.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            c'8.
                                            r8.
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \pitchedTrill
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            - \tweak padding #6
                                            ^ \markup \concat { \upright \fraction 3° A }
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \startTrillSpan a,
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8
                                            [
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e16
                                            [
                                              %! +SCORE
                                        %%% \repeatTie
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            ]
                                            - \tweak padding #11.5
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { Ord. } \hspace #0.5 }
                                            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line { MSP }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \tweak style #'harmonic-mixed
                                            e8.
                                            - \espressivo
                                            \stopTextSpanOne
                                            [
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                              %! +SCORE
                                        %%% \once \override Tie.transparent = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \tweak style #'harmonic-mixed
                                            e16
                                            - \espressivo
                                            ]
                                            ~
                                            \tweak style #'harmonic-mixed
                                            e8
                                            \stopTrillSpan
                                            r8
                                        }
                                    >>
                                    \oneVoice
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
