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
            \time 8/4
            s1 * 2
            % AFTER:
            % MARKUP:
            - \markup \fontsize #6 { Stage 1 }
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % AFTER:
            % MARKUP:
            - \markup \fontsize #6 { Stage 2 }
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
                        cs''8.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        % SPANNER_STARTS:
                        - \tweak padding #6.5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -2
                        \startTextSpan
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            e''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        ds''8..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        cs''8.
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        r8
                        ds''4
                        % AFTER:
                        % STEM_TREMOLOS:
                        :32
                        % SPANNER_STARTS:
                        ~
                        ds''32
                        % AFTER:
                        % STEM_TREMOLOS:
                        :256
                        cs''8..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        % BEFORE:
                        % BEFORE:
                        % COMMANDS:
                        \scaleDurations #'(1 . 1) {
                        % OPEN_BRACKETS:
                        \slashedGrace {
                            e''16
                            % AFTER:
                            % ARTICULATIONS:
                            - \accent
                            s8..
                            s2
                        % CLOSE_BRACKETS:
                        }
                        % AFTER:
                        % COMMANDS:
                        }
                        ds''8..
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        cs''8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        % SPANNER_STARTS:
                        ~
                        cs''32
                        % AFTER:
                        % STEM_TREMOLOS:
                        :256
                        ds''8
                        % AFTER:
                        % STEM_TREMOLOS:
                        :64
                        r8..
                        cs''16
                        % AFTER:
                        % STEM_TREMOLOS:
                        :128
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
                                cs''8..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                cs''4
                                % AFTER:
                                % STEM_TREMOLOS:
                                :32
                                r8..
                                ds''8.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                cs''8..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''8
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                % SPANNER_STARTS:
                                ~
                                ds''32
                                % AFTER:
                                % STEM_TREMOLOS:
                                :256
                                cs''8
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                % SPANNER_STARTS:
                                ~
                                cs''32
                                % AFTER:
                                % STEM_TREMOLOS:
                                :256
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                ds''16.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
                            % CLOSE_BRACKETS:
                            }
                            % OPEN_BRACKETS:
                            \context Voice = "intermittent_voice"
                            {
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                % OPENING:
                                % COMMANDS:
                                \voiceOne
                                g''8..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                r8.
                                f''8..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                g''8.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                f''8
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                r4
                                r32
                                % BEFORE:
                                % BEFORE:
                                % COMMANDS:
                                \scaleDurations #'(1 . 1) {
                                % OPEN_BRACKETS:
                                \slashedGrace {
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    s8..
                                    s2
                                % CLOSE_BRACKETS:
                                }
                                % AFTER:
                                % COMMANDS:
                                }
                                g''8..
                                % AFTER:
                                % STEM_TREMOLOS:
                                :64
                                r8..
                                f''16.
                                % AFTER:
                                % STEM_TREMOLOS:
                                :128
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
                \context Staff = "oboe staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "oboe voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Oboen }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ob. }
                        r1 * 2
                        r1 * 7/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
                % OPEN_BRACKETS:
                \context Staff = "clarinetineflat staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "clarinetineflat voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klarinette in Es }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kl. }
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
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
                    r1 * 2
                    r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context PianoStaff = "sub group 3"
            <<
                % OPEN_BRACKETS:
                \context Staff = "piano 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "piano 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set PianoStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Klavier }
                        \set PianoStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { klav. }
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <ef, c>2
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <cs'' d'' f'' a''>8
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <fs''' e''''>4
                        % AFTER:
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <ef, c>8
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <c'' ef'' e'' af''>2
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <fs''' e''''>2
                        % AFTER:
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <e, cs>4
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <ef'' e'' g'' b''>2
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <af''' fs''''>8
                        % AFTER:
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <e, ef>2
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <ef'' e'' g'' b''>8
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <g''' f''''>4
                        % AFTER:
                        % COMMANDS:
                        \ottava 0
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
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <bf,,!>2
                        % AFTER:
                        % SPANNER_STARTS:
                        \sustainOn
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <af! g'!>8
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <b''!>4
                        % AFTER:
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <bf,,!>8
                        % AFTER:
                        % SPANNER_STARTS:
                        \sustainOn
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <g! fs'!>2
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <b''!>2
                        % AFTER:
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <b,,!>4
                        % AFTER:
                        % SPANNER_STARTS:
                        \sustainOn
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <bf! a'!>2
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <b''!>8
                        % AFTER:
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        <cs,!>2
                        % AFTER:
                        % SPANNER_STARTS:
                        \sustainOn
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        <bf! a'!>8
                        % BEFORE:
                        % COMMANDS:
                        \ottava 1
                        <c'''!>4
                        % AFTER:
                        % SPANNER_STOPS:
                        \sustainOff
                        % COMMANDS:
                        \ottava 0
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context Staff = "harp staff"
            {
                % OPEN_BRACKETS:
                \context Voice = "harp voice"
                {
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                    \times 2/3
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        bf,8
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        bf8
                        es'8
                        cs''8
                        ds''8
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        fs''8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 5 0))
                    \times 4/7
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        gs32
                        % AFTER:
                        % START_BEAM:
                        [
                        gs'32
                        ds''32
                        gs''32
                        bf''32
                        cs'''32
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        es'''32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                    \times 2/3
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        % AFTER:
                        % START_BEAM:
                        [
                        a'16
                        ds'16
                        bf16
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        fs16
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        es16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 5 0))
                    \times 4/7
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        a,32
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        bf32
                        ds'32
                        a'32
                        es''32
                        a''32
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        bf''32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 2 0))
                    \times 2/3
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        cs''8
                        % AFTER:
                        % START_BEAM:
                        [
                        fs''8
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        bf,8
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        bf8
                        es'8
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        ds''8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 3 0))
                    \times 4/7
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        gs'8
                        % AFTER:
                        % START_BEAM:
                        [
                        bf''8
                        gs8
                        ds''8
                        cs'''8
                        es'''8
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        gs''8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 3 0))
                    \times 2/3
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        es16
                        fs16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        a'16
                        bf16
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        ds'16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 3 0))
                    \times 4/7
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        bf8
                        % AFTER:
                        % START_BEAM:
                        [
                        es''8
                        a''8
                        bf''8
                        a'8
                        ds'8
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        a,8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                    \times 2/3
                    {
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        \override Staff.Stem.stemlet-length = 0.75
                        bf32
                        % AFTER:
                        % START_BEAM:
                        [
                        es'32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        bf,32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        ds''32
                        fs''32
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        cs''32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 3 0))
                    \times 4/7
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''8
                        % AFTER:
                        % START_BEAM:
                        [
                        ds''8
                        cs'''8
                        gs8
                        gs'8
                        gs''8
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        es'''8
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 3 2) (ly:make-duration 4 0))
                    \times 2/3
                    {
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        fs32
                        % AFTER:
                        % START_BEAM:
                        [
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        bf''32
                        bf32
                        a'32
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        es32
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        ds'32
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                    % OPEN_BRACKETS:
                    \tweak TupletNumber.text #(tuplet-number::append-note-wrapper(tuplet-number::non-default-tuplet-fraction-text 7 4) (ly:make-duration 4 0))
                    \times 4/7
                    {
                        % OPENING:
                        % COMMANDS:
                        \override Staff.Stem.stemlet-length = 0.75
                        ds'16
                        % AFTER:
                        % START_BEAM:
                        [
                        bf16
                        a'16
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        a,16
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        es''16
                        bf''16
                        % OPENING:
                        % COMMANDS:
                        \revert Staff.Stem.stemlet-length
                        a''16
                        % AFTER:
                        % STOP_BEAM:
                        ]
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
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
                    r1 * 2
                    r1 * 7/4
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            }
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 4"
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
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
                    % CLOSE_BRACKETS:
                    }
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
            % OPEN_BRACKETS:
            \context SquareBracketGroup = "sub group 5"
            <<
                % OPEN_BRACKETS:
                \context Staff = "violin 1 staff"
                {
                    % OPEN_BRACKETS:
                    \context Voice = "violin 1 voice"
                    {
                        % BEFORE:
                        % COMMANDS:
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violinen 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vl. 1 }
                        r1 * 2
                        r1 * 7/4
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
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violinen 2 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vl. 2 }
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
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
                        r1 * 2
                        r1 * 7/4
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
