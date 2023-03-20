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
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                14,
                15,
                16,
                17,
                18,
                19,
                21,
                22,
                23,
                24,
                25,
                26,
            ],
            28,
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
    "c''": abjad.Markup(
        r"\markup \override #'(size . .6) { \woodwind-diagram #'oboe #'((cc . (one three four six)) (lh . ()) (rh . ())) }",
    ),
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
                    (7, 1, -12),
                ]
            )
        ),
        evans.PitchHandler([["c'", "df'"]]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        trinton.notehead_bracket_command(),
        library.boxed_markup(string="Röhrenglocken"),
        library.change_lines(
            lines=5,
        ),
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
                    (7, 1, -12),
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
            string="Flatterventile",
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
                abjad.Dynamic("sf"),
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


# rhythm tools


def fuse_contiguous(selector=trinton.pleaves()):
    def fuse(argument):
        selections = selector(argument)
        contiguous = abjad.select.group_by_contiguity(selections)
        for group in contiguous:
            abjad.mutate.fuse(group)

    return fuse


def flute_graces(mod=3):
    def graces(argument):
        pleaves = abjad.select.leaves(argument, pitched=True)

        handler = evans.GraceHandler(
            boolean_vector=[1],
            gesture_lengths=[
                1,
            ],
            remove_skips=True,
            forget=False,
        )

        relevant_leaves = []

        for leaf in pleaves:
            if leaf.written_pitch.number == 15 or leaf.written_pitch.number == 19:
                relevant_leaves.append(leaf)

        for leaf in relevant_leaves:
            if relevant_leaves.index(leaf) % mod == 0:
                handler(leaf)

    return graces


def oboe_talea(index=0):
    return trinton.rotated_sequence(oboe_chant_talea, index)


def moths_talea(index=0):
    return trinton.rotated_sequence(moth_talea, index)


# notation tools


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

        exclude_first_and_last = abjad.select.exclude(selections, [0, -1])

        for leaf in exclude_first_and_last:
            abjad.attach(accidental_literal, leaf)

            abjad.attach(dots_literal, leaf)

            abjad.attach(notehead_literal, leaf)

        ties = abjad.select.logical_ties(selections)

        exclude_last_tie = abjad.select.exclude(ties, [-1])

        for tie in exclude_last_tie:
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
            start_trill_span = abjad.StartTrillSpan(interval=abjad.NamedInterval("m2"))
            stop_trill_span = abjad.StopTrillSpan()
            abjad.attach(start_trill_span, selections[0])
            abjad.attach(stop_trill_span, selections[-1])

    return gliss


def aftergrace(notes_string, cons=(15, 16), selector=trinton.pleaves()):
    def grace(argument):
        selections = selector(argument)

        ties = abjad.select.logical_ties(selections)

        string = f"#(define afterGraceFraction (cons {cons[0]} {cons[-1]}))"

        literal = abjad.LilyPondLiteral(string)

        abjad.attach(literal, selections[0])

        containers = [abjad.AfterGraceContainer(notes_string) for _ in ties]

        for container in containers:
            literal = abjad.LilyPondLiteral(
                r'\once \override Flag.stroke-style = #"grace"'
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
            ) > abjad.Duration(1, 16):
                abjad.detach(abjad.Tie, leaf)
                abjad.attach(abjad.RepeatTie(), abjad.select.with_next_leaf(leaf)[-1])


def timbre_trills(selector=trinton.pleaves(), index=0):
    def trill(argument):
        selections = selector(argument)

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

        for leaf, trill in zip(selections, trill_sequence):
            abjad.attach(
                abjad.Markup(rf"\markup \center-column {{ \circle {trill} }}"),
                leaf,
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
    voice,
    measures,
    pitch,
    indices,
    period,
    name="Imbrication",
    dynamic=None,
    secondary_dynamic=None,
):
    for measure in measures:
        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.pitch_with_selector_command(
                pitch_list=[
                    pitch,
                ],
                selector=trinton.patterned_tie_index_selector(
                    indices, period, pitched=True
                ),
            ),
            voice=voice,
        )

        leaves = abjad.select.group_by_measure(voice)
        leaves = leaves[measure - 1]
        leaves = abjad.select.leaves(leaves, pitched=True)

        relevant_leaves = []

        for leaf in leaves:
            if leaf.written_pitch.number == pitch:
                relevant_leaves.append(leaf)

        trinton.make_music(
            lambda _: trinton.select_target(_, (measure,)),
            trinton.call_imbrication(
                pitches=[pitch for _ in list(range(len(relevant_leaves)))],
                name=name,
                articulation=">",
            ),
            voice=voice,
        )

        if dynamic is not None:
            for leaf in relevant_leaves:
                abjad.detach(abjad.Articulation, leaf)
                abjad.detach(abjad.Markup, leaf)
                abjad.attach(abjad.Dynamic(dynamic), leaf)

        if secondary_dynamic is not None:
            for leaf in relevant_leaves:
                next_leaf = abjad.select.with_next_leaf(
                    leaf,
                )[-1]
                if (
                    isinstance(next_leaf, abjad.Note)
                    and abjad.get.has_indicator(next_leaf, abjad.Dynamic) is False
                ):
                    abjad.attach(abjad.Dynamic(secondary_dynamic), next_leaf)


def remove_accidentals(voice, measure_range):
    selections = trinton.select_target(voice, measure_range)

    for leaf in abjad.select.leaves(selections, pitched=True):
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\once \override Staff.Accidental.stencil = ##f", "before"
            ),
            leaf,
        )


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


def boxed_markup(string, selector=trinton.select_leaves_by_index([0], pitched=True)):
    literal = abjad.LilyPondLiteral(rf'\boxed-markup "{string}" 1', "after")
    command = trinton.attachment_command(
        attachments=[literal],
        selector=selector,
    )
    return command


def fermata_measures(score, measures, fermata="ufermata"):

    for voice in abjad.iterate.components(score["Staff Group"], abjad.Staff):
        all_measures = abjad.select.group_by_measure(voice)

        clef_whitespace = abjad.LilyPondLiteral(
            r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
            "absolute_after",
        )

        for measure in measures:
            relevant_leaf = all_measures[measure - 1][0]
            next_leaf = abjad.select.with_next_leaf(relevant_leaf)[-1]
            mm_rest = abjad.MultimeasureRest(1, multiplier=(1, 8))
            transparent_literal = abjad.LilyPondLiteral(
                r"\once \override MultiMeasureRest.transparent = ##t",
                "before",
            )
            abjad.attach(transparent_literal, mm_rest)
            if abjad.get.has_indicator(next_leaf, abjad.Clef):
                abjad.attach(clef_whitespace, mm_rest)
            abjad.mutate.replace(relevant_leaf, mm_rest)

    trinton.attach_multiple(
        score=score,
        voice="Global Context",
        leaves=[_ - 1 for _ in measures],
        attachments=[
            abjad.Markup(
                rf'\markup \fontsize #5 \center-column {{ \musicglyph "scripts.{fermata}" }} '
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f",
                "before",
            ),
        ],
        direction=abjad.UP,
    )


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


def piano_pedals(selector=trinton.pleaves()):
    def pedals(argument):
        selections = selector(argument)
        logical_ties = abjad.select.logical_ties(selections, pitched=True)

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
