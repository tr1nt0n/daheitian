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
            abjad.ClarinetInEFlat(),
            abjad.Bassoon(),
            abjad.FrenchHorn(),
            abjad.Trumpet(),
            abjad.TenorTrombone(),
            abjad.Tuba(),
            abjad.Piano(),
            abjad.Piano(),
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
            1,
            1,
            2,
            5,
        ],
        inner_staff=[
            "SquareBracketGroup",
            "SquareBracketGroup",
            "SquareBracketGroup",
            "PianoStaff",
            "SquareBracketGroup",
            "SquareBracketGroup",
            "SquareBracketGroup",
            "SquareBracketGroup",
        ],
        time_signatures=time_signatures,
        filler=abjad.Rest,
    )

    return score


# immutables

all_voice_names = eval(
    """[
        "flute voice",
        "oboe voice",
        "clarinetineflat voice",
        "bassoon voice",
        "frenchhorn voice",
        "trumpet voice",
        "tenortrombone voice",
        "tuba voice",
        "piano 1 voice",
        "piano 2 voice",
        "harp voice",
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
        "clarinetineflat voice",
        "bassoon voice",
        "frenchhorn voice",
        "trumpet voice",
        "tenortrombone voice",
        "tuba voice",
        "piano 1 voice",
        "harp voice",
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
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Klarinette in Es }'
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
        context="PianoStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Klavier }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
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
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Violinen 1 }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Violinen 2 }'
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
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { kl. }'
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
        context="PianoStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { klav. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
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
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vl. 1 }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { vl. 2 }'
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
            evans.tuplet([(1,), (2, 3)])
        ),
        evans.PitchHandler([["c'", "df'"]]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1])
        ),
        trinton.notehead_bracket_command(),
        library.boxed_markup(
            string="Röhrenglocken"
        ),
        library.change_lines(
            lines=5,
        ),
        voice=score["percussion 2 voice"],
        preprocessor=trinton.fuse_quarters_preprocessor((2, 6))
    )

    # flutes

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.even_division([64])
        ),
        library.flute_flageolets(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("pp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1])
        ),
        voice=score["flute voice"],
    )

    # horns

    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (3, 1, 1, 2, 1,),
                    (7, 1, -12),
                ]
            )
        ),
        evans.PitchHandler([24]),
        trinton.notehead_bracket_command(),
        library.horn_monolith_attachments(),
        trinton.attachment_command(
            attachments=[abjad.Articulation(">"),
            abjad.Articulation("staccato"),],
            selector=trinton.select_leaves_by_index([2, 4, -1], pitched=True)
        ),
        trinton.hooked_spanner_command(
            string="Flatterhafte Ventile",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2
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
                abjad.Dynamic("fff")
            ],
            selector=trinton.select_leaves_by_index(
                [0, 0, 1, 2, 3, 3, 4, 5, -1], pitched=True
            ),
        ),
        trinton.tremolo_command(selector=trinton.pleaves()),
        voice=score["frenchhorn voice"],
        preprocessor=trinton.fuse_quarters_preprocessor((2, 6)),
        beam_meter=True
    )

# pitch tools


def pitch_harp_arpeggi(chord_slice=0, selector=trinton.pleaves()):
    def pitch(argument):
        selections = selector(argument)
        pitch_list = []
        chords = transforms.harp_arpeggi[chord_slice:]
        for chord in chords:
            for pitch in chord:
                pitch_list.append(pitch)

        handler = evans.PitchHandler(pitch_list=pitch_list)
        handler(selections)

    return pitch


# rhythm tools


def flute_graces(mod=3):
    def graces(argument):
        pleaves = abjad.select.leaves(argument, pitched=True)

        handler = evans.GraceHandler(
            boolean_vector=[1],
            gesture_lengths=[
                1,
            ],
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


# notation tools

def boxed_markup(string, selector=trinton.select_leaves_by_index([0], pitched=True)):
    literal = abjad.LilyPondLiteral(rf'\boxed-markup "{string}" 1', "after")
    command = trinton.attachment_command(
        attachments=[literal],
        selector=selector,
    )
    return command


def fermata_measures(score, measures, fermata="ufermata"):
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


def harp_clefs(selector=trinton.pleaves()):
    def clefs(argument):
        selections = selector(argument)
        for leaf in selections:
            with_previous_leaf = abjad.select.with_previous_leaf(leaf)
            previous_leaf = with_previous_leaf[0]
            if leaf.written_pitch.number < -5:
                abjad.attach(abjad.Clef("bass"), leaf)
            else:
                abjad.attach(abjad.Clef("treble"), leaf)

            if isinstance(previous_leaf, abjad.Rest) or isinstance(
                previous_leaf, abjad.Skip
            ):
                pass

            elif (
                previous_leaf.written_pitch.number < -5
                and leaf.written_pitch.number < -5
            ):
                abjad.detach(abjad.Clef, leaf)

            elif (
                previous_leaf.written_pitch.number > -5
                and leaf.written_pitch.number > -5
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

def flute_flageolets(overblow=False, selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        all_but_first = abjad.select.exclude(selections, [0])

        handler = evans.PitchHandler(["g''''", "a''''", "b''''", "a''''"])

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\set fontSize = #-3",
                "before"
            ),
            selections[0]
        )

        abjad.attach(
            abjad.Ottava(n=1),
            selections[0]
        )

        abjad.slur(selections)

        for leaf in selections:
            abjad.attach(
                abjad.Articulation("flageolet"),
                leaf
            )

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

        abjad.attach(
            abjad.LilyPondLiteral(
                r"\set fontSize = #-0.25",
                "after"
            ),
            leaf
        )

        abjad.attach(
            abjad.Ottava(n=0, site="after"),
            selections[-1]
        )

        abjad.beam(selections[0:2])

        handler(selections)

    return attach

def horn_monolith_attachments(selector=trinton.pleaves()):
    def attach(argument):
        selections = selector(argument)

        abjad.attach(
            abjad.LilyPondLiteral(r"\highest", "before"),
            selections[0]
        )

        abjad.attach(
            abjad.LilyPondLiteral(r"\revert-noteheads", "after"),
            selections[-1]
        )

        for leaf in selections:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override NoteHead.no-ledgers = ##t", "before"
                ),
                leaf
            )

    return attach
