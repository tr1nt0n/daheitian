\version "2.23.14"
\language english
#(set-default-paper-size "11x17portrait")
#(set-global-staff-size 14)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans.ily"
\include "/Users/trintonprater/trinton/lilypond/trinton-markups.ily"
\include "/Users/trintonprater/abjad-ext-microtones/abjadext/microtones/lilypond/ekmelos-ji-accidental-markups.ily"

\layout {
    \accidentalStyle neo-modern
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \consists Measure_spanner_engraver
        \override MetronomeMark.stencil = ##f
		\override TimeSignature.X-extent = #'(0 . -25)
        \override TimeSignature.Y-extent = #'(25 . 0)
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 10) (minimum-distance . 10) (padding . 5) (stretchability . 0))
        % \override TimeSignature.break-visibility = #end-of-line-invisible
        % \override TimeSignature.font-size = 12
		% \override TimeSignature.font-name = "Bodoni72 Bold"
        % \override TimeSignature.X-offset = -2.5
        % \override TimeSignature.Y-offset = 3
        % \override TimeSignature.whiteout-style = #'outline
        % \override TimeSignature.whiteout = 1
        % \override TimeSignature.layer = 4
        \override TimeSignature.transparent = ##t
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        proportionalNotationDuration = #(ly:make-moment 1 20)
        pedalSustainStyle = #'bracket

        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0) (minimum distance . 5) (padding . 5) (stretchability . 28))
        \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 0) (minimum distance . 5) (padding . 5) (stretchability . 28))

        \override AccidentalSuggestion.avoid-slur = #'ignore
        % \override Accidental.X-extent = ##f

        \override BarLine.hair-thickness = 2.5
        % \override BarLine.X-extent = #'(0 . 0)
        \override BarLine.thick-thickness = #10
        \override BarLine.bar-extent = #'(-3.5 . 3.5)

        % \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        % \override BarNumber.Y-extent = ##f
		% \override BarNumber.Y-offset = 0
		% \override BarNumber.extra-offset = #'(-2 . 4)
        % \override BarNumber.font-size = 7
		% \override BarNumber.padding = 5
        % \override BarNumber.font-name = "Bodoni72 Bold"

        autoBeaming = ##f
        \override Beam.breakable = ##t
        \override Beam.damping = 99
        \override Beam.concaveness = #10000
        \override Beam.beam-thickness = #0.75
        \override Beam.length-fraction = 1.5

        \override BreathingSign.text = \markup {
            \fontsize #7.5
            \override #'(font-name . "ekmelos")
            \char ##xe4D5
        }

        \override Clef.layer = 2
        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override DynamicText.font-size = #-2
        \override DynamicText.layer = 2
        \override DynamicText.whiteout-style = #'outline
        \override DynamicText.whiteout = 1
        \override DynamicLineSpanner.staff-padding = 4

        \override Glissando.thickness = #3
        \override Glissando.breakable = ##t

        \override Hairpin.to-barline = ##f

        \override MeasureSpanner.direction = #UP
        \override MeasureSpanner.thickness = #1.5
        \override MeasureSpanner.font-size = 7
        \override MeasureSpanner.font-name = "Bodoni72 Book"
        \override MeasureSpanner.padding = 9

        \override Staff.thickness = #0.5

        \override Stem.stemlet-length = 0.75
        \override Stem.thickness = #0.5
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)

        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5

        \override TextScript.font-name = "Bodoni72 Book"
        \override TextSpanner.font-name = "Bodoni72 Book"

        \override TrillSpanner.bound-details.right.padding = #-5

        \shape #'((2 . 0) (1 . 0) (0.5 . 0) (0 . 0)) LaissezVibrerTie
        \override LaissezVibrerTie.X-extent = ##f

        \shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
        \override RepeatTie.X-extent = ##f

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 3
        \override TupletNumber.font-size = 1.5
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.layer = 2
        \override TupletBracket.whiteout-style = #'outline
        \override TupletBracket.whiteout = 1
        \override TupletNumber.font-size = 2
        \override TupletNumber.layer = 3
        \override TupletNumber.whiteout-style = #'outline
        \override TupletNumber.whiteout = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletNumber.font-name = "Bodoni72 Book Italic"
        \override TupletBracket.stencil =
            #(lambda (grob)
               (let* ((pos (ly:grob-property grob 'positions))
                      (dir (ly:grob-property grob 'direction))
                      (new-pos (if (= dir 1)
                                   (max (car pos)(cdr pos))
                                   (min (car pos)(cdr pos)))))
                 (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                 (ly:tuplet-bracket::print grob)))
        % \override TupletBracket.direction = #up

        \override VoltaBracketSpanner.padding = 8
    }

    \context {
        \Staff
        fontSize = #-0.25
        % \remove Time_signature_engraver
        \consists Duration_line_engraver

        \override DurationLine.style = #'line
        \override DurationLine.thickness = #3
        \override DurationLine.to-barline = ##t
        \override DurationLine.breakable = ##t

        \override InstrumentName.self-alignment-X = #CENTER
        % \RemoveAllEmptyStaves
    }

    \context {
        \StaffGroup
        \name SquareBracketGroup
    }

    \context {
        \StaffGroup
        \accepts SquareBracketGroup
        \remove System_start_delimiter_engraver
    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \override Accidental.font-size = 1
    }
}
%
\paper {
    % max-systems-per-page = 3
    system-separator-markup = \markup { \slashSeparator }
    system-system-spacing = #'((basic-distance . 16) (minimum-distance . 16) (padding . 2))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm

    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
        \fill-line {
            "大黒天 - Trinton Hlynn"
        \concat {
            \fontsize #4
                \fromproperty #'page:page-number-string
        }
        }

        evenFooterMarkup = \markup
            \fill-line {
                \concat {
                    \fontsize #4
                        \fromproperty #'page:page-number-string
                }
                "大黒天 - Trinton Hlynn"
            }
}
