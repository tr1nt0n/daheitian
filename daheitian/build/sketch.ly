    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % AFTER:
            % MARKUP:
            ^ \markup \fontsize #4 { Stage 1 }
            ^ \markup \fontsize #5 \center-column { \musicglyph "scripts.ufermata" } 
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % AFTER:
            % MARKUP:
            ^ \markup \fontsize #4 { Stage 2 ( incredibly long, soli emerge from bridge via SCP ) }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % AFTER:
            % MARKUP:
            ^ \markup \fontsize #4 { Stage 3 ( incredibly long, though less than Stage 2 ) }
            % BEFORE:
            % COMMANDS:
            \once \override Score.TimeSignature.stencil = ##f
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % AFTER:
            % MARKUP:
            ^ \markup \fontsize #4 { Stage 4 ( long ) }
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % AFTER:
            % MARKUP:
            ^ \markup \fontsize #4 { ( time-space notation in actual score, not homorhythmic ) }
            ^ \markup \fontsize #4 { Stage 5 ( final, ends with each voice dropping out one by one as it is replaced with something else ) }
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
                        r1 * 7/4
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                    r1 * 1/8
                    r1 * 1
                    r1 * 1
                    r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
                        r1 * 7/4
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
                        r1 * 7/4
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
                    % BEFORE:
                    % COMMANDS:
                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Harfe }
                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { hf. }
                    r1 * 1/8
                    r1 * 1
                    r1 * 1
                    r1 * 1
                    r1 * 7/4
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
                    r1 * 1/8
                    r1 * 1
                    r1 * 1
                    r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        r1 * 1/8
                        r1 * 1
                        r1 * 1
                        r1 * 1
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 1
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violinen 1 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vl. 1 }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        c'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        c'1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        c'1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 5
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        aqf2.
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        df'4
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        df'4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #6
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        ef''8
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+24" } }
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        ef''4
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+24" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        fs'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+5" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-11" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        a'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-19" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        d''4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-49" } }
                        % SPANNER_STOPS:
                        \stopTextSpan
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 1
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violinen 2 }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vl. 2 }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        c'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        c'1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        r2
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 5
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        % OPENING:
                        % COMMANDS:
                        \clef "treble"
                        gqs4.
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        aqf8
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        aqf4.
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af4.
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        a4
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        a4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        d'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+38" } }
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        d'4
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+38" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        d'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+38" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        e'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+21" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        ef'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+30" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        e'4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+21" } }
                        % SPANNER_STOPS:
                        \stopTextSpan
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 1
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bratschen }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { br. }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        c'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 5
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        % OPENING:
                        % COMMANDS:
                        \clef "altovarC"
                        af4.
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        aqf4.
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af4
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af4.
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        gqs8
                        % AFTER:
                        % SPANNER_STARTS:
                        ~
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        gqs2
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        gqs4.
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        f4.
                        % AFTER:
                        % SPANNER_STARTS:
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        c4
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        c4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        d8
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-49" } }
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        d4
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-49" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        f4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+19" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        f4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+19" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        g4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+3" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        b4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-30" } }
                        % SPANNER_STOPS:
                        \stopTextSpan
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 1
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Violoncelli }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { vc. }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        c'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 5
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        af1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Solo }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Solo }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Solo }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-hook
                        - \tweak bound-details.left.text \markup \concat { \upright { "Solo" } \hspace #0.5 }
                        - \tweak bound-details.right.padding -1
                        \startTextSpan
                        \glissando
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af,8
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af,4
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        ef4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+35" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        cs4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-41" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        fs,4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "-35" } }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        ef,4
                        % AFTER:
                        % MARKUP:
                        ^ \markup \center-align { \center-column { "+35" } }
                        % SPANNER_STOPS:
                        \stopTextSpan
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
                        % ABSOLUTE_BEFORE:
                        % COMMANDS:
                        \staff-line-count 1
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Kontrabässe }
                        \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { kb. }
                        % OPENING:
                        % COMMANDS:
                        \clef "percussion"
                        c'8
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        c'1
                        % AFTER:
                        % MARKUP:
                        ^ \markup { Steg }
                        % BEFORE:
                        % COMMANDS:
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            % ABSOLUTE_BEFORE:
                            % COMMANDS:
                            \staff-line-count 5
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            % OPENING:
                            % COMMANDS:
                            \clef "treble"
                            \tweak style #'cross
                            af'2
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak padding #5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Steg" } \hspace #0.5 }
                            - \tweak bound-details.right.padding 1
                            \startTextSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            af'2
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % SPANNER_STARTS:
                            - \tweak padding #4.5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                            - \tweak bound-details.right.text \markup \upright { molto pont. }
                            \startTextSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            af'2
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override TupletBracket.stencil = ##f
                        \once \override TupletNumber.stencil = ##f
                        % OPEN_BRACKETS:
                        \times 2/3
                        {
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            af'2
                            % AFTER:
                            % SPANNER_STARTS:
                            - \tweak padding #5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "molto pont." } \hspace #0.5 }
                            \startTextSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            af'2
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                            % SPANNER_STARTS:
                            - \tweak padding #5
                            - \abjad-dashed-line-with-arrow
                            - \tweak bound-details.left.text \markup \concat { \upright { "Steg" } \hspace #0.5 }
                            \startTextSpan
                            - \tweak padding #5
                            - \abjad-dashed-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \upright { "Steg" } \hspace #0.5 }
                            - \tweak bound-details.right.padding -2.5
                            \startTextSpan
                            % BEFORE:
                            % COMMANDS:
                            \once \override Beam.stencil = ##f
                            \once \override Dots.stencil = ##f
                            \once \override Flag.stencil = ##f
                            \once \override NoteHead.duration-log = 2
                            \once \override Stem.stencil = ##f
                            \tweak style #'cross
                            af'2
                            % AFTER:
                            % SPANNER_STOPS:
                            \stopTextSpan
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        \tweak style #'cross
                        af'4
                        % AFTER:
                        % SPANNER_STARTS:
                        - \tweak padding #5
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \upright { "Steg" } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \upright { molto pont. }
                        \startTextSpan
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af'8
                        % AFTER:
                        % SPANNER_STOPS:
                        \stopTextSpan
                        r8
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        % OPENING:
                        % COMMANDS:
                        \clef "bass"
                        af,1
                        % AFTER:
                        % ARTICULATIONS:
                        - \accent
                        % SPANNER_STARTS:
                        ~
                        % BEFORE:
                        % COMMANDS:
                        \once \override Beam.stencil = ##f
                        \once \override Dots.stencil = ##f
                        \once \override Flag.stencil = ##f
                        \once \override NoteHead.duration-log = 2
                        \once \override Stem.stencil = ##f
                        af,4
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
