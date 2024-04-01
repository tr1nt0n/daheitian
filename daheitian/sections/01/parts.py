import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms
from daheitian import ts

# score

score = library.daheitian_score(ts.section_1_ts)

library.standard_clefs(score)

# commands

# tutti zip

for voice_name, pitch in zip(
    [
        "bassclarinet voice",
        "bassoon voice",
        "frenchhorn voice",
        "trumpet voice",
        "percussion 1 voice",
        "violin 1 voice",
        "violin 2 voice",
        "viola voice",
        "cello voice",
        "contrabass voice",
    ],
    [
        ["ds'''", "b'''"],
        ["a", "cs'"],
        ["e''", "e'"],
        ["a'", "a''"],
        ["a,"],
        ["a", "e'", "cs''", "a''"],
        ["a", "e'", "cs''", "a''"],
        ["a", "e'", "a'"],
        ["a,"],
        ["a,"],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(evans.talea([1, -1], 4)),
        evans.PitchHandler([pitch]),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("f"), abjad.Articulation("staccato")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

for voice_name in [
    "flute voice",
    "oboe voice",
    "bassoon voice",
    "trumpet voice",
    "tenortrombone voice",
    "tuba voice",
    "piano 1 voice",
    "piano 2 voice",
    "harp 1 voice",
    "harp 2 voice",
    "percussion 1 voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "contrabass voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.KeySignature(abjad.NamedPitchClass("a"), abjad.Mode("major")),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        trinton.attachment_command(
            attachments=[
                abjad.KeySignature(abjad.NamedPitchClass("c"), abjad.Mode("major")),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.even_division([4, 16, 64], treat_tuplets=False)),
    trinton.force_rest(trinton.select_tuplets_by_index([1])),
    trinton.treat_tuplets(),
    evans.PitchHandler([["cs'''", "a'''"]]),
    library.flute_flageolets(
        selector=trinton.ranged_selector(ranges=[range(2, 38)]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.Articulation("staccato"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, -1], pitched=True),
    ),
    library.a2_whistletone(selector=trinton.select_leaves_by_index([1], pitched=True)),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((4, 3, 17)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("c"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["flute voice"],
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([1, -3], 4)),
    evans.PitchHandler(["cs''"]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.Articulation("staccato")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([3, -1], 4)),
        direction=abjad.UP,
        voice_name="oboe divisi voice",
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(["a''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
            abjad.KeySignature(abjad.NamedPitchClass("c"), abjad.Mode("major")),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, -1]),
        direction=abjad.UP,
    ),
    voice=score["oboe divisi voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("b"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.boxed_markup(string="( Höchste Tonhöhe darf instabil sein )"),
    voice=score["bassclarinet voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.notation_markup(
                [abjad.TimeSignature((2, 4))],
                evans.RhythmHandler(evans.talea([1, -1], 4)),
                evans.PitchHandler(["cs''"]),
                trinton.attachment_command(
                    attachments=[
                        abjad.Articulation("staccato"),
                        abjad.Dynamic("f"),
                        abjad.KeySignature(
                            abjad.NamedPitchClass("a"), abjad.Mode("major")
                        ),
                        abjad.InstrumentName(
                            context="Staff",
                            markup=abjad.Markup(
                                '\markup \\fontsize #1 \override #\'(font-name . "Bodoni72 Book Italic") { \center-column { \line { "Wenn keine erste Bassklarinette," } \line { "1. Soli während der Tutti" } \line { "der übrigen Fagotte:" } } }'
                            ),
                        ),
                    ],
                    selector=trinton.select_leaves_by_index([0], pitched=True),
                ),
                trinton.attachment_command(
                    attachments=[
                        abjad.Markup(r"""\markup { \hspace #-10 { "( Takt 1 )" } }""")
                    ],
                    selector=trinton.select_leaves_by_index([0], pitched=True),
                    direction=abjad.UP,
                ),
                library.boxed_markup(string="( Tonhöhe sollte instabil sein )"),
                tweaks=[
                    r"- \tweak font-size 0.01",
                    r"- \tweak X-extent ##f",
                    r"- \tweak layer 20",
                    r"- \tweak whiteout-style #'outline",
                    r"- \tweak whiteout 3",
                ],
                preprocessor=None,
                beam_meter=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["bassoon voice"],
)

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("e"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["frenchhorn voice"],
)

# percussion music commands

for voice_name in ["percussion 2 voice", "percussion 3 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        library.change_lines(
            lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
        ),
        voice=score[voice_name],
    )

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"], padding=-2
            ),
            library.parts_movements[0],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    voice_names=[_ for _ in library.all_voice_names if _ != "oboe voice"],
    cutaway="blank",
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="violin1",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
