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

score = library.daheitian_score(ts.section_2_ts)

# commands

# strings commands

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
    "contrabass voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(),
        library.change_lines(
            lines=1,
            clef="percussion",
        ),
        trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="Steg",
            ),
            full_string=True,
            padding=3,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1]),
            right_padding=4,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(r"\-", "after"),
                abjad.Dynamic("pp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        voice=score[voice_name],
    )

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Glissando(),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# violins music commands

for voice_name in ["violin 1 voice", "violin 2 voice"]:
    abjad.attach(
        abjad.bundle(
            abjad.Markup(
                library.return_boxed_markup(
                    string="Abrupt beginnen und enden", font="italic"
                ),
            ),
            r"- \tweak padding #5",
        ),
        abjad.select.leaf(score[voice_name], 0),
        direction=abjad.UP,
    )

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([4, 6, 5, 1], 16),
    ),
    evans.RewriteMeterCommand(),
    evans.PitchHandler([0, "gs", -3.5, "gs"]),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_lines(
        lines=5, clef="altovarC", selector=trinton.select_leaves_by_index([1])
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
    library.boxed_markup(
        string="Steg",
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\-", "after"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Markup(
                library.return_boxed_markup(
                    string="Abrupt beginnen und enden", font="italic"
                ),
            ),
            abjad.Glissando(),
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                0,
                1,
                1,
                1,
                2,
                -1,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Solo",
        ),
        full_string=True,
        padding=11,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1]),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, -1]),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([4, 6, 5, 1], 16),
    ),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            0,
            "gs",
            "gs",
            "gs",
        ]
    ),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([1])
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
    library.boxed_markup(
        string="Steg",
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(1, 5)],
            nested=True,
        ),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\-", "after"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.Markup(
                library.return_boxed_markup(
                    string="Abrupt beginnen und enden", font="italic"
                ),
            ),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 1, 2]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Solo",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1]),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, -1]),
        style="solid-line-with-arrow",
        padding=4.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

# contrabass music commands

abjad.attach(
    abjad.Markup(
        library.return_boxed_markup(string="Abrupt beginnen und enden", font="italic"),
    ),
    abjad.select.leaf(score["contrabass voice"], 0),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rmakers.note),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            trinton.make_custom_dynamic("ffpp"),
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

# globals

trinton.fermata_measures(
    score=score,
    measures=[
        1,
    ],
    fermata="uverylongfermata",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Markup(r'\markup \fontsize #7.5 \center-column { "37\"" }')],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(4)=4"],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/02",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
