import abjad
import baca
import evans
import fractions
import itertools
import trinton
import random
import quicktions
from abjadext import rmakers
from abjadext import microtones
from itertools import cycle
from daheitian import transforms
from daheitian import library

# score


def daheitian_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Flute(),
            abjad.Oboe(),
            abjad.BassClarinet(),
            abjad.Bassoon(),
            abjad.FrenchHorn(),
            abjad.Trumpet(),
            abjad.TenorTrombone(),
            abjad.Tuba(),
            abjad.Piano(),
            abjad.Piano(),
            abjad.Harp(),
            abjad.Harp(),
            abjad.Percussion(),
            abjad.Percussion(),
            abjad.Percussion(),
            abjad.Violin(),
            abjad.Violin(),
            abjad.Viola(),
            abjad.Cello(),
            abjad.Contrabass(),
        ],
        groups=[
            4,
            1,
            3,
            2,
            2,
            1,
            2,
            5,
        ],
        inner_staff=[
            "SquareBracketGroup",
            "SquareBracketGroup",
            "SquareBracketGroup",
            "GrandStaff",
            "GrandStaff",
            "SquareBracketGroup",
            "SquareBracketGroup",
            "SquareBracketGroup",
        ],
        time_signatures=time_signatures,
        filler=abjad.MultimeasureRest,
    )

    return score


# tempi

metronome_marks = {
    "48": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 48),
    "57 3/5": abjad.MetronomeMark.make_tempo_equation_markup(
        (1, 4), quicktions.Fraction(288, 5)
    ),
    "72": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 72),
    "96": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 96),
    "144": abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 144),
    # slower
    "2.=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c2."), right_rhythm=abjad.Note("c4")
    ),
    "4:5(2)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("4:5", "c2"),
        right_rhythm=abjad.Note("c4"),
    ),
    "2=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c2"), right_rhythm=abjad.Note("c4")
    ),
    "5:6(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:6", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "4:5(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("4:5", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "3:5(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:5", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "3:4(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:4", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "4.=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c4."), right_rhythm=abjad.Note("c4")
    ),
    # faster
    "6:5(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("6:5", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "5:4(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:4", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "5:4(8)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:4", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
    "5:3(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("5:3", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "4:3(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("4:3", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "3:2(4)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:2", "c4"),
        right_rhythm=abjad.Note("c4"),
    ),
    "8=4": abjad.MetricModulation(
        left_rhythm=abjad.Note("c8"), right_rhythm=abjad.Note("c4")
    ),
    "3:2(8)=4": abjad.MetricModulation(
        left_rhythm=abjad.Tuplet("3:2", "c8"),
        right_rhythm=abjad.Note("c4"),
    ),
}


def metronome_markups(
    met_string, mod_string=None, string_only=False, parenthesis=False
):
    if mod_string is None:
        if parenthesis is False:
            mark = abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #9 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    f"      {met_string.string[8:]}",
                    r"  }",
                    r"}",
                ],
                site="after",
            )
            return mark
        else:
            mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ ( {met_string.string[8:]} ) }} }}"
            return mark

    else:
        if string_only is True:
            mark = f"\markup {{ \override #'(font-size . 5.5) \concat {{ {met_string.string[8:]} [{abjad.lilypond(mod_string)[8:]}] }} }}"
        else:
            mark = abjad.LilyPondLiteral(
                [
                    r"^ \markup {",
                    r"  \raise #9 \with-dimensions-from \null",
                    r"  \override #'(font-size . 5.5)",
                    r"  \concat {",
                    f"      {met_string.string[8:]}",
                    f"      [{abjad.lilypond(mod_string)[8:]}]",
                    r"  }",
                    r"}",
                ],
                site="after",
            )
        return mark


ghost_metronome = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #9 \with-dimensions-from \null",
        r"  \override #'(font-size . 5.5)",
        r"  \concat {",
        f"      {abjad.MetronomeMark.make_tempo_equation_markup((3, 8), 51).string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)


# movement titles

movements = [
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { I. 天（ 一 ）}""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { II. 鬼 }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { III. 化 }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line { IV. 神 }""",
    ),
    abjad.Markup(
        r"""\markup \override #'(font-name . "Source Han Serif SC Bold") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #8 \box \line  { V. 天（ 二 ）}""",
    ),
]

movements = [abjad.bundle(movement, r"- \tweak padding #14") for movement in movements]

# immutables

all_voice_names = eval(
    """[
        "flute voice",
        "oboe voice",
        "bassclarinet voice",
        "bassoon voice",
        "frenchhorn voice",
        "trumpet voice",
        "tenortrombone voice",
        "tuba voice",
        "piano 1 voice",
        "piano 2 voice",
        "harp 1 voice",
        "harp 2 voice",
        "percussion 1 voice",
        "percussion 2 voice",
        "percussion 3 voice",
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
        "contrabass voice",
    ]"""
)

first_voice_names = eval(
    """[
        "flute voice",
        "oboe voice",
        "bassclarinet voice",
        "bassoon voice",
        "frenchhorn voice",
        "trumpet voice",
        "tenortrombone voice",
        "tuba voice",
        "piano 1 voice",
        "harp 1 voice",
        "percussion 1 voice",
        "percussion 2 voice",
        "percussion 3 voice",
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
        "contrabass voice",
    ]"""
)

map = trinton.logistic_map(
    x=4,
    r=-1,
    n=12,
    seed=2,
)

map = eval("""[i for i in map if i > 1]""")

flute_overblowing_pitches = eval(
    """["a''", "e'''", "a'''", "cs''''", "e''''", "gqf''''", "a''''", "gqf''''", "e''''", "cs''''", "a'''", "e'''", "a''", "a'",]"""
)

harp_chords = eval(
    """[
        [
            "a'''",
            "bf'''",
            "ds''''",
            "e''''",
            "fs''''"
        ],
        [
            "g'''",
            "a'''",
            "bf'''",
            "ds''''",
            "e''''",
        ],
    ]"""
)

oboe_chant_talea = eval(
    """[2, 4, 2, 4, 2, 3, 3, -3, 2, 4, 2, 4, 2, 4, 2, 3, 2, 3, 3, -3,]"""
)

moth_talea = eval(
    """[
        4,
        2,
        1,
        1,
        2,
        2,
        1,
        3,
        4,
        2,
        2,
    ]"""
)

# dictionaries

_climax_pitches = {
    "violin 1 voice": {
        1: 11,
    },
    "violin 2 voice": {
        1: "g''''",
        2: "e''''",
    },
    "viola voice": {
        1: "a'''",
        2: "e''",
    },
    "cello voice": {
        1: "fqs''",
        2: "gqs'",
    },
    "contrabass voice": {
        1: "e",
        2: "a,",
    },
}

climax_partials = ["3", "11", "13", "3", "4", "6", "7", "9"]

climax_partials = trinton.return_fraction_string_list(
    [(rf"{_}°", "A") for _ in climax_partials]
)

climax_partials = [abjad.Markup(_) for _ in climax_partials]

_climax_partial_markups = {
    "contrabass voice": {
        1: climax_partials[0],
    },
    "cello voice": {
        1: climax_partials[2],
        2: climax_partials[1],
    },
    "viola voice": {
        1: climax_partials[4],
        2: climax_partials[3],
    },
    "violin 2 voice": {
        1: climax_partials[6],
        2: climax_partials[5],
    },
    "violin 1 voice": {
        1: climax_partials[7],
    },
}

_bloom_pitches = {
    "violin 1 voice": {
        4: [-3.5, "df'"],
        5: [
            "df'",
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=6,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=15,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=4,
                scale_degree=22,
            ),
            evans.ETPitch(
                fundamental="af'",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ],
    },
    "violin 2 voice": {
        3: [
            -4.5,
            -3.5,
        ],
        4: [
            -3.5,
            -4,
            -3,
        ],
        5: [
            -3,
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=2,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=2,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=13,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=4,
                scale_degree=18,
            ),
            evans.ETPitch(
                fundamental="af'",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=2,
            ),
        ],
    },
    "viola voice": {
        2: [-4, -3.5, -4],
        3: [
            -4,
            -4.5,
        ],
        4: [-4.5, -5, -5.5],
        5: [
            -5.5,
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=1,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=1,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=2,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=12,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=4,
                scale_degree=8,
            ),
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=1,
            ),
        ],
    },
    "cello voice": {
        5: [
            "af",
            "af",
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=-1,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=4,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=5,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ]
    },
}

_brass_chord_pitches = {
    "frenchhorn voice": [quicktions.Fraction(_) for _ in ["13/4", "18/7"]],
    "trumpet voice": ["d''", "f''"],
    "tenortrombone voice": [quicktions.Fraction(_) for _ in ["64/21", "22/9"]],
    "tuba voice": ["as,", "b,,"],
}

_moths_selectors = {
    1: {
        "contrabass voice": trinton.patterned_tie_index_selector([0, 10, 20], 30),
        "cello voice": trinton.patterned_tie_index_selector([6, 12, 18, 24], 30),
        "viola voice": trinton.patterned_tie_index_selector([6, 12, 18, 24], 30),
        "violin 2 voice": trinton.patterned_tie_index_selector([0, 7, 14, 21], 28),
        "violin 1 voice": trinton.patterned_tie_index_selector(
            [4, 8, 12, 16, 20, 24], 28
        ),
        "bassoon voice": trinton.patterned_tie_index_selector([0, 10, 20], 30),
        "bassclarinet voice": trinton.patterned_tie_index_selector([0, 7, 14, 21], 28),
        "oboe voice": trinton.patterned_tie_index_selector([4, 8, 12, 16, 20, 24], 28),
    },
    2: {
        "contrabass voice": trinton.patterned_tie_index_selector(
            [
                0,
                1,
                2,
                3,
                4,
                10,
                11,
                12,
                13,
                14,
                20,
                21,
                22,
                23,
                24,
            ],
            30,
        ),
        "cello voice": trinton.patterned_tie_index_selector(
            [6, 7, 12, 13, 18, 19, 24, 25], 30
        ),
        "viola voice": trinton.patterned_tie_index_selector(
            [
                6,
                7,
                8,
                9,
                12,
                13,
                14,
                15,
                18,
                19,
                20,
                21,
                24,
                25,
                26,
                27,
            ],
            30,
        ),
        "violin 2 voice": trinton.patterned_tie_index_selector(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ],
            7,
        ),
        "violin 1 voice": trinton.patterned_tie_index_selector(
            [
                4,
                5,
                8,
                9,
                12,
                13,
                16,
                17,
                20,
                21,
                24,
                25,
            ],
            28,
        ),
        "bassoon voice": trinton.patterned_tie_index_selector(
            [
                0,
                1,
                2,
                10,
                11,
                12,
                20,
                21,
                22,
            ],
            30,
        ),
        "bassclarinet voice": trinton.patterned_tie_index_selector(
            [
                0,
                1,
                2,
                7,
                8,
                9,
                14,
                15,
                16,
                21,
                22,
                23,
            ],
            28,
        ),
        "oboe voice": trinton.patterned_tie_index_selector(
            [
                4,
                5,
                6,
                8,
                9,
                10,
                12,
                13,
                14,
                16,
                17,
                18,
                20,
                21,
                22,
                24,
                25,
                26,
            ],
            28,
        ),
    },
}

_fundamental_to_multiphonic = {
    "cqs,": abjad.Markup(
        r"\markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }",
    ),
    "d": abjad.Markup(
        r"\markup \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }",
    ),
    "bqs'": abjad.Markup(
        r"\markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (two three five six)) (lh . (gis)) (rh . (c))) }",
    ),
    "cqs, hspace": abjad.Markup(
        r"\markup \hspace #4 \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one two three five)) (lh . (a thumb-cis cisT)) (rh . (thumb-e))) }",
    ),
    "d hspace": abjad.Markup(
        r"\markup \hspace #4 \override #'(size . .6) { \woodwind-diagram #'bassoon #'((cc . (one three four five)) (lh . (w eesT cisT)) (rh . (thumb-bes))) }",
    ),
    "bqs' hspace": abjad.Markup(
        r"\markup \hspace #1.5 \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (two three five six)) (lh . (gis)) (rh . (c))) }",
    ),
}

_klavierubung_selectors = {
    1: trinton.patterned_tie_index_selector([1, 5], 8),
    2: {
        "bassclarinet voice": trinton.patterned_tie_index_selector([3, 6], 8),
        "bassoon voice": trinton.patterned_tie_index_selector([0, 2, 7], 8),
        "percussion 3 voice": trinton.patterned_tie_index_selector([1, 2, 5, 7], 8),
    },
}

# sequences


def logistic_map(index=0):
    return trinton.rotated_sequence(map, index)


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Flöten }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Oboen }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Bassklarinetten }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Fagotte }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Hörner in F }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Trompeten in C }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Tenorposaunen }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Tuben }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Klavier }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Harfe }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Pauken }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Schlagzeug 1 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Schlagzeug 2 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Geigen 1 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Geigen 2 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Bratschen }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Violoncelli }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Kontrabässe }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic"){ fl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { ob. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { bkl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { fg.}'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { hn. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic"){ tpt. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { pos. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { tb. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { klav. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { hf. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { pk. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { schlz. 1 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { schlz. 2 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { g. 1 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { g. 2 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { br. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vc. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { kb. }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(first_voice_names, all_instrument_names):
        trinton.attach(voice=score[voice_name], leaves=[0], attachment=markup)


def write_short_instrument_names(score):
    for voice_name, markup in zip(first_voice_names, all_short_instrument_names):
        trinton.attach(voice=score[voice_name], leaves=[0], attachment=markup)


# materials


def monolith(score, measure):
    target = abjad.select.leaf(score["Global Context"], measure - 1)

    time_signature = abjad.get.indicator(target, abjad.TimeSignature)

    if time_signature != abjad.TimeSignature((3, 2)):
        raise Exception("Must be 3/2 measure")

    # chimes

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (1,),
                    (8, 1, -11),
                ]
            )
        ),
        evans.PitchHandler([["c'", "df'"]]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("mp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.notehead_bracket_command(),
        library.boxed_markup(string="Röhrenglocken"),
        library.change_lines(lines=5, clef="bass"),
        library.piano_pedals(),
        voice=score["percussion 2 voice"],
        preprocessor=trinton.fuse_quarters_preprocessor((2, 6)),
    )

    # flutes

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.even_division([64])),
        library.flute_flageolets(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("pp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        voice=score["flute voice"],
    )

    # horns

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (
                        3,
                        1,
                        1,
                        2,
                        1,
                    ),
                    (8, 1, -11),
                ]
            )
        ),
        evans.PitchHandler([24]),
        trinton.notehead_bracket_command(),
        library.horn_monolith_attachments(),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation(">"),
                abjad.Articulation("staccato"),
            ],
            selector=trinton.select_leaves_by_index([2, 4, -1], pitched=True),
        ),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="Bewegen die Ventile schnell und wahllos.",
            ),
            full_string=True,
            padding=8.5,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartHairpin("o<|"),
                abjad.Dynamic("f"),
                abjad.Dynamic("ff"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">"),
                trinton.make_custom_dynamic("pf"),
                abjad.StartHairpin("o<"),
                abjad.Dynamic("fff"),
            ],
            selector=trinton.select_leaves_by_index(
                [0, 0, 1, 2, 3, 3, 4, 5, -1], pitched=True
            ),
        ),
        trinton.tremolo_command(selector=trinton.pleaves()),
        voice=score["frenchhorn voice"],
        preprocessor=trinton.fuse_quarters_preprocessor((2, 6)),
        beam_meter=True,
    )


# pitch tools

_voice_to_partial = {
    "contrabass voice": "a,",
    "contrabass a voice": "e",
    "cello voice": 7.5,
    "cello a voice": 17.5,
    "viola voice": "e''",
    "viola a voice": "a'''",
    "violin 2 voice": "e''''",
    "violin 2a voice": "g''''",
    "violin 1 voice": 11,
}


def piano_kb_pitches(index=0):
    return trinton.rotated_sequence(
        trinton.random_walk(
            chord=trinton.transpose(
                [
                    8,
                    2,
                    0,
                    4,
                    7,
                    1,
                ],
                36,
            ),
            seed=27,
        ),
        index,
    )


def piano_chords(hand="rh", index=0):
    if hand == "rh":
        chords = transforms.piano_chords_rh
    if hand == "lh":
        chords = transforms.piano_chords_lh

    return trinton.rotated_sequence(chords, index)


# rhythm tools


def fuse_contiguous(selector=trinton.pleaves()):
    def fuse(argument):
        selections = selector(argument)
        contiguous = abjad.select.group_by_contiguity(selections)
        for group in contiguous:
            abjad.mutate.fuse(group)

    return fuse


def flute_graces(
    selector=trinton.pleaves(),
    grace_selector=trinton.patterned_tie_index_selector([1, 3, 4], 5),
):
    def graces(argument):
        selections = selector(argument)

        handler = evans.GraceHandler(
            boolean_vector=[1],
            gesture_lengths=[
                1,
            ],
            remove_skips=True,
            forget=False,
        )

        relevant_leaves = []

        for leaf in selections:
            if (
                leaf.written_pitch.number == 15
                or leaf.written_pitch.number == 19
                or leaf.written_pitch.number == 3
                or leaf.written_pitch.number == 7
                or leaf.written_pitch.number == 31
            ):
                relevant_leaves.append(leaf)

        grace_ties = grace_selector(relevant_leaves)

        for tie in grace_ties:
            handler(tie[0])

    return graces


def patterned_graces(
    selector=trinton.pleaves(),
    grace_selector=trinton.patterned_tie_index_selector(
        [
            3,
        ],
        7,
    ),
):
    def graces(argument):
        selections = selector(argument)

        handler = evans.GraceHandler(
            boolean_vector=[1],
            gesture_lengths=[
                1,
            ],
            remove_skips=True,
            forget=False,
        )

        grace_ties = grace_selector(selections)

        for tie in grace_ties:
            handler(tie[0])

    return graces


def oboe_talea(index=0):
    return trinton.rotated_sequence(oboe_chant_talea, index)


def moths_talea(index=0):
    return trinton.rotated_sequence(moth_talea, index)


# notation tools


def make_skips(selector):
    def skips(argument):
        selections = selector(argument)
        for selection in selections:
            duration = abjad.get.duration(selection)
            skip = abjad.Skip(1, multiplier=duration)
            abjad.mutate.replace(selection, skip)

    return skips


def aftergrace_swells(selector=trinton.pleaves(), hairpin="o<|", dynamics=["ff"]):
    def swells(argument):
        selections = selector(argument)
        pties = abjad.select.logical_ties(selections, pitched=True)

        groups = abjad.sequence.partition_by_counts(
            sequence=pties,
            counts=[2 for _ in range(len(selections))],
            overhang=True,
        )

        for group, dynamic in zip(groups, cycle(dynamics)):
            abjad.glissando(
                group,
                hide_middle_note_heads=True,
                allow_repeats=True,
                allow_ties=True,
            )

            abjad.attach(abjad.StartHairpin(hairpin), group[0][0])

            abjad.attach(trinton.make_custom_dynamic(dynamic), group[-1][0])

            for tie in group:
                for leaf in tie:
                    abjad.detach(abjad.Tie, leaf)

            middle_leaves = abjad.select.exclude(abjad.select.leaves(group), [0, -1])
            for leaf in middle_leaves:
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override Dots.staff-position = #2", "before"
                    ),
                    leaf,
                )

    return swells


def fuse_durations(divisions):
    def func(selections):
        selections = abjad.select.leaves(selections)

        durations = cycle([abjad.Duration(_) for _ in divisions])

        new_durations = []

        for _, duration in zip(range(len(selections)), durations):
            new_durations.append(duration)

        group = []

        for leaf in selections:
            group.append(leaf)

            if abjad.get.duration(group) == new_durations[0]:
                if all(isinstance(leaf, abjad.Rest) for leaf in group):
                    abjad.mutate.fuse(group)
                group.clear()
                new_durations.pop(0)

    return func


def ring_mod_attachments(
    selector=trinton.pleaves(),
    dynamics=["p"],
    direction=abjad.UP,
    clean_swells=False,
    transparent_head=True,
):
    def attach(argument):
        selections = selector(argument)
        pties = abjad.select.logical_ties(selections, pitched=True)

        groups = abjad.sequence.partition_by_counts(
            sequence=pties,
            counts=[3 for _ in range(len(selections))],
            overhang=True,
        )

        for group, dynamic in zip(groups, cycle(dynamics)):
            abjad.beam(group)
            abjad.glissando(
                group,
                hide_middle_note_heads=True,
                allow_repeats=True,
                allow_ties=True,
            )
            middle_ties = abjad.select.exclude(group, [0, -1])
            for tie in middle_ties:
                for leaf in tie:
                    abjad.attach(
                        abjad.LilyPondLiteral(
                            r"\once \override Dots.staff-position = #2", "before"
                        ),
                        leaf,
                    )

            if clean_swells is True:
                subsequent_ties = abjad.select.exclude(group, [0])
                for tie in subsequent_ties:
                    for leaf in tie:
                        abjad.detach(abjad.Markup, leaf)
                        for head in leaf.note_heads:
                            head.is_forced = False
                            if transparent_head is True:
                                abjad.tweak(head, r"\tweak Accidental.transparent ##t")

            for tie in group:
                for leaf in tie:
                    abjad.detach(abjad.Tie, leaf)

            abjad.attach(abjad.StartHairpin("o<"), group[0][0], direction=direction)
            abjad.attach(
                trinton.make_custom_dynamic(dynamic, direction=direction), group[1][0]
            )
            abjad.attach(abjad.StartHairpin(">o"), group[1][0], direction=direction)
            abjad.attach(abjad.StopHairpin(), group[-1][0])

    return attach


def flute_grace_attachments(selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        trinton.tremolo_command()(selections)

        graces = abjad.select.leaves(selections, grace=True)

        for grace in graces:
            abjad.attach(abjad.Articulation(">"), grace)

            with_next_leaf = abjad.select.with_next_leaf(grace)

            tie_group = abjad.select.logical_ties(with_next_leaf)

            abjad.slur(tie_group)

    return attach


def grace_attachments(selector=trinton.pleaves(), glissando=True):
    def attach(argument):
        selections = selector(argument)

        graces = abjad.select.leaves(selections, grace=True)

        for grace in graces:
            if glissando is True:
                abjad.attach(abjad.Glissando(), grace)

            with_next_leaf = abjad.select.with_next_leaf(grace)

            slur_group = abjad.select.logical_ties(with_next_leaf)

            abjad.slur(slur_group)

    return attach


def attach_multiphonics(selector=trinton.logical_ties(first=True, pitched=True)):
    def attach(argument):
        selections = selector(argument)
        for selection in selections:
            named_pitch = selection.written_pitch.name
            abjad.attach(
                _fundamental_to_multiphonic[named_pitch], selection, direction=abjad.UP
            )

    return attach


def contiguous_trills(selector=trinton.pleaves()):
    def trill(argument):
        selections = selector(argument)
        runs = abjad.select.group_by_contiguity(selections)
        for run in runs:
            abjad.trill_spanner(run)

    return trill


def unpitched_glissandi(selector=trinton.pleaves(), articulation=None, trill=False):
    def gliss(argument):
        selections = selector(argument)

        accidental_literal = abjad.LilyPondLiteral(
            r"\once \override Accidental.stencil = ##f", "before"
        )

        dots_literal = abjad.LilyPondLiteral(
            r"\once \override Dots.staff-position = #2", "before"
        )

        notehead_literal = abjad.LilyPondLiteral(
            r"\once \override NoteHead.X-extent = #'(0 . 0) \once \override NoteHead.transparent = ##t \once \override NoteHead.no-ledgers = ##t",
            "before",
        )

        ties = abjad.select.logical_ties(selections, pitched=True)

        groups = abjad.select.exclude(ties, [-1])

        groups = abjad.select.group_by_contiguity(ties)

        for group in groups:
            exclude_first_and_last = abjad.select.exclude(group, [0, -1])
            exclude_last = abjad.select.exclude(ties, [-1])
            for tie in exclude_first_and_last:
                for leaf in tie:
                    abjad.attach(accidental_literal, leaf)

                    abjad.attach(dots_literal, leaf)

                    abjad.attach(notehead_literal, leaf)

                for tie in exclude_last:
                    abjad.glissando(
                        abjad.select.with_next_leaf(tie),
                        hide_middle_note_heads=True,
                        allow_repeats=True,
                        allow_ties=True,
                        zero_padding=True,
                    )

        if articulation is not None:
            for tie in ties:
                abjad.attach(abjad.Articulation(articulation), tie[0])

        if trill is True:
            for group in groups:
                start_trill_span = abjad.StartTrillSpan(
                    interval=abjad.NamedInterval("m2")
                )
                stop_trill_span = abjad.StopTrillSpan()
                abjad.attach(start_trill_span, group[0][0])
                abjad.attach(stop_trill_span, group[-1][-1])

    return gliss


def aftergrace(notes_string="c'16", selector=trinton.pleaves()):
    def grace(argument):
        selections = selector(argument)

        ties = abjad.select.logical_ties(selections)

        containers = [abjad.AfterGraceContainer(notes_string) for _ in ties]

        for container in containers:
            literal = abjad.LilyPondLiteral(
                r'\once \override Flag.stroke-style = #"grace"',
            )

            abjad.attach(literal, container[0])

        for container, tie in zip(containers, ties):
            abjad.attach(container, tie[-1])

    return grace


def left_beam(selector=None):
    def beam(argument):
        if selector is not None:
            for tuplet in selector(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.LEFT
        else:
            for tuplet in abjad.select.tuplets(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.LEFT

    return beam


def right_beam(selector=None):
    def beam(argument):
        if selector is not None:
            for tuplet in selector(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.RIGHT
        else:
            for tuplet in abjad.select.tuplets(argument):
                abjad.override(tuplet[0]).Beam.grow_direction = abjad.RIGHT

    return beam


def ties(score):
    for voice in abjad.select.components(score["Staff Group"], abjad.Voice):
        for leaf in abjad.select.leaves(voice):
            if abjad.get.has_indicator(leaf, abjad.Tie) and abjad.get.duration(
                leaf
            ) > abjad.Duration(3, 32):
                abjad.attach(
                    abjad.RepeatTie(),
                    abjad.select.with_next_leaf(leaf)[-1],
                    tag=abjad.Tag("+SCORE"),
                )

            if abjad.get.has_indicator(leaf, abjad.Tie) and abjad.get.duration(
                leaf
            ) <= abjad.Duration(3, 32):
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"\once \override Tie.transparent = ##f", "before"
                    ),
                    leaf,
                    tag=abjad.Tag("+SCORE"),
                )


def timbre_trills(selector=trinton.pleaves(), index=0):
    def trill(argument):
        selections = selector(argument)

        selections = abjad.select.logical_ties(selections)

        trill_sequence = trinton.random_walk(
            chord=[
                1,
                3,
                2,
                3,
            ],
            seed=12,
        )

        trill_sequence = trinton.rotated_sequence(trill_sequence, index)

        for tie, trill in zip(selections, trill_sequence):
            abjad.attach(
                abjad.Markup(rf"\markup \center-column {{ \circle {trill} }}"),
                tie[0],
                direction=abjad.UP,
            )

    return trill


def flute_overblowing_noteheads(selector=trinton.grace_selector()):
    def noteheads(argument):
        selections = selector(argument)

        groups = abjad.sequence.partition_by_counts(
            sequence=selections,
            counts=[14 for _ in range(len(selections))],
            overhang=True,
        )

        for group in groups:
            relevant_leaves = abjad.select.exclude(group, [-1])

            for leaf in relevant_leaves:
                abjad.tweak(leaf.note_head, r"\tweak style #'harmonic")

    return noteheads


def parenthesize_noteheads(selector=trinton.exclude_graces()):
    def parenthesize(argument):
        selections = selector(argument)
        selections = abjad.select.leaves(selections, pitched=True)
        for selection in selections:
            selection.note_head.is_parenthesized = True

    return parenthesize


def imbrication(
    pitch,
    name="Imbrication",
    dynamic=None,
    secondary_dynamic=None,
):
    def imbricate(argument):
        selections = argument

        pleaves = abjad.select.leaves(selections, pitched=True)

        relevant_leaves = []

        for leaf in pleaves:
            if leaf.written_pitch.number == pitch:
                relevant_leaves.append(leaf)

        relevant_ties = abjad.select.logical_ties(relevant_leaves)

        if dynamic is not None:
            for leaf in relevant_leaves:
                abjad.detach(abjad.Articulation, leaf)

        trinton.imbrication(
            selections=selections,
            pitches=[pitch for _ in list(range(len(relevant_leaves)))],
            name=name,
            articulation=">",
            beam=True,
        )

        if dynamic is not None:
            for tie in relevant_ties:
                abjad.detach(abjad.Markup, tie[0])
                abjad.attach(abjad.Dynamic(dynamic), tie[0])

        if secondary_dynamic is not None:
            pties = abjad.select.logical_ties(pleaves)
            for tie in relevant_ties:
                next_tie = pties[pties.index(tie) + 1]

                if abjad.get.has_indicator(next_tie[0], abjad.Dynamic) is False:
                    abjad.attach(abjad.Dynamic(secondary_dynamic), next_tie[0])

    return imbricate


def remove_accidentals(selector=trinton.pleaves()):
    def remove(argument):
        selections = selector(argument)

        for leaf in selections:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override Staff.Accidental.stencil = ##f", "before"
                ),
                leaf,
            )

    return remove


def percussive_bassoon_attachments(selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        pties = abjad.select.logical_ties(selections, pitched=True)

        for leaf in selections:
            if leaf.written_pitch.number == -13:
                abjad.tweak(leaf.note_head, r"\tweak style #'cross")

        for tie in pties:
            if tie[0].written_pitch.number == -14:
                abjad.attach(
                    abjad.LilyPondLiteral(r"\triangleStemOn", "before"), tie[0]
                )

                abjad.attach(abjad.LilyPondLiteral(r"\stemOff", "after"), tie[-1])

    return attach


onbeat_flute_handler = trinton.OnBeatGraceHandler(
    number_of_attacks=[14],
    durations=[
        2,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        2,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="onbeat flute graces",
)


def aftergrace_attachments(
    selector=trinton.pleaves(), notehead_change=None, dynamic=None, articulation=None
):
    def attach(argument):
        selections = selector(argument)

        ties = abjad.select.logical_ties(selections, pitched=True, grace=False)

        leaves = abjad.select.leaves(selections, pitched=True)

        _overrides = {
            "highest": r"\once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bb)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0bc)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0be)))))))",
            "lowest": r"\once \override NoteHead.stencil = #(lambda (grob) (let ((dur (ly:grob-property grob 'duration-log))) (if (= dur 0) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c4)) (if (= dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c5)) (if (> dur 1) (grob-interpret-markup grob (markup #:ekmelos-char #xe0c7)))))))",
        }

        if notehead_change is not None:
            notehead_literal = abjad.LilyPondLiteral(
                _overrides[notehead_change], "before"
            )

            stem_literal = abjad.LilyPondLiteral(
                r"\once \override NoteHead.stem-attachment = #'(0 . 0.75)"
            )

            ledger_literal = abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t"
            )

            accidental_literal = abjad.LilyPondLiteral(
                r"\once \override Staff.AccidentalPlacement.right-padding = #0.6"
            )

            literals = [
                stem_literal,
                ledger_literal,
                notehead_literal,
                accidental_literal,
            ]

        for tie in ties:

            group = abjad.select.with_next_leaf(tie)

            grace = baca.select.graces(group)

            abjad.glissando(
                group,
                hide_middle_note_heads=True,
                allow_repeats=True,
                allow_ties=True,
            )

            abjad.slur(group)

            if notehead_change is not None:

                for literal in literals:
                    abjad.attach(literal, grace[-1])

            if dynamic is not None:

                abjad.attach(abjad.StartHairpin("o<|"), tie[0])

                abjad.attach(abjad.Dynamic(dynamic), grace[-1])

            if articulation is not None:

                abjad.attach(abjad.Articulation(articulation), grace[-1])

    return attach


def boxed_markup(
    string,
    selector=trinton.select_leaves_by_index(
        [0],
        pitched=True,
    ),
    site="after",
):
    literal = abjad.LilyPondLiteral(rf'\boxed-markup "{string}" 1', site)
    command = trinton.attachment_command(
        attachments=[literal],
        selector=selector,
    )
    return command


def return_boxed_markup(string, font=None):
    if font == "italic":
        boxed_string = rf"""\markup \override #'(font-name . "Bodoni72 Book Italic") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line {{ {string} }}"""
    else:
        boxed_string = rf"""\markup \override #'(font-name . "Bodoni72 Book") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 \line {{ {string} }}"""

    return boxed_string


def change_lines(
    lines,
    selector=trinton.select_leaves_by_index([0], pitched=True),
    clef="treble",
):
    def change(argument):
        selections = selector(argument)
        for selection in selections:
            abjad.attach(abjad.Clef(clef), selection)
            abjad.attach(
                abjad.LilyPondLiteral(
                    rf"\staff-line-count {lines}",
                    site="absolute_before",
                ),
                selection,
            )

    return change


def standard_clefs(score):
    voices = abjad.select.components(score["Staff Group"], abjad.Voice)
    for voice in voices:
        if (
            voice.name == "bassoon voice"
            or voice.name == "tuba voice"
            or voice.name == "piano 2 voice"
            or voice.name == "harp 2 voice"
            or voice.name == "percussion 1 voice"
            or voice.name == "cello voice"
            or voice.name == "contrabass voice"
        ):
            abjad.attach(abjad.Clef("bass"), voice[0])

        if voice.name == "viola voice":
            abjad.attach(abjad.Clef("altovarC"), voice[0])


def handle_clefs(selector=trinton.pleaves()):
    def clefs(argument):
        selections = selector(argument)
        for leaf in selections:
            with_previous_leaf = abjad.select.with_previous_leaf(leaf)
            previous_leaf = with_previous_leaf[0]

            if isinstance(leaf, abjad.Chord):
                head = leaf.note_heads[0]
            else:
                head = leaf

            if isinstance(previous_leaf, abjad.Chord):
                previous_head = previous_leaf.note_heads[0]
            else:
                previous_head = previous_leaf

            if head.written_pitch.number < -5:
                abjad.attach(abjad.Clef("bass"), leaf)
            else:
                abjad.attach(abjad.Clef("treble"), leaf)

            if (
                isinstance(previous_leaf, abjad.Rest)
                or isinstance(previous_leaf, abjad.Skip)
                or isinstance(previous_leaf, abjad.MultimeasureRest)
            ):
                pass

            elif (
                previous_head.written_pitch.number < -5
                and head.written_pitch.number < -5
            ):
                abjad.detach(abjad.Clef, leaf)

            elif (
                previous_head.written_pitch.number > -5
                and head.written_pitch.number > -5
            ):
                abjad.detach(abjad.Clef, leaf)

    return clefs


def piano_pedals(selector=trinton.pleaves(), counts=None, pitched=True):
    def pedals(argument):
        selections = selector(argument)
        logical_ties = abjad.select.logical_ties(selections, pitched=pitched)

        if counts is not None:
            groups = abjad.sequence.partition_by_counts(
                sequence=logical_ties,
                counts=counts,
                overhang=True,
            )

        else:
            groups = abjad.sequence.partition_by_counts(
                sequence=logical_ties,
                counts=[3 for _ in range(len(logical_ties))],
                overhang=True,
            )
        for group in groups:
            abjad.piano_pedal(group)

    return pedals


def flute_flageolets(selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        all_but_first = abjad.select.exclude(selections, [0])

        handler = evans.PitchHandler(["g''''", "a''''", "b''''", "a''''"])

        abjad.attach(
            abjad.LilyPondLiteral(r"\set fontSize = #-3", "before"), selections[0]
        )

        abjad.attach(abjad.Ottava(n=1), selections[0])

        abjad.slur(selections)

        for leaf in selections:
            abjad.attach(abjad.Articulation("flageolet"), leaf)

        for leaf in all_but_first:
            abjad.attach(
                abjad.LilyPondLiteral(r"\once \override Stem.stencil = ##f", "before"),
                leaf,
            )
            abjad.attach(
                abjad.LilyPondLiteral(r"\once \override Beam.stencil = ##f", "before"),
                leaf,
            )
            abjad.attach(
                abjad.LilyPondLiteral(r"\once \override Flag.stencil = ##f", "before"),
                leaf,
            )

        abjad.attach(abjad.LilyPondLiteral(r"\set fontSize = #-0.25", "after"), leaf)

        abjad.attach(abjad.Ottava(n=0, site="after"), selections[-1])

        abjad.beam(selections[0:2])

        handler(selections)

    return attach


def horn_monolith_attachments(selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        abjad.attach(abjad.LilyPondLiteral(r"\highest", "before"), selections[0])

        abjad.attach(
            abjad.LilyPondLiteral(r"\revert-noteheads", "after"), selections[-1]
        )

        for leaf in selections:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.no-ledgers = ##t", "before"
                ),
                leaf,
            )

    return attach


clef_whitespace = abjad.LilyPondLiteral(
    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
    "before",
)


def blank_measure_by_hand(score, voice_names, measures, clef_whitespace=False):
    for voice_name in voice_names:
        for measure in measures:
            trinton.make_music(
                lambda _: trinton.select_target(_, (measure,)),
                trinton.attachment_command(
                    attachments=[
                        abjad.LilyPondLiteral(
                            r"\stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff",
                            "before",
                        ),
                        abjad.LilyPondLiteral(
                            r"\once \override MultiMeasureRest.transparent = ##t",
                            "before",
                        ),
                        abjad.LilyPondLiteral(
                            r"\once \override Rest.transparent = ##t",
                            "before",
                        ),
                        abjad.LilyPondLiteral(r"\stopStaff \startStaff", "after"),
                    ],
                    selector=trinton.select_leaves_by_index([0]),
                    tag=abjad.Tag("+SCORE"),
                ),
                voice=score[voice_name],
            )

            if clef_whitespace is True:
                clef_whitespace = abjad.LilyPondLiteral(
                    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
                    "before",
                )
                selection = trinton.select_target(score[voice_name], (measure,))
                relevant_leaf = selection[0]
                next_leaf = abjad.select.with_next_leaf(relevant_leaf)[-1]
                if abjad.get.has_indicator(next_leaf, abjad.Clef):
                    abjad.attach(clef_whitespace, next_leaf)
