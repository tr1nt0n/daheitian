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

score = library.daheitian_score(ts.section_28_ts)

# commands

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([12, 4, 4, 4, 2, 7, 1, 2], 16)),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="af'",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
            14,
            14,
            14,
            14,
            14,
            14,
            5,
        ]
    ),
    library.change_lines(
        lines=4,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([-1], first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    library.return_boxed_markup(
                        string="DP, Kratzen",
                    ),
                ),
                r"- \tweak padding #5.5",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-1],
            first=True,
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -3,
                -2,
                -1,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -2], first=True),
        right_padding=2,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 9)], nested=True),
        no_ties=True,
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(evans.talea([48, 2, 10, 1, 2, 1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        pitch_list=[
            evans.ETPitch(
                fundamental="af'",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=2,
            ),
            12,
            12,
            12,
            5,
            "f''''",
        ]
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    library.change_lines(
        lines=4,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([-2], first=True),
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([-1], first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    library.return_boxed_markup(
                        string="DP, Kratzen",
                    ),
                ),
                r"- \tweak padding #5.5",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2],
            first=True,
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.Articulation("marcato"),
            abjad.Ottava(n=2),
            abjad.Glissando(),
            abjad.StartHairpin("o<"),
            abjad.bundle(
                abjad.StartTextSpan(
                    left_text=abjad.Markup(
                        library.return_boxed_markup(
                            string="MSP",
                        )
                    ),
                    right_text=abjad.Markup(
                        library.return_boxed_markup(
                            string="Ord.",
                        )
                    ),
                    style="solid-line-with-arrow",
                    right_padding=-1,
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -4,
                -3,
                -2,
                -2,
                -1,
                -1,
                -1,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -3], first=True),
        right_padding=2,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)], nested=True),
        no_ties=True,
    ),
    voice=score["violin 2 voice"],
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([12, 4, 5, 9, 1, 2, 3], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=1,
            ),
            -2,
            -2,
            -2,
            -2,
            5,
            "d''''",
        ]
    ),
    library.change_lines(
        lines=4,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([-2], first=True),
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([-1], first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    library.return_boxed_markup(
                        string="DP, Kratzen",
                    ),
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [-2],
            first=True,
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.Articulation("marcato"),
            abjad.Ottava(n=2),
            abjad.Glissando(),
            abjad.StartHairpin("o<"),
            abjad.bundle(
                abjad.StartTextSpan(
                    left_text=abjad.Markup(
                        library.return_boxed_markup(
                            string="MSP",
                        )
                    ),
                    right_text=abjad.Markup(
                        library.return_boxed_markup(
                            string="Ord.",
                        )
                    ),
                    style="solid-line-with-arrow",
                    right_padding=-1,
                ),
                r"- \tweak padding #6",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                3,
                -3,
                -2,
                -2,
                -1,
                -1,
                -1,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=9.5,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -3], first=True),
        right_padding=2,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        no_ties=True,
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea([36, 4, 5, 10, 1], 16),
    ),
    evans.PitchHandler(
        pitch_list=[
            evans.ETPitch(
                fundamental="af,",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
            ),
        ]
    ),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                -2,
                -1,
            ],
            first=True,
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 9)], nested=True),
        no_ties=True,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        right_padding=2,
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([19, 1, 2, -6], 16)),
    evans.PitchHandler(["af,", "af,", 5]),
    library.change_lines(
        lines=4,
        clef="percussion",
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    library.boxed_markup(
        string="DP, Kratzen",
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                0,
                1,
                -1,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    voice=score["contrabass voice"],
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
            library.metronome_markups(met_string=library.metronome_marks["96"])
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 14)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["96"],
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2=4"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/28",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="28",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
