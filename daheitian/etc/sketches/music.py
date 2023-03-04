import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms
from itertools import cycle

# score

score = library.daheitian_score([(4, 4), (15, 4)])

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"\markup \fontsize #8 { sectional incisions can be made between any two points }"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -7,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
            ],
            8,
        ),
    ),
    evans.PitchHandler(["bf,,,"]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.ottava_command(
        octave=-2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0, -3], pitched=True),
    ),
    voice=score["piano 2 voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["c"]),
    library.aftergrace(
        notes_string="aqs,16",
        cons=(12, 13),
    ),
    library.aftergrace_attachments(),
    trinton.tremolo_command(
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([2, 5, 8, 10, 10], 8)),
    evans.PitchHandler(["aqs,", "gs", "e'", "e'", "e'"]),
    library.aftergrace(
        notes_string="b16", cons=(10, 11), selector=trinton.select_leaves_by_index([0])
    ),
    library.aftergrace(
        notes_string="e'16",
        cons=(10, 11),
        selector=trinton.select_leaves_by_index([1, 3, 4, 6]),
    ),
    library.aftergrace_attachments(
        notehead_change="highest",
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([3, 4, 6])
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            evans.make_fancy_gliss(
                1,
                1,
                2,
                1,
                2,
                1,
                1,
            ),
            evans.make_fancy_gliss(
                2,
                3,
                1,
                1,
                1,
                2,
                1,
            ),
        ],
        selector=trinton.select_leaves_by_index([3, 4, 6]),
    ),
    trinton.tremolo_command(
        selector=trinton.pleaves(),
    ),
    voice=score["percussion 1 voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -7,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
                2,
            ],
            8,
        ),
    ),
    evans.PitchHandler(
        [[-1, 2]],
    ),
    library.change_lines(
        lines=2, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.boxed_markup(
        string="Bangu + Tanggu",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0, -3], pitched=True),
    ),
    voice=score["percussion 2 voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["a,"]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea([14, 1], 4),
    ),
    evans.PitchHandler(["b,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["contrabass voice"],
)

# celli music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 2, 3, 1, 1, 1, 1, 4, 5, 1, 1, 1, 1, 1, 6, 7],
            16,
            extra_counts=[
                0,
                2,
                0,
                4,
                2,
                0,
            ],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "g''",
            "d''",
            "e''",
            "bf'",
            "cs''",
            "fs'",
            "g'",
            "a'",
            "e'",
            "fs'",
            "cs'",
            "d'",
            "as",
            "e",
            "f",
            "cs",
            "e",
            "cs",
        ]
    ),
    library.unpitched_glissandi(articulation=">", trill=True),
    trinton.arrow_spanner_command(
        l_string="MSP",
        r_string="Ord.",
        padding=13,
        selector=trinton.select_leaves_by_index([0, 10], pitched=True),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 10], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    trinton.beam_groups(),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            17,
            4,
            4,
            4,
        )
    ),
)

# violas music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 2, 3, 1, 1, 1, 1, 4, 5, 1, 1, 1, 1, 1, 6, 7],
            16,
            extra_counts=[
                0,
                2,
                0,
                4,
                2,
                0,
            ],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(["b''", "d''", "g''", "g'", "a'", "c'", "d'", "b'", "bf''"]),
    library.unpitched_glissandi(articulation=">", trill=True),
    trinton.arrow_spanner_command(
        l_string="MSP",
        r_string="Ord.",
        padding=16.5,
        selector=trinton.select_leaves_by_index([0, 5], pitched=True),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    trinton.beam_groups(),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            22,
            4,
            4,
        )
    ),
)

# violins 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 2, 3, 1, 1, 1, 1, 4, 5, 1, 1, 1, 1, 1, 6, 7],
            16,
            extra_counts=[
                0,
                2,
                0,
                4,
                2,
                0,
            ],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "fs'''",
            "c''''",
            "bf''",
            "gs'''",
            "ef'''",
            "gs'''",
            "ef'''",
        ]
    ),
    library.unpitched_glissandi(articulation=">", trill=True),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.arrow_spanner_command(
        l_string="MSP",
        r_string="Ord.",
        padding=11.5,
        selector=trinton.select_leaves_by_index([0, 20], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 20], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    trinton.beam_groups(),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            9,
            4,
            4,
            4,
            4,
        )
    ),
)

# violins 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [1, 1, 1, 2, 3, 1, 1, 1, 1, 4, 5, 1, 1, 1, 1, 1, 6, 7],
            16,
            extra_counts=[
                0,
                2,
                0,
                4,
                2,
                0,
            ],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "cs''''",
            "a'''",
        ]
    ),
    library.unpitched_glissandi(articulation=">", trill=True),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.arrow_spanner_command(
        l_string="MSP",
        r_string="Ord.",
        padding=11.5,
        selector=trinton.select_leaves_by_index([0, 19], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 19], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    trinton.beam_groups(),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            7,
            8,
            10,
            5,
        )
    ),
)

# woodwind music commands

for voice_name, pitch in zip(
    [
        "bassoon voice",
        "bassclarinet voice",
        "oboe voice",
    ],
    [
        "g,",
        "bf'",
        "b",
    ],
):

    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(evans.talea([-25, 5], 8)),
        evans.PitchHandler([pitch]),
        library.aftergrace(
            notes_string=f"{pitch}16",
            cons=(12, 13),
        ),
        library.aftergrace_attachments(),
        trinton.linear_attachment_command(
            attachments=[
                evans.make_fancy_gliss(
                    1,
                    1,
                    1,
                    2,
                    1,
                    1,
                    1,
                    1,
                    2,
                    1,
                    1,
                    1,
                ),
            ],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("fff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index(
                [0, 0, -1],
                pitched=True,
            ),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["bassoon voice"],
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
