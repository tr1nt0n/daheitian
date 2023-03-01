import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms

# score

score = library.daheitian_score([(9, 4), (9, 4), (9, 4), (9, 4)])

for measure, string in zip(
    [1, 2, 3, 4],
    [
        "Stage 1",
        "Stage 2",
        "Stage 3",
        "Stage 4",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.Markup(rf"\markup \fontsize #8 {{ {string} }}")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(), 16)),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="Solo, 1/3 Luftklang",
        padding=6.5,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(12), 16)),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.hooked_spanner_command(
        string="1/3 Luftklang",
        padding=5.5,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(5), 16)),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.spanner_command(
        strings=["1/3 Luftklang", "Norm."],
        selector=trinton.select_leaves_by_index([0, 14]),
        padding=5.5,
    ),
    voice=score["oboe voice"],
)

# clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(12), 16)),
    evans.PitchHandler([12]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.hooked_spanner_command(
        string="1/3 Luftklang",
        padding=5.5,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(5), 16, extra_counts=[4])),
    evans.PitchHandler([12]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.notehead_bracket_command(),
    trinton.spanner_command(
        strings=["1/3 Luftklang", "Norm."],
        selector=trinton.select_leaves_by_index([0, 23]),
        padding=5.5,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(12), 16)),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.hooked_spanner_command(
        string="1/3 Luftklang",
        padding=5.5,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(12), 16)),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.spanner_command(
        strings=["1/3 Luftklang", "Norm."],
        selector=trinton.select_leaves_by_index([0, 13]),
        padding=5.5,
    ),
    voice=score["bassoon voice"],
)


# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["ef"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["frenchhorn voice"],
)

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea(
            [
                9,
            ],
            8,
        )
    ),
    evans.PitchHandler([-24]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    library.aftergrace(notes_string="c,16", cons=(10, 11)),
    library.trombone_blast_attachments(),
    voice=score["tenortrombone voice"],
)

# tuba music commands

for voice_name, pitch in zip(
    [
        "tuba voice",
        "contrabass voice",
    ],
    [
        "gs,,",
        "gs,",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 4)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler([pitch]),
        trinton.attachment_command(
            attachments=[abjad.Clef("bass")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            2,
        ),
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Tanggu"),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.even_division(
            [
                2,
            ]
        ),
    ),
    evans.PitchHandler([-1, 2]),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Gongs der chinesisch Oper"),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
)

# violins 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    evans.PitchHandler(
        [
            11,
        ]
    ),
    library.left_beam(selector=trinton.select_tuplets_by_index([-1])),
    library.right_beam(selector=trinton.select_tuplets_by_index([0])),
    trinton.hooked_spanner_command(
        string="Pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=7,
        right_padding=3,
    ),
    trinton.spanner_command(
        strings=[
            "ST",
            "SP",
            "ST",
            "MSP",
        ],
        selector=trinton.select_leaves_by_index([0, 13, 13, 24, 24, -1]),
        style="dashed-line-with-arrow",
        padding=4.5,
        command="One",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 13, 13, -1]),
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((9,)),
)

# violins 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    evans.PitchHandler(
        [
            10.5,
        ]
    ),
    library.left_beam(selector=trinton.select_tuplets_by_index([-1])),
    library.right_beam(selector=trinton.select_tuplets_by_index([0])),
    trinton.hooked_spanner_command(
        string="Pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=7,
        right_padding=3,
    ),
    trinton.spanner_command(
        strings=[
            "ST",
            "SP",
            "ST",
            "MSP",
        ],
        selector=trinton.select_leaves_by_index([0, 13, 13, 24, 24, -1]),
        style="dashed-line-with-arrow",
        padding=4.5,
        command="One",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 13, 13, -1]),
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((9,)),
)

# violas music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    evans.PitchHandler(
        [
            9.5,
        ]
    ),
    library.left_beam(selector=trinton.select_tuplets_by_index([-1])),
    library.right_beam(selector=trinton.select_tuplets_by_index([0])),
    trinton.hooked_spanner_command(
        string="Pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8,
        right_padding=3,
    ),
    trinton.spanner_command(
        strings=[
            "ST",
            "SP",
            "ST",
            "MSP",
        ],
        selector=trinton.select_leaves_by_index([0, 13, 13, 24, 24, -1]),
        style="dashed-line-with-arrow",
        padding=5.5,
        command="One",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 13, 13, -1]),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((9,)),
)

# cellos music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 32)],
            [(1, 20), (1, 8), (1, 32)],
        )
    ),
    evans.PitchHandler(
        [
            -2,
        ]
    ),
    library.left_beam(selector=trinton.select_tuplets_by_index([-1])),
    library.right_beam(selector=trinton.select_tuplets_by_index([0])),
    trinton.hooked_spanner_command(
        string="Pizz.",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=8,
        right_padding=3,
    ),
    trinton.spanner_command(
        strings=[
            "ST",
            "SP",
            "ST",
            "MSP",
        ],
        selector=trinton.select_leaves_by_index([0, 13, 13, 24, 24, -1]),
        style="dashed-line-with-arrow",
        padding=5.5,
        command="One",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 13, 13, -1]),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((9,)),
)

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 80),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
# )

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
