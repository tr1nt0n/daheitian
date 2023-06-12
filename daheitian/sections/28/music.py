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

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                1,
                1,
                1,
                1,
                1,
                3,
                1,
                1,
            ],
            16,
            extra_counts=[0, 2, 0, -2],
        )
    ),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                2,
                3,
                4,
                5,
                8,
                10,
                11,
                12,
                22,
                23,
                26,
            ],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.select_logical_ties_by_index(
            [
                7,
                13,
                14,
                16,
                17,
                19,
                20,
                21,
                25,
            ],
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("ff"),
            abjad.Dynamic("fff"),
            trinton.make_custom_dynamic("fffmp"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            trinton.make_custom_dynamic("smp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            trinton.make_custom_dynamic("fffp"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                6,
                6,
                7,
                8,
                9,
                9,
                10,
                10,
                12,
                15,
                15,
                18,
                19,
                19,
                22,
                24,
                24,
                -2,
                -2,
                -1,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Das gesamte Mundstück mit den Lippen bedecken",
        ),
        full_string=True,
        padding=4.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.notehead_bracket_command(),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
    beam_meter=True,
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    library.boxed_markup(
        string="( zu Cor Anglais )",
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 17)),
    evans.RhythmHandler(
        evans.talea([-5, 1000], 8),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["fs'"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 9)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            evans.make_fancy_gliss(
                2,
                2,
                2,
                1,
                2,
                2,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                2,
                2,
                2,
                1,
                2,
                2,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                2,
                2,
                2,
                1,
                2,
                2,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                2,
                2,
                2,
                1,
                2,
                2,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                right_padding=-3,
            ),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, -1], pitched=True),
    ),
    voice=score["oboe voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 17)),
    evans.RhythmHandler(
        evans.talea([-3, 1000], 8),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["bf'"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 8)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            evans.make_fancy_gliss(
                1,
                1,
                1,
                3,
                1,
                3,
                1,
                1,
                3,
                3,
                3,
                3,
                1,
                1,
                3,
                1,
                1,
                1,
                3,
                1,
                3,
                1,
                1,
                3,
                3,
                3,
                3,
                1,
                1,
                3,
                right_padding=-3,
            ),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 2, -1], pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    evans.RhythmHandler(
        evans.talea([-3, 1000], 16),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["g,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 8)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartSlur(),
            evans.make_fancy_gliss(
                2,
                2,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
                1,
                2,
                2,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
                1,
                right_padding=-1,
            ),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 2, -1], pitched=True),
    ),
    voice=score["bassoon voice"],
)

# brass music commands

for voice_name, fundamental in zip(
    ["frenchhorn voice", "tenortrombone voice"],
    [
        "e'",
        "a",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (14, 17)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([fundamental]),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.select_leaves_by_index([0], pitched=True)
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Tie(),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((4,)),
    )

for voice_name in ["trumpet voice", "tuba voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (14, 17)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartHairpin("o<"),
                abjad.Tie(),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((4,)),
    )

tuba_first_pleaf = abjad.select.leaves(score["tuba voice"], pitched=True)[0]

abjad.attach(abjad.Clef("bass"), tuba_first_pleaf)

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 16)],
            treat_tuplets=False,
        )
    ),
    trinton.force_rest(selector=trinton.ranged_selector(ranges=[range(0, 4)])),
    abjad.beam,
    library.right_beam(),
    voice=score["piano 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            8,
        )
    ),
    voice=score["piano 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 17)),
    evans.PitchHandler([["bf,,,"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.boxed_markup(
        string="( Gleichzeitig mit Schlagzeug 1 )",
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("pppp"),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }"""
            ),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 0, 15], pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    trinton.ottava_command(
        octave=-1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 2 voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
            ],
            8,
            extra_counts=[
                0,
                2,
                0,
            ],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["e'"]),
    trinton.call_rmaker(
        rmaker=rmakers.beam,
        selector=trinton.ranged_selector(
            ranges=[range(9, 11), range(40, 44)], nested=True
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 44)], nested=True),
    ),
    trinton.change_notehead_command(notehead="highest"),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")], selector=trinton.logical_ties(first=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                2,
                3,
                4,
                5,
                7,
                7,
                7,
                1,
                7,
                1,
                1,
                7,
                1,
                2,
                3,
                7,
                7,
                7,
                1,
                2,
                3,
                4,
                5,
                5,
                5,
                6,
                6,
                6,
                6,
                7,
                7,
                7,
                7,
                7,
                1,
                2,
                3,
                4,
                5,
                7,
                7,
                7,
                1,
                7,
                1,
                1,
                7,
                1,
                2,
                3,
                7,
                7,
                7,
                1,
                2,
                3,
                4,
                5,
                5,
                5,
                6,
                6,
                6,
                6,
                7,
                7,
                7,
                7,
                7,
                right_padding=-3,
            ),
            abjad.Clef("bass"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                0,
                0,
                23,
            ],
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.tremolo_command(),
    trinton.notehead_bracket_command(),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            2,
            4,
        )
    ),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 17)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([13, 1, 1000], 16)),
        direction=abjad.DOWN,
        voice_name="percussion 1 divisi voice",
    ),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 17)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["c", "aqs,", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 4),
            ],
            nested=True,
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(4, 13)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation(">"),
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("|>o"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 3, 9]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 divisi voice"],
    beam_meter=True,
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            4,
        )
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([0])),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 13)),
    evans.RhythmHandler(
        evans.accelerando(
            [(1, 8), (1, 20), (1, 16)],
            treat_tuplets=False,
        )
    ),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            8,
        )
    ),
    voice=score["percussion 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 17)),
    evans.PitchHandler([[-1, 2]]),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(string="Bangu + Tanggu"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Kein Hauptpuls, } \line { jede Note gleich } } }"""
            ),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, 22], pitched=True, first=True
        ),
    ),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 17)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([[-1, 2]]),
    library.change_lines(lines=2, clef="percussion"),
    library.boxed_markup(
        string="Gongs der chinesische Oper",
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Arpeggio(), abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 0, 1]),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 5)], nested=True),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 3 voice"],
)

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

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
            ],
            16,
            extra_counts=[
                -1,
                0,
                1,
                0,
                0,
                2,
                0,
            ],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution,
        selector=trinton.select_tuplets_by_index(
            [
                3,
            ]
        ),
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                3,
            ],
            7,
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["e''''", "d'''", "fs''''", "gs'''"]),
    library.change_lines(lines=5, clef="treble"),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Ottava(
                n=1,
            ),
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
                r"- \tweak padding #14",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
            ],
            32,
            extra_counts=[
                -1,
                0,
                1,
                0,
                0,
                2,
                0,
            ],
        )
    ),
    # trinton.call_rmaker(
    #     rmaker=rmakers.force_diminution,
    #     selector=trinton.select_tuplets_by_index(
    #         [
    #             0,
    #             -1
    #         ]
    #     ),
    # ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["e''''", "d'''", "fs''''", "gs'''"]),
    # trinton.call_rmaker(
    #     rmaker=rmakers.beam,
    #     selector=trinton.ranged_selector(ranges=[range(34, 41)], nested=True),
    # ),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTextSpan(),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Ottava(n=0, site="after")],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override TupletBracket.direction = #DOWN"),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 1 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((1, 2)),
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
                r"- \tweak padding #6.5",
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
            abjad.Ottava(n=1),
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
                r"- \tweak padding #13",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
                1,
                1,
                1,
            ],
            16,
            extra_counts=[
                -1,
                0,
                1,
                0,
                0,
                2,
                0,
            ],
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector([5, 6], 11),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=["fs'''", "e''''", "c''''", "d''''", "d'''", "gs'''", "ef''"],
        selector=trinton.ranged_selector(ranges=[range(0, 21)]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e''", "f''", "a'", "a''", "gs'", "bf''"],
        selector=trinton.pleaves(exclude=range(0, 18)),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.beam,
        selector=trinton.ranged_selector(ranges=[range(19, 23)], nested=True),
    ),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Ottava(n=0),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                18,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 2 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
                1,
                1,
                1,
            ],
            32,
            extra_counts=[
                -1,
                0,
                1,
                0,
                0,
                2,
                0,
            ],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        pitch_list=["e''", "f''", "a'", "a''", "gs'", "bf''"],
    ),
    trinton.call_rmaker(
        rmaker=rmakers.beam,
        selector=trinton.ranged_selector(ranges=[range(34, 41)], nested=True),
    ),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTextSpan(),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override TupletBracket.direction = #DOWN"),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 2 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
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
            abjad.Ottava(n=1),
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
                r"- \tweak padding #10",
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

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
            ],
            16,
            extra_counts=[
                0,
                2,
                0,
                -1,
                0,
                1,
                0,
            ],
        )
    ),
    rmakers.force_diminution,
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector([4, 5], 9),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=["d'''", "bf'''", "gf'''", "b'''", "a''"],
        selector=trinton.ranged_selector(ranges=[range(0, 23)]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["a''", "af'", "f''", "ds''", "f'", "b''"],
        selector=trinton.ranged_selector(ranges=[range(23, 54)]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "fs'", "b", "b'", "f'", "af"],
        selector=trinton.ranged_selector(ranges=[range(54, 74)]),
    ),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Ottava(n=0), abjad.Clef("altovarC")],
        selector=trinton.select_logical_ties_by_index(
            [
                18,
                46,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                3,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
            ],
            32,
            extra_counts=[
                0,
                2,
                0,
                -1,
                0,
                1,
                0,
            ],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=["g", "b", "fs'", "bf", "c'", "b'"]),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTextSpan(),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override TupletBracket.direction = #DOWN"),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 13)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
                1,
                1,
                1,
                3,
                1,
                1,
            ],
            16,
            extra_counts=[
                0,
                0,
                2,
                0,
                -1,
                0,
                1,
            ],
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            6,
        ),
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([-1]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[5], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["cs'''", "b''", "d'''", "a''", "ef'''", "g''", "fs'''", "f''"],
        selector=trinton.ranged_selector(ranges=[range(2, 27)]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "fs''",
            "e''",
            "f'",
            "e'",
            "e",
            "ef''",
            "d''",
            "e'",
            "d'",
            "d",
        ],
        selector=trinton.ranged_selector(ranges=[range(28, 39)]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "fs'",
            "f",
            "c'",
            "e",
            "bf",
            "d",
            "f",
            "c",
            "e",
            "b,",
            "d",
            "a,",
            "c",
            "g,",
            "af,",
        ],
        selector=trinton.ranged_selector(ranges=[range(40, 60)]),
    ),
    library.change_lines(
        lines=4, clef="percussion", selector=trinton.select_leaves_by_index([0])
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
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    library.change_lines(
        lines=5,
        clef="treble",
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    library.unpitched_glissandi(selector=trinton.pleaves(exclude=[0]), trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.detach_command(
        detachments=[abjad.Articulation], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
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
                r"- \tweak padding #13",
            ),
        ],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_logical_ties_by_index(
            [
                31,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.ottava_command(
        selector=trinton.select_logical_ties_by_index([1, 20], first=True, pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["cello voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                1,
                1,
                1,
                1,
                2,
                1,
                3,
                1,
                1,
                1,
                3,
                1,
                1,
            ],
            32,
            extra_counts=[
                2,
                0,
                -1,
                0,
            ],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(pitch_list=["cs,", "c", "d,", "a,", "f,", "g,"]),
    library.unpitched_glissandi(trill=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTextSpan(),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override TupletBracket.direction = #DOWN"),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.notehead_bracket_command(),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (14, 17)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["b,"]),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((4,)),
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
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\break"), "absolute_after"],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
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
