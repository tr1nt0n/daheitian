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

score = library.daheitian_score(ts.section_10_ts)

# commands

# moths rhythms

for voice_name in [
    "oboe voice",
    "bassclarinet voice",
    "bassoon voice",
    "violin 2 voice",
    "viola voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                16,
            )
        ),
        rmakers.force_rest,
        trinton.force_note(selector=library._moths_selectors[2][voice_name]),
        library.fuse_contiguous(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("ff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        voice=score[voice_name],
    )

# double reeds music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["bassoon voice"], 0))

for voice_name, pitch, padding in zip(
    [
        "oboe voice",
        "bassoon voice",
    ],
    [
        "bqs'",
        "cqs,",
    ],
    [
        10.5,
        10.5,
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.PitchHandler([pitch]),
        library.attach_multiphonics(repitch_only=True),
        trinton.rewrite_meter_command(),
        trinton.hooked_spanner_command(
            string=library._fundamental_to_multiphonic[rf"{pitch} hspace"].string,
            full_string=True,
            padding=padding,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        voice=score[voice_name],
    )

# bassoon music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5 "Tutti" }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override NoteHead.X-offset = 0",
                    r"\once \override Staff.Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["bassoon voice"],
)


# strings music commands

for voice_name in ["violin 2 voice", "viola voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.PitchHandler(
            [
                -1,
                5,
                2,
            ]
        ),
        library.change_lines(
            lines=4,
            clef="strings",
        ),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="DP, Kratzen",
            ),
            full_string=True,
            padding=7.5,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        library.tutti(padding=8),
        voice=score[voice_name],
    )

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler([-3]),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Überblasen",
        ),
        full_string=True,
        padding=5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    library.tutti(direction=abjad.UP),
    trinton.change_notehead_command(notehead="lowest"),
    voice=score["bassclarinet voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea(
            [
                11,
                3,
                2,
            ],
            8,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(
        "aqs,16",
    ),
    evans.PitchHandler(["c", "aqs,", "aqs,", "c'", "f", "c'"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
            abjad.StartHairpin("o<"),
            abjad.Glissando(),
            abjad.Glissando(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                0,
                1,
                2,
                2,
                4,
            ],
            first=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.select_logical_ties_by_index([3, 5], first=True),
    ),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
                2,
                1,
                1,
            ],
            4,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([3])
    ),
    library.aftergrace(
        notes_string="c'16", selector=trinton.select_logical_ties_by_index([-1])
    ),
    library.ring_mod_attachments(dynamics=["mp"], direction=abjad.DOWN),
    trinton.tremolo_command(),
    voice=score["percussion 2 voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
            treat_tuplets=False,
        )
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["violin 1 voice"]),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                4,
                treat_tuplets=False,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    library.fuse_contiguous(
        selector=trinton.pleaves(
            exclude=[
                -1,
                -2,
                -3,
                -4,
            ]
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([3, 5], pitched=True),
    ),
    library.aftergrace(
        notes_string="c'16",
        selector=trinton.select_logical_ties_by_index(
            [-1],
        ),
    ),
    evans.PitchHandler(
        [
            -5,
            -5,
            -1,
            11,
            11,
            11,
        ]
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
        ),
    ),
    library.change_lines(lines=4, clef="strings"),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index(
            [
                3,
            ],
            pitched=True,
        ),
    ),
    library.ring_mod_attachments(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
                2,
            ]
        ),
        dynamics=["f"],
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
                2,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[library._climax_partial_markups["violin 1 voice"][1]],
        selector=trinton.select_leaves_by_index([3], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(
            exclude=[
                -1,
                -2,
                -3,
                -4,
                -5,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP, Kratzen",
        ),
        full_string=True,
        padding=6.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
        right_padding=2,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=15.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([3, -1], pitched=True),
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((4, 4)),
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
            treat_tuplets=False,
        )
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["cello voice"]),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                4,
                treat_tuplets=False,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    library.fuse_contiguous(
        selector=trinton.pleaves(
            exclude=[
                -1,
                -2,
                -3,
                -4,
            ]
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([2, 4], pitched=True),
    ),
    library.aftergrace(
        notes_string="c'16",
        selector=trinton.select_logical_ties_by_index(
            [-1],
        ),
    ),
    evans.PitchHandler(
        [
            5,
            5,
            "gqs'",
            "gqs'",
            "gqs'",
        ]
    ),
    library.change_lines(lines=4, clef="strings"),
    library.tutti(),
    library.change_lines(
        lines=5,
        clef="tenorvarC",
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
        ),
    ),
    library.ring_mod_attachments(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        ),
        dynamics=["f"],
        direction=abjad.DOWN,
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[library._climax_partial_markups["cello voice"][2]],
        selector=trinton.select_leaves_by_index([2], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(
            exclude=[
                -1,
                -2,
                -3,
                -4,
                -5,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP, Kratzen",
        ),
        full_string=True,
        padding=5.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        right_padding=2,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=18,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([2, -1], pitched=True),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((4, 4)),
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([11, -5], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(
        "a,16",
    ),
    evans.PitchHandler(["a,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, -1], first=True, pitched=True
        ),
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
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["6:5(4)=4"],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/10",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
