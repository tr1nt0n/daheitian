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

score = library.daheitian_score(ts.section_4_ts)

# commands

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# strings music commands

for voice_name in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 4)),
        evans.RhythmHandler(evans.talea([-2, 8], 4)),
        library.change_lines(
            lines=1,
            clef="percussion",
        ),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="Steg",
            ),
            full_string=True,
            padding=3,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=4,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Markup(
                    library.return_boxed_markup(
                        string="Abrupt beginnen und enden", font="italic"
                    )
                ),
                abjad.Dynamic("mp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
        ),
        voice=score[voice_name],
    )

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=3,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt enden", font="italic")
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["contrabass voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# parts globals

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("||"),
            abjad.LilyPondLiteral(r"\break", "after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# parts

trinton.extract_parts(score)

# render parts file without whiteout_empty_staves

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/04",
#     build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
#     segment_name="04_parts",
#     includes=[
#         "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )

# score globals

trinton.fermata_measures(
    score=score,
    measures=[
        5,
    ],
    font_size="15",
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        0,
    ],
    fermata="ulongfermata",
    font_size="15",
    blank=False,
)

for measure, tempo in zip(
    [
        1,
        3,
        6,
    ],
    [
        library.metronome_markups(
            met_string=library.metronome_marks["144"],
            mod_string=library.metronome_marks["3:2(8)=4"],
        ),
        library.metronome_markups(
            met_string=library.metronome_marks["96"],
            mod_string=library.metronome_marks["4.=4"],
        ),
        library.metronome_markups(
            met_string=library.metronome_marks["144"],
            mod_string=library.metronome_marks["3:2(4)=4"],
        ),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[tempo],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/04",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
