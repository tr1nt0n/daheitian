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

score = library.daheitian_score(ts.section_14_ts)

# commands

# moths rhythms

for voice_name in [
    "oboe voice",
    "bassclarinet voice",
    "bassoon voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
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
        trinton.force_note(selector=library._moths_selectors[1][voice_name]),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_sixteenths_preprocessor((9, 5, 10)),
    )

    tuplets = abjad.select.tuplets(score[voice_name])

    tuplets = tuplets[0:2]

    for tuplet in tuplets:
        for leaf in tuplets:
            rmakers.force_rest(leaf)

for voice_name in [
    "oboe voice",
    "bassclarinet voice",
    "bassoon voice",
    "violin 1 voice",
    "violin 2 voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        rmakers.trivialize,
        rmakers.extract_trivial,
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ff")],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        voice=score[voice_name],
    )

# final stophairpins

for voice_name in [
    "oboe voice",
    "frenchhorn voice",
    "trumpet voice",
    "tenortrombone voice",
    "percussion 2 voice",
    "percussion 3 voice",
]:
    abjad.attach(abjad.StopHairpin(), abjad.select.leaf(score[voice_name], -1))

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(3) if _ > 2], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs''", "ds''"]),
    voice=score["flute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([_ for _ in library.logistic_map(8) if _ > 2], 16),
        ),
        direction=abjad.UP,
        voice_name="flute divisi voice",
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            "f''",
            "g''",
        ]
    ),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector([0, 1, 4], 6),
    ),
    library.flute_grace_attachments(),
    library.duet_1_2(padding=7),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector(
            [
                0,
                1,
                4,
                6,
                8,
                9,
            ],
            11,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e''"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=["af''"], selector=trinton.pleaves(grace=True)
    ),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    evans.RhythmHandler(
        evans.talea(
            [_ for _ in library.logistic_map(20) if _ > 2], 16, treat_tuplets=False
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "ds''",
            "cs''",
            "ds''",
            "cs''",
            "ds''",
            "cs''",
            "ds'",
            "cs'",
            "ds'",
            "cs'",
            "ds'",
            "cs'",
            "ds'",
            "cs'",
            "ds'",
            "cs'",
        ]
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(string="Beide Luftklang"),
        full_string=True,
        padding=12,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [-5, -1], first=True, grace=False, pitched=True
        ),
        right_padding=1.5,
    ),
    trinton.change_notehead_command(
        notehead="la",
        selector=trinton.select_leaves_by_index([-8, -7, -6, -5, -4, -3, -2, -1]),
    ),
    voice=score["flute voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((21, 100)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([_ for _ in library.logistic_map(21) if _ > 2], 16),
        ),
        direction=abjad.UP,
        voice_name="flute div voice",
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            "f''",
            "g''",
            "f''",
            "g''",
            "f''",
            "g''",
            "f'",
            "g'",
            "f'",
            "g'",
        ]
    ),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector(
            [
                1,
                3,
                4,
            ],
            6,
        ),
    ),
    library.flute_grace_attachments(),
    voice=score["flute div voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 10)),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector(
            [0, 2, 5],
            6,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "e''",
            "e''",
            "e'",
            "e'",
            "e'",
            "e'",
            "e'",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    library.flute_grace_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.change_notehead_command(
        notehead="la", selector=trinton.pleaves(exclude=[0, 1, 4], grace=True)
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "af''",
            "af'",
            "af'",
            "af'",
            "af'",
            "af'",
        ],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([8, 12, 15, -1]),
    ),
    voice=score["flute div voice"],
)

for measure in [2, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.detach_command(
            detachments=[abjad.Tie], selector=trinton.select_leaves_by_index([-1])
        ),
        voice=score["flute voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    trinton.change_notehead_command(
        notehead="la", selector=trinton.pleaves(exclude=[0])
    ),
    voice=score["flute div voice"],
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler(["bqs'"]),
    library.attach_multiphonics(repitch_only=True),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["bqs' hspace"].string,
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1.5,
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([["bf'''", "aqf'''"]]),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral("\-", "after")],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.BreathMark(),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                1,
                1,
            ]
        ),
    ),
    library.boxed_markup(
        string="( Anhalten des Klangs zum Atmen, wenn nötig )",
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1])),
    voice=score["oboe voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([9, 1, 10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 3]),
    ),
    trinton.arrow_spanner_command(
        l_string=library.return_boxed_markup(
            string="Ton",
        ),
        r_string=library.return_boxed_markup(
            string="Überblasen",
        ),
        selector=trinton.select_leaves_by_index([0, 2]),
        style="solid-line-with-arrow",
        padding=15.5,
        direction="down",
        tempo=True,
        right_padding=-1,
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([-5, 4, 1, -10], 16),
        ),
        direction=abjad.UP,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["bqf"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("fffff", direction=abjad.UP),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Überblasen",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["bassclarinet divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1), (-1,)])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["bqf"]),
    library.ring_mod_attachments(dynamics=["mp", "mp +"]),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([9], 4),
        ),
        direction=abjad.DOWN,
        voice_name="bassclarinet div voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            3,
            2,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("mf +"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["bassclarinet div voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler([-3]),
    trinton.change_notehead_command(notehead="lowest"),
    library.remove_accidentals(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Überblasen",
        ),
        full_string=True,
        padding=4.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        evans.tuplet([(4, 2, 1), (-1,)]),
    ),
    rmakers.rewrite_dots,
    evans.PitchHandler(["bqf"]),
    library.ring_mod_attachments(dynamics=["ff"]),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    4,
                    1,
                    1,
                    2,
                    1,
                    -5,
                ],
                8,
            ),
        ),
        direction=abjad.DOWN,
        voice_name="bass clarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((9, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    library.aftergrace(
        notes_string="as16", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    evans.PitchHandler(["as"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 6)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1], pitched=True),
    ),
    voice=score["bass clarinet divisi voice"],
    beam_meter=True,
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
        evans.RhythmHandler(
            evans.RhythmHandler(
                evans.talea([-5, 4, 1, -10], 16),
            ),
        ),
        direction=abjad.UP,
        voice_name="bassoon intermittent voice 1",
        from_components=False,
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                3,
                2,
                3,
            )
        ),
        temp_name="temp",
    ),
    voice=score["bassoon voice"],
),

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["aqf,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic(
                "fffff",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Überblasen",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=11,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    library.wenn_keine_bk(),
    library.soli_1(padding=3),
    library.cue_eraser(),
    voice=score["bassoon intermittent voice 1"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler(["d"]),
    library.attach_multiphonics(),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.tutti(),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
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
        evans.RhythmHandler(
            evans.RhythmHandler(
                evans.tuplet(
                    [(1, 1, 1), (-1,)],
                )
            ),
        ),
        direction=abjad.UP,
        voice_name="bassoon intermittent voice 2",
        from_components=False,
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                3,
                2,
                3,
            )
        ),
        temp_name="temp",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["aqf,"]),
    library.ring_mod_attachments(dynamics=["mp", "mp +"], direction=abjad.DOWN),
    trinton.notehead_bracket_command(),
    library.soli_1(
        padding=3,
    ),
    library.cue_eraser(),
    voice=score["bassoon intermittent voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
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
        evans.RhythmHandler(
            evans.tuplet([(4, 2, 1), (-1,)]),
        ),
        direction=abjad.UP,
        voice_name="bassoon intermittent voice 3",
        from_components=False,
        preprocessor=trinton.fuse_eighths_preprocessor((9, 5)),
        temp_name="temp",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    rmakers.rewrite_dots,
    evans.PitchHandler(["aqf,"]),
    library.ring_mod_attachments(dynamics=["ff"], direction=abjad.DOWN),
    trinton.notehead_bracket_command(),
    library.wenn_keine_bk(),
    library.soli_1(
        padding=3,
    ),
    library.cue_eraser(),
    voice=score["bassoon intermittent voice 3"],
)

# brass music commands

for voice_name in ["frenchhorn voice", "tenortrombone voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (10, 11)),
        evans.RhythmHandler(
            evans.talea(
                [1, -5, 1, 1, 1, 1, -3, 1, -1],
                32,
                treat_tuplets=False,
            )
        ),
        trinton.replace_with_rhythm_selection(
            rhythmhandler=evans.RhythmHandler(
                evans.talea(
                    [
                        1,
                    ],
                    4,
                )
            ),
            selector=trinton.select_tuplets_by_index([-1]),
        ),
        trinton.treat_tuplets(),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.detach_command(
            detachments=[
                abjad.Markup,
            ],
            selector=trinton.pleaves(exclude=[0]),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("staccato")],
            selector=trinton.logical_ties(pitched=True, first=True, exclude=[-1]),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(
                    r"\multiple-staccato",
                )
            ],
            selector=trinton.select_leaves_by_index([-1]),
            direction=abjad.UP,
        ),
        library.boxed_markup(
            string="Frei: Aperiodische Staccati",
            selector=trinton.select_leaves_by_index([-1]),
        ),
        trinton.noteheads_only(
            selector=trinton.select_leaves_by_index([-1]),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("pppp"),
                abjad.StartHairpin("<"),
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">o"),
                abjad.LilyPondLiteral("\-", "after"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1, -1, -1]),
        ),
        trinton.force_accidentals_command(
            selector=trinton.select_leaves_by_index([0, -1])
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    library.tutti(padding=2),
    voice=score["frenchhorn voice"],
)

abjad.attach(
    abjad.Clef("treble"),
    abjad.select.leaves(score["frenchhorn voice"], pitched=True)[0],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            10,
            11,
        ),
    ),
    evans.RhythmHandler(
        evans.talea(
            [1, -5, 1, 1, 1, 1, -3, 1, -1],
            32,
            treat_tuplets=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                4,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([library._brass_chord_pitches["trumpet voice"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(pitched=True, first=True, exclude=[-1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"\multiple-staccato",
            )
        ],
        selector=trinton.select_leaves_by_index([-1]),
        direction=abjad.UP,
    ),
    library.boxed_markup(
        string="Frei: Aperiodische Staccati",
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.LilyPondLiteral("\-", "after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1, -1]),
    ),
    voice=score["trumpet voice"],
    beam_meter=True,
)

# piano music commands

for voice_name, hand in zip(["piano 1 voice", "piano 2 voice"], ["rh", "lh"]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 5)),
        evans.RhythmHandler(
            evans.talea([1, 1, 1, -1, 1, -1, 1, 1, -1], 4),
        ),
        evans.PitchHandler(library.piano_chords(hand=hand, index=3)),
        library.handle_clefs(),
        trinton.ottava_command(
            selector=trinton.select_leaves_by_index(
                [
                    2,
                    2,
                    5,
                    5,
                ],
                pitched=True,
            )
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (6, 8)),
        evans.RhythmHandler(
            evans.talea([-21, 3, 4, 4, 4, -4, 2, -30], 16),
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(library.piano_chords(hand=hand, index=9)),
        library.handle_clefs(),
        trinton.ottava_command(
            selector=trinton.select_leaves_by_index(
                [
                    2,
                    2,
                ],
                pitched=True,
            )
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 0, 3], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartPianoPedal(),
                abjad.StopPianoPedal(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                4,
                5,
            ],
            pitched=True,
        ),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [3, 3, -2],
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartPianoPedal(),
            abjad.StopPianoPedal(),
        ],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
    ),
    voice=score["piano 2 voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(10) if _ < 6], 8)),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([1], 2)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        library.harp_chords,
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["harp 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="( sim. )",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
    ),
    trinton.change_notehead_command(
        notehead="la",
    ),
    voice=score["harp 2 voice"],
    preprocessor=trinton.fuse_preprocessor((5,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.talea(
            [_ for _ in library.logistic_map(10) if _ < 6], 8, treat_tuplets=False
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, -1])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        library.harp_chords,
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                3,
                3,
                6,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["harp 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((21, 10, 21)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 8)),
    evans.RhythmHandler(evans.talea([-21, 21, -10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="( sim. )",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
    ),
    trinton.change_notehead_command(
        notehead="la",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                3,
                3,
                6,
            ]
        ),
        direction=abjad.UP,
    ),
    voice=score["harp 2 voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([15, -9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.BendAfter(0)], selector=trinton.select_leaves_by_index([-1])
    ),
    library.boxed_markup(string="Triangel"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("pp +"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
            ]
        ),
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override StemTremolo.X-offset = 0.6", "before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override StemTremolo.Y-offset = 1.75", "before"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1])),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.BendAfter(0)], selector=trinton.select_leaves_by_index([-1])
    ),
    library.boxed_markup(string="Tam-Tam mit Bogen"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
            ]
        ),
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1])),
    voice=score["percussion 3 voice"],
)

# strings music commands

for voice_name in ["violin 1 voice", "violin 2 voice", "cello voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        evans.PitchHandler(
            [
                [5, 2],
                [-1, -5],
            ],
        ),
        library.change_lines(lines=4, clef="percussion"),
        voice=score[voice_name],
    )

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="DP, Kratzen",
            ),
            full_string=True,
            padding=8,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        library.tutti(padding=0.5),
        voice=score[voice_name],
    )

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.talea([3, 2], 16)),
        selector=trinton.select_tuplets_by_index([1]),
    ),
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.aftergrace(
        notes_string="c'16",
        selector=trinton.select_leaves_by_index(
            [
                1,
            ],
            pitched=True,
        ),
    ),
    evans.PitchHandler(
        [
            [5, 2],
            [5, 2],
            [5, 2],
            [-1, -5],
        ]
    ),
    library.change_lines(lines=4, clef="percussion"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP, Kratzen",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    library.tutti(padding=0.5),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    library.boxed_markup(
        string="DP, Kratzen",
    ),
    library.tutti(padding=0),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([15, -9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["contrabass voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# surgery

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.detach_command(
        detachments=[abjad.RepeatTie()],
        selector=trinton.select_leaves_by_index(
            [
                2,
            ],
            pitched=True,
        ),
    ),
    voice=score["flute voice"],
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\break", "after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.parts_movements[2],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                string_only=True,
                parenthesis=True,
                interpolation="Accel.",
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["3:2(4)=4"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(4)=4"],
                padding=1,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        11,
    ],
    font_size="15",
    fermata="very-long-fermata",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book") \center-column { \line { \fontsize #7.5 { "18" } \fontsize #3 { \fraction 1 2 } \fontsize #7.5 { "\"" } } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        12,
    ],
    font_size="15",
    fermata="short-fermata",
    blank=False,
    clef_whitespace=False,
)

# cues

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
        evans.RhythmHandler(
            evans.RhythmHandler(
                evans.talea([-5, 4, 1, -10], 16),
            ),
        ),
        direction=abjad.UP,
        voice_name="piano 1 voice cue",
        from_components=False,
        preprocessor=trinton.fuse_eighths_preprocessor(
            (
                3,
                2,
                3,
            )
        ),
        temp_name="secondary",
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["bqf"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic(
                "fffff",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Überblasen",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    library.einsatz(following_text="Erste Bassklarinette", padding=12),
    library.cue_eraser(),
    voice=score["piano 1 voice cue"],
    beam_meter=True,
)

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "contrabass voice",
    "oboe voice",
    "percussion 1 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 5)),
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
            evans.RhythmHandler(
                evans.talea([1, 1, 1, -1, 1, -1, 1, 1, -1], 4),
            ),
            direction=abjad.UP,
            voice_name=f"{voice_name} cue",
            from_components=False,
            preprocessor=None,
            temp_name="secondary",
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 5)),
        evans.PitchHandler(library.piano_chords(hand="rh", index=3)),
        library.handle_clefs(),
        trinton.ottava_command(
            selector=trinton.select_leaves_by_index(
                [
                    2,
                    2,
                    5,
                    5,
                ],
                pitched=True,
            )
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Clef("bass"),
            ],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        library.einsatz(following_text="Klavier RH", column="halign #0.05"),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )

for voice_name in [
    "frenchhorn voice",
    "trumpet voice",
    "tenortrombone voice",
    "percussion 2 voice",
    "percussion 3 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (8,)),
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
            evans.RhythmHandler(
                evans.talea([-1, -1], 2, treat_tuplets=False),
            ),
            direction=abjad.UP,
            voice_name=f"{voice_name} cue",
            from_components=False,
            preprocessor=None,
            temp_name="secondary",
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (8,)),
        rmakers.trivialize,
        rmakers.extract_trivial,
        library.einsatz(
            following_text="Ab hier bis Takt 85 nur Flöte",
            selector=trinton.select_leaves_by_index([-1]),
            termination=False,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )

# clarinet line breaking

library.line_break(score=score, measure_range=(1,), break_method="noBreak")

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "bassclarinet voice"],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["bassclarinet voice"],
    measures=[9, 10, 11, 12],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="horn",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="14",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
