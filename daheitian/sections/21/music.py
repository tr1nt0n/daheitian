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

score = library.daheitian_score(ts.section_21_ts)

# commands

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(6),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f'"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                15,
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
        pitch_list=["b'"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    library.tutti(padding=4),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
            ],
            32,
            extra_counts=[-2],
        )
    ),
    evans.PitchHandler(["f'"]),
    library.timbre_trills(),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 24)], nested=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()], selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.notehead_bracket_command(),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(4), 16, extra_counts=[2])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
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
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
            ],
            32,
        )
    ),
    evans.PitchHandler(["c''", "df''"]),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(7),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                0,
                -4,
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
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    library.tutti(padding=0),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
            ],
            32,
            extra_counts=[-4],
        )
    ),
    evans.PitchHandler([-2]),
    library.timbre_trills(),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([0])
    ),
    trinton.respell_tuplets_command(),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 33)], nested=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

# brass music commands

for voice_name in ["frenchhorn voice", "tenortrombone voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (7,)),
        evans.RhythmHandler(evans.talea([7, 6, 1, -18], 32)),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.force_accidentals_command(
            selector=trinton.select_leaves_by_index([0], pitched=True)
        ),
        trinton.notehead_bracket_command(),
        library.ring_mod_attachments(
            dynamics=["p"], direction=abjad.DOWN, clean_swells=True
        ),
        trinton.attachment_command(
            attachments=[abjad.Clef("treble")],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

for voice_name in ["trumpet voice", "tuba voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (7,)),
        evans.RhythmHandler(evans.talea([7, 6, 1, -18], 32)),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(
            [library._brass_chord_pitches[voice_name]],
        ),
        trinton.notehead_bracket_command(),
        library.ring_mod_attachments(
            dynamics=["p"], direction=abjad.DOWN, clean_swells=True
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([23, -5], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["ef"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -2]),
    ),
    voice=score["frenchhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["frenchhorn voice"],
)

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    library.tutti(),
    voice=score["trumpet voice"],
)

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([13, -1], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(notehead="lowest"),
    library.aftergrace_swells(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["tenortrombone voice"],
)

# tuba music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([4, -3], 4)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["gs,,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["tuba voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([1, -2], 4)),
    evans.PitchHandler(["gs,"]),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    library.boxed_markup(string="( ord. )"),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
            ],
            8,
            extra_counts=[1, -1],
        )
    ),
    rmakers.force_diminution,
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.accelerando(
                [(1, 8), (1, 20), (1, 32)],
                treat_tuplets=False,
            ),
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    evans.PitchHandler([-3]),
    library.change_lines(lines=3, clef="percussion"),
    library.boxed_markup(string="Gongs der chinesische Oper + Tanggu"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.notehead_bracket_command(selector=trinton.select_tuplets_by_index([0, 1])),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            3,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 7)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler([[2, -1]]),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Tanggu + Bangu mit dem Holz des Schlägels"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Arpeggio(),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 4, -1]),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 6)], nested=True),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(exclude=[-2])),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    3,
                    3,
                    4,
                    4,
                    3,
                    3,
                ],
                8,
            )
        ),
        direction=abjad.UP,
        voice_name="percussion divisi voice",
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler([0, 4]),
    trinton.attachment_command(
        attachments=[
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["percussion divisi voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(6),
            16,
            extra_counts=[
                -1,
                0,
                1,
            ],
        )
    ),
    rmakers.rewrite_dots,
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution,
        selector=trinton.select_tuplets_by_index([1, -1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    library.boxed_markup(string="Tam-Tam mit Bogen"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
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
            3,
            1,
        )
    ),
)

# Gongs der chinesische Oper

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 3)),
#     evans.IntermittentVoiceHandler(
#         rhythm_handler=evans.RhythmHandler(
#             evans.talea(
#                 [
#                     3,
#                     3,
#                     4,
#                     4,
#                     3,
#                     3,
#                 ],
#                 8,
#             )
#         ),
#         direction=abjad.UP,
#         voice_name="percussion divisi voice",
#     ),
#     voice=score["percussion 3 voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 3)),
#     evans.PitchHandler([0, 4]),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic("ff"),
#             abjad.StartHairpin("--"),
#             abjad.StopHairpin(),
#             abjad.LaissezVibrer(),
#         ],
#         selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
#         direction=abjad.UP,
#     ),
#     voice=score["percussion divisi voice"],
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.RhythmHandler(evans.talea([-3, 41], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Triangel"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 7)], nested=True),
        no_ties=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.pleaves(exclude=[-2]),
    ),
    trinton.tremolo_command(
        selector=trinton.pleaves(exclude=[-2]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 4, -1], pitched=True),
    ),
    voice=score["percussion 3 voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "b'",
            "b'",
            "b'",
            "c''",
            "c''",
            "c''",
            "c''",
            "c''",
            "d''",
            "d''",
            "d''",
            "d''",
            "d''",
            "e''",
            "e''",
            "f''",
            "f''",
            "f''",
            "f''",
            "g''",
            "g''",
            "a''",
            "a''",
            "a''",
            "b''",
            "b''",
            "c'''",
            "c'''",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 28)], nested=True)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="CLB",
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
                string="SP",
            ),
            library.return_boxed_markup(
                string="MST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((17, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(["aqf"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    library.soli_1(),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=4,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    library.tutti(padding=0, selector=trinton.select_leaves_by_index([0])),
    voice=score["violin 1 voice"],
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "bqf'",
            "b'",
            "b'",
            "c''",
            "c''",
            "c''",
            "c''",
            "c''",
            "d''",
            "d''",
            "d''",
            "d''",
            "d''",
            "e''",
            "e''",
            "f''",
            "f''",
            "f''",
            "f''",
            "g''",
            "g''",
            "a''",
            "a''",
            "a''",
            "b''",
            "b''",
            "c'''",
            "c'''",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 28)], nested=True)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="CLB",
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
                string="SP",
            ),
            library.return_boxed_markup(
                string="MST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    library.unis(padding=0),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((17, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["gqs", "aqf"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    library.soli_1(),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=4,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    library.tutti(padding=0, selector=trinton.select_leaves_by_index([0])),
    voice=score["violin 2 voice"],
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "bqs",
            "b",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "d'",
            "d'",
            "d'",
            "d'",
            "e'",
            "e'",
            "e'",
            "f'",
            "f'",
            "f'",
            "g'",
            "g'",
            "g'",
            "a'",
            "a'",
            "b'",
            "b'",
            "c''",
            "c''",
            "d''",
            "d''",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 28)], nested=True)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="CLB",
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
                string="SP",
            ),
            library.return_boxed_markup(
                string="MST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    library.unis(padding=0),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((17, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(
        [
            "af",
            "gqs",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    library.soli_1(padding=7.5),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["guitar 3 voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    library.tutti(padding=0, selector=trinton.select_leaves_by_index([0])),
    voice=score["viola voice"],
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 20), (1, 8), (1, 32)],
            treat_tuplets=False,
        ),
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "bf",
            "b",
            "b",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "d'",
            "d'",
            "d'",
            "d'",
            "e'",
            "e'",
            "e'",
            "e'",
            "f'",
            "f'",
            "f'",
            "f'",
            "g'",
            "g'",
            "a'",
            "a'",
            "a'",
            "b'",
            "b'",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 28)], nested=True)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="CLB",
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
                string="SP",
            ),
            library.return_boxed_markup(
                string="MST",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        command="One",
        right_padding=-2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pppp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((17, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(
        [
            "af",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    library.soli_1(padding=0),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Dynamic("ppp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
            ]
        ),
    ),
    voice=score["guitar 4 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    library.tutti(padding=0, selector=trinton.select_leaves_by_index([0])),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(["gs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 5),
            ],
            nested=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, 3, 3, -1]),
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "af'",
        ]
    ),
    trinton.change_notehead_command(notehead="cross"),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=7.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=51,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
            ]
        ),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((3,)),
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(2)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                string_only=True,
                parenthesis=True,
                interpolation="Accel.",
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["5:4(4)=4"],
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

# cues

for voice_name in [
    "frenchhorn voice",
    "trumpet voice",
    "tenortrombone voice",
    "tuba voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
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
                    [
                        1,
                        1,
                        1,
                        1,
                        2,
                        1,
                        1,
                        1,
                        2,
                        1,
                        1,
                        2,
                    ],
                    32,
                    extra_counts=[-4],
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
        lambda _: trinton.select_target(_, (6,)),
        evans.PitchHandler([-2]),
        trinton.call_rmaker(
            rmaker=rmakers.force_diminution,
            selector=trinton.select_tuplets_by_index([0]),
        ),
        trinton.respell_tuplets_command(),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Dynamic("mf"),
                abjad.StartHairpin(">"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        trinton.notehead_bracket_command(),
        library.einsatz(
            following_text="Fagotte",
            selector=trinton.pleaves(),
            direction=abjad.UP,
            tweaks=None,
            padding=0,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )


# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
)

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        "frenchhorn voice secondary",
        "trumpet voice secondary",
        "tenortrombone voice secondary",
        "tuba voice secondary",
    ],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/21",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="21",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
