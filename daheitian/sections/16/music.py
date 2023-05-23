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

score = library.daheitian_score(ts.section_16_ts)

# commands

# monolith

library.monolith(
    score=score,
    measure=11,
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=5.5,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, 15], first=True, pitched=True
        ),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["oboe voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(1),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ffff")],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["oboe voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 16], pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(9), 16, extra_counts=[-1])),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(17), 16, extra_counts=[-1])),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ffff")],
        selector=trinton.select_logical_ties_by_index(
            [3, -1],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, 6], first=True, pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(1),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(2),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ffff")],
        selector=trinton.select_logical_ties_by_index(
            [5, -1], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

# drone music commands

for voice_name, pitch in zip(
    ["frenchhorn voice", "tuba voice", "contrabass voice"], ["ef", "gs,,", "gs,"]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (12, 20)),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(boundary_depth=-2),
        library.aftergrace(),
        evans.PitchHandler([pitch]),
        trinton.attachment_command(
            attachments=[abjad.Clef("bass"), trinton.make_custom_dynamic("fpp")],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        library.aftergrace_swells(hairpin="<", dynamics=["ffff"]),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((9,)),
    )

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                -8,
                1,
                -4,
                2,
                -4,
                3,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(notes_string="c'16"),
    evans.PitchHandler([-24]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(notehead="lowest"),
    library.aftergrace_swells(dynamics=["pp +", "p", "p +", "mp"]),
    voice=score["tenortrombone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 18)),
    evans.RhythmHandler(
        evans.talea([3, -7, 4, -6, 5, -5, 6, -4, 7, -3, 8, -2, 9, -1, 10], 16)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(notes_string="c'16"),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(notehead="lowest"),
    library.aftergrace_swells(dynamics=["mp", "mp +", "mf", "mf +", "f", "ff", "fff"]),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 20)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(notes_string="c'16"),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(notehead="lowest"),
    library.aftergrace_swells(dynamics=["ffff"]),
    voice=score["tenortrombone voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(evans.talea([23, 23, -10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, 7]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=3.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 32)],
                [(1, 20), (1, 8), (1, 32)],
                treat_tuplets=False,
            )
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    1,
                ],
                4,
            )
        ),
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[library._climax_pitches["violin 1 voice"][1]],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[11], selector=trinton.pleaves(exclude=[0])
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 1 voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.boxed_markup(string="MSP"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
            trinton.make_custom_dynamic("mp +"),
            abjad.LilyPondLiteral(
                r"\once \override TrillSpanner.bound-details.right.padding = #0",
                "before",
            ),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StopTrillSpan(),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 0, 1, 1, 1, -1], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
                6,
            ],
            8,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Pizz.",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="ST",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 11, 11, 21, 21, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 5, 5)),
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(evans.talea([23, 22, 1, -10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["gqs", "gqs", "aqf"]),
    library.change_lines(lines=5, clef="treble"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 9)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, -1], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            # library.clef_whitespace,
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                # 0,
                0,
                3,
                3,
                9,
            ],
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=4,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 32)],
                [(1, 20), (1, 8), (1, 32)],
                treat_tuplets=False,
            )
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    1,
                ],
                4,
            )
        ),
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                library._climax_pitches["violin 2 voice"][1],
                library._climax_pitches["violin 2 voice"][2],
            ],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[10.5], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, 0], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 2 voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 2 voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.boxed_markup(string="MSP"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
            trinton.make_custom_dynamic("mp +"),
            abjad.LilyPondLiteral(
                r"\once \override TrillSpanner.bound-details.right.padding = #0",
                "before",
            ),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StopTrillSpan(),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 0, 1, 1, 1, -1], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector([2, 5, 7], 8, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Pizz.",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 11, 11, 21, 21, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 5, 5)),
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(evans.talea([23, 22, 1, -10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "af",
            "af",
            "gqs",
        ]
    ),
    library.change_lines(lines=5, clef="altovarC"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 9)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            # library.clef_whitespace,
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                # 0,
                0,
                3,
                3,
                9,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=10,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 32)],
                [(1, 20), (1, 8), (1, 32)],
                treat_tuplets=False,
            )
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    1,
                ],
                4,
            )
        ),
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                library._climax_pitches["viola voice"][1],
                library._climax_pitches["viola voice"][2],
            ],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["bqs"], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["viola voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["viola voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.boxed_markup(string="MSP"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Articulation("espressivo"),
            trinton.make_custom_dynamic("mp +"),
            abjad.LilyPondLiteral(
                r"\once \override TrillSpanner.bound-details.right.padding = #0",
                "before",
            ),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.Clef("altovarC"),
            abjad.StopTrillSpan(),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 0, 0, 1, 1, 1, 1, -1], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector([3, 5, 10], 11, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Pizz.",
        ),
        full_string=True,
        padding=14.25,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="SP",
            ),
            library.return_boxed_markup(
                string="MST",
            ),
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([1, 18, 18, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=11.25,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 5, 5)),
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(evans.talea([23, 22, 1, -10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "af",
        ]
    ),
    library.change_lines(lines=5, clef="bass"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(3, 9)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            # library.clef_whitespace,
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                # 0,
                0,
                3,
                3,
                9,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 32)],
                [(1, 20), (1, 8), (1, 32)],
                treat_tuplets=False,
            )
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    1,
                ],
                4,
            )
        ),
        selector=trinton.select_tuplets_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            [
                library._climax_pitches["cello voice"][1],
                library._climax_pitches["cello voice"][2],
            ],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["bf"], selector=trinton.pleaves(exclude=[0])
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["cello voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["cello voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.boxed_markup(string="MSP"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Articulation("espressivo"),
            trinton.make_custom_dynamic("mp +"),
            abjad.LilyPondLiteral(
                r"\once \override TrillSpanner.bound-details.right.padding = #0",
                "before",
            ),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a")),
            abjad.Clef("bass"),
            abjad.StopTrillSpan(),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 0, 0, 0, 1, 1, 1, 1, -1], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
                6,
                7,
            ],
            10,
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Pizz.",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MST",
            ),
            library.return_boxed_markup(
                string="Ord.",
            ),
            library.return_boxed_markup(
                string="ST",
            ),
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="Ord.",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [1, 9, 9, 16, 16, 26, 26, -1], pitched=True
        ),
        style="solid-line-with-arrow",
        padding=6,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 5, 5)),
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(evans.talea([23, 23, -10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "af'",
        ]
    ),
    library.change_lines(lines=5, clef="treble"),
    trinton.linear_attachment_command(
        attachments=[
            # library.clef_whitespace,
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                # 0,
                0,
                3,
                3,
                7,
            ],
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
    ),
    voice=score["contrabass voice"],
    beam_meter=True,
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
            ],
            16,
            extra_counts=[-2, 2, 0],
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Tanggu"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], pitched=True, first=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
            ],
            16,
            extra_counts=[2, -2, -1],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution,
        selector=trinton.select_tuplets_by_index([1, 7]),
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Tanggu"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], pitched=True, first=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
            extra_counts=[
                -1,
                0,
            ],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([-1])
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[-3],
        selector=trinton.select_logical_ties_by_index(
            [28, 29, 30, 31, 32, 33, 34], pitched=True
        ),
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.change_lines(
        lines=3,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([28], pitched=True, first=True),
    ),
    library.boxed_markup(string="Tam-Tam mit Bogen"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            2,
            1,
            2,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    -6,
                    3,
                    3,
                    2,
                    2,
                ],
                8,
            )
        ),
        direction=abjad.UP,
        voice_name="percussion divisi voice",
    ),
    voice=score["percussion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.PitchHandler([4, 0]),
    library.boxed_markup(string="+ Gongs der chinesisch Oper"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["percussion divisi voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(1),
            16,
            extra_counts=[
                -1,
                0,
                -2,
            ],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution,
        selector=trinton.select_tuplets_by_index([0, 2, 3, 4, 6, 7]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-3]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            1,
            2,
            2,
            2,
            1,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    3,
                    3,
                    2,
                    2,
                    3,
                    3,
                    2,
                    2,
                    3,
                    3,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    3,
                    3,
                ],
                8,
            )
        ),
        direction=abjad.UP,
        voice_name="opera gongs voice",
    ),
    voice=score["percussion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.PitchHandler([4, 0]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["opera gongs voice"],
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
    font_size="15",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["3:5(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["5:4(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.StartTextSpan(
                    left_text=abjad.Markup(
                        library.metronome_markups(
                            met_string=library.metronome_marks["57 3/5"],
                            string_only=True,
                            parenthesis=True,
                        ),
                    ),
                    right_text=abjad.Markup(
                        library.metronome_markups(
                            met_string=library.metronome_marks["144"],
                            mod_string=library.metronome_marks["5:4(8)=4"],
                            string_only=True,
                        ),
                    ),
                    style="solid-line-with-arrow",
                    right_padding=0,
                ),
                r"- \tweak padding #11.5",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/16",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="16",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
