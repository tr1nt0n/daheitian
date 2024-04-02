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

score = library.daheitian_score(ts.section_8_ts)

# commands

# cor anglais commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea(library.oboe_chant_talea, 8, treat_tuplets=False)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f'"]),
    library.soli_1(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.patterned_graces(
        grace_selector=trinton.patterned_tie_index_selector([3], 4)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["b'"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["englishhorn voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((5, 2)),
)

# violin 1 and contrabass music commands

for voice_name in ["violin 1 voice", "contrabass voice"]:

    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
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
            selector=trinton.select_leaves_by_index([0, -1]),
            right_padding=4,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Markup(
                    library.return_boxed_markup(
                        string="Abrupt beginnen und enden", font="italic"
                    ),
                ),
                abjad.Dynamic("pp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((3,)),
    )

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
            extra_counts=[
                -5,
                -3,
            ],
            treat_tuplets=False,
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Tam-Tam mit Bogen"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 2, 1, 2)),
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea([27, 8, 1], 16),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([0, -4.5, -3.5]),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([1], first=True),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(3, 6),
            ],
            nested=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt beginnen", font="italic"),
            ),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("p +"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                3,
                -1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([3, -1]),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=7.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 2]),
        right_padding=10.5,
    ),
    library.soli_1(padding=6, selector=trinton.select_leaves_by_index([3])),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([3, -1]),
        style="solid-line-with-arrow",
        padding=7.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 2 voice"],
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea([10, 7, 6, 1, 11, 1], 16),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([0, "gs", -3.5, "gs", "gs", -4.5]),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_lines(
        lines=5,
        clef="altovarC",
        selector=trinton.select_logical_ties_by_index([1], first=True),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(2, 5),
                range(4, 7),
                range(7, 10),
            ],
            nested=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt beginnen", font="italic"),
            ),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("p +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([2, 6, 7, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=6,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 1]),
        right_padding=8,
    ),
    library.soli_1(selector=trinton.select_leaves_by_index([2])),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([2, -1]),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea([10, 25, 1], 16),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([0, "gs", "gs"]),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.change_lines(
        lines=5,
        clef="bass",
        selector=trinton.select_logical_ties_by_index([1], first=True),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(2, 6),
            ],
            nested=True,
        ),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt beginnen", font="italic"),
            ),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("p +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=4,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 1]),
        right_padding=8,
    ),
    library.soli_1(padding=3, selector=trinton.select_leaves_by_index([2])),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([2, -1]),
        style="solid-line-with-arrow",
        padding=4,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["cello voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(".|:", "before"),
            abjad.BarLine(":|.", "after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        0,
    ],
    font_size="15",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["96"],
                mod_string=library.metronome_marks["4:3(4)=4"],
                padding=2,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# oboe line breaking

library.line_break(score=score, measure_range=(4,), break_method="pageBreak")

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="oboe",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
