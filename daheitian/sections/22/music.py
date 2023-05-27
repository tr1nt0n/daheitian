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

score = library.daheitian_score(ts.section_22_ts)

# commands

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [-1, 37],
            16,
            extra_counts=[
                2,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
            ],
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(
        [
            "aqf",
            "df'",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(1, 8),
            ],
            nested=True,
        )
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1., MST",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5, 5, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                7,
                8,
                8,
                4,
                4,
                4,
            ],
            16,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(
        [
            "aqf",
            "af",
            "a",
            "a",
            "a",
            "a",
            "a",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(1, 5),
                range(4, 7),
            ],
            nested=True,
        )
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(6, 12),
            ],
            nested=True,
        ),
        no_ties=True,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1., MST",
        ),
        full_string=True,
        padding=4,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 4, 4, -1], pitched=True, first=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 2 voice"],
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (6, 1),
                (2, 1),
                (1, 1, 1),
            ],
        ),
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(
        [
            "gqs",
            "g",
            "g",
            "aqf",
            "aqf",
            "aqf",
            "aqf",
            "aqf",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(2, 5),
                range(4, 9),
            ],
            nested=True,
        )
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1., MST",
        ),
        full_string=True,
        padding=10,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.Glissando(),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Tie(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 0, 1, 4, 4, -1], pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 6, 5, 6)),
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                6,
                1,
                1,
                1,
            ],
            4,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(
        [
            "af",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 5)], nested=True)
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1., MST",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 1, -1]),
    ),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1)]),
    ),
    library.aftergrace(
        selector=trinton.select_leaves_by_index(
            [
                -1,
            ]
        )
    ),
    evans.PitchHandler(["af'"]),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.pleaves(
            exclude=[
                1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.Glissando(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, 2, -1]),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="Steg",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 1, 1, 2, 2, -1],
        ),
        style="solid-line-with-arrow",
        padding=7.5,
        full_string=True,
        right_padding=-1,
        end_hook=True,
        end_hook_style="solid-line-with-hook",
    ),
    trinton.notehead_bracket_command(),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
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
                met_string=library.metronome_marks["96"],
                mod_string=library.metronome_marks["4:3(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/22",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="22",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
