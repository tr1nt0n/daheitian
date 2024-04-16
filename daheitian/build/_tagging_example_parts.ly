    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
        }
        \context StaffGroup = "Staff Group"
        <<
            \context SquareBracketGroup = "sub group 1"
            <<
                \context Staff = "flute staff"
                {
                    \context Voice = "flute voice"
                    {
                        <<
                            \context Voice = "flute voice secondary"
                            {
                                \voiceTwo
                                R1 * 1
                            }
                            \context Voice = "flute voice cue"
                            {
                                  %! +PARTS
                                \voiceOne
                                \afterGrace
                                  %! +PARTS
                                c'1
                                {
                                      %! +PARTS
                                    \once \override Flag.stroke-style = #"grace"
                                      %! +PARTS
                                    c'16
                                  %! +PARTS
                                }
                            }
                        >>
                        \oneVoice
                    }
                }
                \context Staff = "oboe staff"
                {
                    \context Voice = "oboe voice"
                    {
                        R1 * 1
                    }
                }
                \context divisiStaff = "englishhorn staff"
                {
                    \context Voice = "englishhorn voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "bassclarinet staff"
                {
                    \context Voice = "bassclarinet voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "bassoon staff"
                {
                    \context Voice = "bassoon voice"
                    {
                        R1 * 1
                    }
                }
            >>
            \context Staff = "frenchhorn staff"
            {
                \context Voice = "frenchhorn voice"
                {
                    R1 * 1
                }
            }
            \context SquareBracketGroup = "sub group 2"
            <<
                \context Staff = "trumpet staff"
                {
                    \context Voice = "trumpet voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "tenortrombone staff"
                {
                    \context Voice = "tenortrombone voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "tuba staff"
                {
                    \context Voice = "tuba voice"
                    {
                        R1 * 1
                    }
                }
            >>
            \context GrandStaff = "sub group 3"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        R1 * 1
                    }
                }
            >>
            \context GrandStaff = "sub group 4"
            <<
                \context Staff = "harp 1 staff"
                {
                    \context Voice = "harp 1 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "harp 2 staff"
                {
                    \context Voice = "harp 2 voice"
                    {
                        R1 * 1
                    }
                }
            >>
            \context Staff = "percussion 1 staff"
            {
                \context Voice = "percussion 1 voice"
                {
                    R1 * 1
                }
            }
            \context SquareBracketGroup = "sub group 5"
            <<
                \context Staff = "percussion 2 staff"
                {
                    \context Voice = "percussion 2 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "percussion 3 staff"
                {
                    \context Voice = "percussion 3 voice"
                    {
                        R1 * 1
                    }
                }
            >>
            \context SquareBracketGroup = "sub group 6"
            <<
                \context divisiStaff = "guitar 1 staff"
                {
                    \context Voice = "guitar 1 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "violin 1 staff"
                {
                    \context Voice = "violin 1 voice"
                    {
                        R1 * 1
                    }
                }
                \context divisiStaff = "guitar 2 staff"
                {
                    \context Voice = "guitar 2 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "violin 2 staff"
                {
                    \context Voice = "violin 2 voice"
                    {
                        R1 * 1
                    }
                }
                \context divisiStaff = "guitar 3 staff"
                {
                    \context Voice = "guitar 3 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "viola staff"
                {
                    \context Voice = "viola voice"
                    {
                        R1 * 1
                    }
                }
                \context divisiStaff = "guitar 4 staff"
                {
                    \context Voice = "guitar 4 voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "cello staff"
                {
                    \context Voice = "cello voice"
                    {
                        R1 * 1
                    }
                }
                \context Staff = "contrabass staff"
                {
                    \context Voice = "contrabass voice"
                    {
                        R1 * 1
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
