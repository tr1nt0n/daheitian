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

score = library.daheitian_score(ts.section_23_ts)

# commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1], 16)),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["violin 1 voice"]),
    library.fuse_contiguous(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["df'"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(r"twist-bow")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 7], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="2.|:",
        ),
        full_string=True,
        padding=13.5,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=11,
        command="Two",
        direction="down",
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([83, 1], 16)),
        direction=abjad.UP,
        voice_name="violin 1 divisi voice",
    ),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "df'",
            "aqf",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 8),
            ],
            nested=True,
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=11,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ord.",
            ),
            library.return_boxed_markup(
                string="Steg",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        right_padding=-1,
        command="Three",
    ),
    voice=score["violin 1 divisi voice"],
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
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["3:4(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\break", "before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/23",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="23",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
