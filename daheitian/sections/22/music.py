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
    trinton.continuous_glissando(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MST",
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
        selector=trinton.select_leaves_by_index([0, 0, 4, 4, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["guitar 1 voice"],
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
            "gs",
            "a",
            "a",
            "a",
            "a",
            "a",
        ]
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MST",
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
            [0, 0, 3, 3, -1], pitched=True, first=True
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(exclude=[-4, -3, -2, -1])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(4, 9)], nested=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["guitar 2 voice"],
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
    trinton.respell_tuplets_command(rewrite_brackets=False),
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
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MST",
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
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Tie(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 1, 4, 4, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(exclude=[-1, -2, -3, -4])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(4, 9)], nested=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["guitar 3 voice"],
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
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MST",
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
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 5)], nested=True)
    ),
    voice=score["guitar 4 voice"],
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
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, -1]),
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
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 4)], nested=True)
    ),
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

# cues

for voice_name in [
    "flute voice",
    "harp 1 voice",
    "piano 1 voice",
    "percussion 1 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\override Staff.MultiMeasureRest.transparent = ##t", site="before"
                ),
                abjad.LilyPondLiteral(
                    r"\revert Staff.MultiMeasureRest.transparent", site="absolute_after"
                ),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
            tag=abjad.Tag("+PARTS"),
        ),
        trinton.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(
                evans.talea(
                    [-100],
                    4,
                )
            ),
            direction=abjad.DOWN,
            voice_name=f"{voice_name} cue",
            from_components=False,
            temp_name="secondary",
            preprocessor=None,
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        library.einsatz(
            following_text="Ab hier bis Takt 166 nur Streicher",
            selector=abjad.select.leaves,
            direction=abjad.UP,
            tweaks=None,
            padding=0,
            termination=False,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        "flute voice secondary",
        "piano 1 voice secondary",
        "harp 1 voice secondary",
        "percussion 1 voice secondary",
    ],
)

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
