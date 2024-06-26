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

score = library.daheitian_score(ts.section_9_ts)

# commands

# cor anglais commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.talea(trinton.rotated_sequence(library.oboe_chant_talea, 4), 16)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f'"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, -1], first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["b'"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.talea(
            trinton.rotated_sequence(library.oboe_chant_talea, 4),
            16,
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    library.soli_1(padding=3),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.patterned_graces(
        grace_selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            4,
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_logical_ties_by_index([0], first=True, pitched=True),
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((51, 70)),
    beam_meter=True,
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.talea(
            trinton.rotated_sequence(library.oboe_chant_talea, 4),
            16,
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    library.soli_1(padding=2),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.patterned_graces(
        grace_selector=trinton.patterned_tie_index_selector(
            [
                5,
            ],
            8,
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((18, 20)),
    beam_meter=True,
)

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([-2, 1], 4)),
    evans.PitchHandler([-24]),
    library.aftergrace(notes_string="c,16"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Glissando(),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.change_notehead_command(notehead="lowest"),
    voice=score["tenortrombone voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -17,
                4,
                3,
                1,
                -9,
            ],
            32,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([library.harp_chords[1]]),
    library.ring_mod_attachments(dynamics=["ppp +"], direction=abjad.DOWN),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.tremolo_command(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["harp 1 voice"],
    beam_meter=True,
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -17,
                4,
                3,
                1,
                -9,
            ],
            32,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Triangel"),
    library.ring_mod_attachments(dynamics=["ppp +"], direction=abjad.DOWN),
    trinton.tremolo_command(),
    voice=score["percussion 2 voice"],
    beam_meter=True,
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.talea(
            trinton.rotated_sequence(library.oboe_chant_talea, 4),
            16,
            extra_counts=[-1, 0],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -1,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            2,
            2,
            2,
            3,
            3,
            3,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -17,
                4,
                3,
                1,
                -9,
            ],
            32,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-3]),
    library.change_lines(lines=5, clef="treble"),
    library.boxed_markup(string="Glockenspiel"),
    library.ring_mod_attachments(dynamics=["ppp +"], direction=abjad.DOWN),
    trinton.tremolo_command(),
    voice=score["percussion 3 voice"],
    beam_meter=True,
)


# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(6, 6, 7, 1)])),
        selector=trinton.select_leaves_by_index([-1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 8),
            ],
            nested=True,
        ),
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt beginnen", font="italic"),
            ),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 4, 6, 6, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=4,
        right_padding=2,
        full_string=True,
        style="solid-line-with-hook",
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 1 voice"],
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea(
            [
                47,
                13,
            ],
            16,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(6, 6, 7, 1)])),
        selector=trinton.select_leaves_by_index([-1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            0,
            "gqs",
            "gqs",
            "gqs",
            "gqs",
            "aqf",
        ]
    ),
    trinton.change_lines(lines=1, clef="percussion"),
    library.tutti(padding=0),
    trinton.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_logical_ties_by_index([1], first=True),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(6, 12),
            ],
            nested=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartSlur(), abjad.StopSlur()],
        selector=trinton.select_logical_ties_by_index([2, -1], first=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_logical_ties_by_index([2, 3], first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt beginnen", font="italic"),
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 8, 10, 10, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        selector=trinton.select_leaves_by_index([0, 5]),
        padding=9,
        right_padding=5,
        full_string=True,
        style="solid-line-with-hook",
    ),
    library.soli_1(padding=8, selector=trinton.select_leaves_by_index([6])),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([6, 10]),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_preprocessor((4, 1)),
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea(
            [
                18,
                17,
                1,
                24,
            ],
            16,
        ),
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(6, 6, 7, 1)])),
        selector=trinton.select_leaves_by_index([-1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "gs",
            "aqf",
            "gs",
            "gs",
            "gs",
            "gs",
            "gs",
            "gqs",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 4),
                range(3, 8),
                range(8, 14),
            ],
            nested=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_logical_ties_by_index([1, 2, 4, -1], first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                5,
            ],
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 10, 12, 12, -1]),
    ),
    library.soli_1(padding=3),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        selector=trinton.select_leaves_by_index([0, 7]),
        padding=10.5,
        right_padding=2.5,
        full_string=True,
        style="solid-line-with-hook",
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                8,
                12,
            ]
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_preprocessor((4, 1)),
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(6, 6, 7, 1)])),
        selector=trinton.select_leaves_by_index([-1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["gs"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 4, 6, 6, -1]),
    ),
    library.soli_1(padding=5),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        selector=trinton.select_leaves_by_index([0, 2]),
        padding=4.5,
        right_padding=75.5,
        full_string=True,
        style="solid-line-with-hook",
        command="One",
    ),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index([3, -2]),
        style="solid-line-with-arrow",
        padding=4.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.notehead_bracket_command(),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_preprocessor((4, 1)),
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.tuplet([(6, 6, 7, 1)])),
        selector=trinton.select_leaves_by_index([-1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            0,
            "gs'",
            "gs'",
            "gs'",
            "gs'",
            "gs'",
            "gs'",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(2, 5),
                range(4, 8),
            ],
            nested=True,
        ),
        no_ties=True,
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index(
            [
                2,
            ]
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index(
            [
                2,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt beginnen", font="italic"),
            ),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 4, 6, 6, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        selector=trinton.select_leaves_by_index([0, 3]),
        padding=10.5,
        right_padding=40,
        full_string=True,
        style="solid-line-with-hook",
    ),
    trinton.spanner_command(
        strings=[
            "\markup {  }",
            library.return_boxed_markup(
                string="MSP",
            ),
        ],
        selector=trinton.select_leaves_by_index([4, -2]),
        style="solid-line-with-arrow",
        padding=10.5,
        full_string=True,
        right_padding=-1,
    ),
    trinton.notehead_bracket_command(),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor(
        (
            2,
            1,
            1,
            1,
        )
    ),
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["96"],
                string_only=True,
                parenthesis=True,
                interpolation="Rit.",
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["3:5(4)=4"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                string_only=True,
                parenthesis=True,
                interpolation="Rit.",
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["5:6(4)=4"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

# cues

for voice_name in ["harp 1 voice", "percussion 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 4)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\override Staff.MultiMeasureRest.transparent = ##t", site="before"
                ),
                abjad.LilyPondLiteral(
                    r"\revert Staff.MultiMeasureRest.transparent", site="absolute_after"
                ),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                ]
            ),
            tag=abjad.Tag("+PARTS"),
        ),
        trinton.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(
                evans.talea(
                    trinton.rotated_sequence(library.oboe_chant_talea, 4),
                    16,
                    treat_tuplets=False,
                ),
            ),
            direction=abjad.DOWN,
            voice_name=f"{voice_name} cue",
            from_components=False,
            preprocessor=trinton.fuse_sixteenths_preprocessor((51, 70)),
            temp_name="secondary",
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 4)),
        trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([12]),
        library.change_lines(lines=5, clef="treble"),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Dynamic("ff"),
            ],
            selector=trinton.select_logical_ties_by_index(
                [0, -1], first=True, pitched=True
            ),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(pitched=True, first=True),
        ),
        library.patterned_graces(
            grace_selector=trinton.patterned_tie_index_selector(
                [
                    1,
                ],
                4,
            )
        ),
        trinton.pitch_with_selector_command(
            pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
        ),
        library.grace_attachments(),
        trinton.attachment_command(
            attachments=[abjad.Clef("treble")],
            selector=trinton.select_logical_ties_by_index(
                [0], first=True, pitched=True
            ),
        ),
        library.einsatz(
            following_text="Bassklarinette ( 1. soli )",
            selector=trinton.pleaves(),
            direction=abjad.UP,
            tweaks=None,
            padding=0,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )

# # viola line breaking
#
# library.line_break(
#     score=score,
#     measure_range=(5,),
#     break_method="break"
# )


# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="percussion2",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
