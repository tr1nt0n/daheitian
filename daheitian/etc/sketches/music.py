import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library

# score

score = library.daheitian_score(
    [
        (1, 8),
        (4, 4),
        (4, 4),
        (4, 4),
        (7, 4),
    ]
)

library.fermata_measures(
    score=score,
    measures=[
        1,
    ],
)

# commands

for measure, string in zip(
    [
        1,
        2,
        3,
        4,
        5,
        5,
    ],
    [
        r"\markup \fontsize #4 { Stage 1 }",
        r"\markup \fontsize #4 { Stage 2 ( incredibly long, soli emerge from bridge via SCP ) }",
        r"\markup \fontsize #4 { Stage 3 ( incredibly long, though less than Stage 2 ) }",
        r"\markup \fontsize #4 { Stage 4 ( long ) }",
        r"\markup \fontsize #4 { ( time-space notation in actual score, not homorhythmic ) }",
        r"\markup \fontsize #4 { Stage 5 ( final, ends with each voice dropping out one by one as it is replaced with something else ) }",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.Markup(string)],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

# stage 1

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "contrabass voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(rmakers.note),
        trinton.noteheads_only(),
        library.change_lines(
            lines=1,
            clef="percussion",
        ),
        trinton.attachment_command(
            attachments=[abjad.Markup(r"\markup { Steg }")],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score[voice_name],
    )

# stage 2

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [3, 3, 2],
            8,
        ),
    ),
    evans.PitchHandler([-4, -3.5, -4]),
    library.change_lines(
        lines=5,
        clef="altovarC",
    ),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.pleaves(exclude=[-1])
    ),
    trinton.noteheads_only(),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-4]),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup { Solo }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.noteheads_only(),
    voice=score["cello voice"],
)

for voice_name in ["violin 1 voice", "violin 2 voice", "contrabass voice"]:

    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(rmakers.note),
        trinton.attachment_command(
            attachments=[abjad.Markup(r"\markup { Steg }")],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        trinton.noteheads_only(),
        voice=score[voice_name],
    )

# stage 3

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rmakers.note),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup { Steg }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.noteheads_only(),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.talea(
            [-4, 3, 1],
            8,
        ),
    ),
    evans.PitchHandler(
        [
            -4.5,
            -3.5,
        ]
    ),
    library.change_lines(lines=5),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.noteheads_only(),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                5,
            ],
            8,
        ),
    ),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            -4,
            -4.5,
        ]
    ),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-4]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup { Solo }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.noteheads_only(),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    evans.PitchHandler([8]),
    library.change_lines(
        lines=5,
        clef="treble",
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string="Steg",
        selector=trinton.select_leaves_by_index([0, 1]),
        padding=5,
        right_padding=-1,
    ),
    trinton.arrow_spanner_command(
        l_string="",
        r_string="molto pont.",
        selector=trinton.select_leaves_by_index([1, 2]),
        padding=4.5,
    ),
    library.invisible_tuplet_brackets(),
    trinton.noteheads_only(),
    voice=score["contrabass voice"],
)

# stage 4

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.talea(
            [3, 1],
            4,
        ),
    ),
    evans.PitchHandler([-3.5, "df'"]),
    library.change_lines(lines=5),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.talea(
            [3, 3, 2],
            8,
        ),
    ),
    evans.PitchHandler(
        [
            -3.5,
            -4,
            -3,
        ]
    ),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.pleaves(exclude=[-1])
    ),
    trinton.noteheads_only(),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.talea(
            [3, 3, 2],
            8,
        ),
    ),
    evans.PitchHandler([-4.5, -7, -12]),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.pleaves(exclude=[-1])
    ),
    trinton.noteheads_only(),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([-4]),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup { Solo }")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.noteheads_only(),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1)])),
    evans.PitchHandler([8]),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.continuous_spanner_command(
        strings=["molto pont.", "Steg", "Steg"],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
                2,
            ]
        ),
        style="dashed-line-with-arrow",
        padding=5,
        end_hook=True,
    ),
    trinton.noteheads_only(),
    library.invisible_tuplet_brackets(),
    voice=score["contrabass voice"],
)

# stage 5

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                -1,
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
        [
            "df'",
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=17,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=17,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=12,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=26,
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
                scale_degree=3,
            ),
        ]
    ),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([2], pitched=True),
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                -1,
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
        [
            -3,
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=10,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=10,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=10,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=22,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=4,
                scale_degree=14,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=11,
            ),
        ]
    ),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([2], pitched=True),
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                -1,
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
        [
            -12,
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=5,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=6,
                scale_degree=10,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=4,
                scale_degree=8,
            ),
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=8,
            ),
        ]
    ),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([2], pitched=True),
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                -1,
                2,
                2,
                2,
                2,
                2,
            ],
            8,
        ),
    ),
    evans.PitchHandler(library._bloom_pitches["cello voice"][5]),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=5,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([2], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando()], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea([2, 1, -1, 10], 8),
    ),
    evans.PitchHandler([8, 8, "af,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Articulation(">")],
        selector=trinton.select_leaves_by_index([2], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.arrow_spanner_command(
        l_string="Steg",
        r_string="molto pont.",
        selector=trinton.select_leaves_by_index([0, 1]),
        padding=5,
    ),
    trinton.noteheads_only(),
    voice=score["contrabass voice"],
)

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 8), 20),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
# )

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

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
