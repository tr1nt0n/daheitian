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

score = library.daheitian_score(ts.section_7_ts)

# commands

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.tuplet([(8, 7, 1)])),
    evans.RewriteMeterCommand(),
    trinton.respell_tuplets_command(),
    evans.PitchHandler(["bqs'"]),
    library.change_lines(lines=5, clef="treble"),
    trinton.attachment_command(
        attachments=[library.clef_whitespace],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.attach_multiphonics(repitch_only=True),
    library.ring_mod_attachments(dynamics=["p"], direction=abjad.DOWN),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["bqs' hspace"].string,
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1.5,
    ),
    trinton.notehead_bracket_command(),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            3,
            1,
            2,
            1,
        )
    ),
)

# brass music commands

for voice_name in ["frenchhorn voice", "tenortrombone voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 4)),
        evans.RhythmHandler(
            evans.talea(
                [
                    -18,
                    19,
                    18,
                    1,
                ],
                32,
            )
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.force_accidentals_command(
            selector=trinton.select_leaves_by_index([0], pitched=True)
        ),
        trinton.notehead_bracket_command(),
        library.ring_mod_attachments(
            dynamics=["p +"], direction=abjad.DOWN, clean_swells=True
        ),
        trinton.attachment_command(
            attachments=[abjad.Clef("treble")],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        voice=score[voice_name],
    )

for voice_name in ["trumpet voice", "tuba voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 4)),
        evans.RhythmHandler(
            evans.talea(
                [
                    -18,
                    19,
                    18,
                    1,
                ],
                32,
            )
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.notehead_bracket_command(),
        library.ring_mod_attachments(
            dynamics=["p +"],
            direction=abjad.DOWN,
        ),
        voice=score[voice_name],
    )

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["trumpet voice"],
)

# tuba music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["tuba voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Glissando(),
            trinton.make_custom_dynamic("ffmf"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# high strings music commands

for voice_name in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
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
        trinton.force_note(selector=library._moths_selectors[1][voice_name]),
        evans.RewriteMeterCommand(boundary_depth=-1),
        evans.PitchHandler(
            [
                -1,
                -1,
                5,
                2,
            ]
        ),
        library.change_lines(lines=4, clef="strings"),
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
        voice=score[voice_name],
        beam_meter=True,
    )

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5, 5, 7, 7, -1], pitched=True),
    ),
    voice=score["violin 1 voice"],
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
                2,
                4,
                4,
                6,
                6,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index(
            [-1],
        ),
    ),
    voice=score["violin 2 voice"],
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3, 4, 4, -1], pitched=True),
    ),
    voice=score["viola voice"],
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 3, 4, 5, 6], pitched=True),
    ),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Glissando(),
            trinton.make_custom_dynamic("ffmf"),
            abjad.StartHairpin(">o"),
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
        )
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[1]["contrabass voice"]),
    evans.RewriteMeterCommand(boundary_depth=-1),
    evans.PitchHandler(
        [
            -1,
            -1,
            5,
            2,
        ]
    ),
    library.change_lines(lines=4, clef="strings"),
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
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
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
        0,
    ],
    font_size="15",
    fermata="long-fermata",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["96"],
                mod_string=library.metronome_marks["5:3(4)=4"],
                string_only=True,
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
        padding=8,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["5:4(4)=4"],
                padding=1,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
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
        lambda _: trinton.select_target(_, (1,)),
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
            rhythm_handler=evans.RhythmHandler(evans.talea([1000], 4)),
            direction=abjad.UP,
            voice_name=f"{voice_name} cue",
            from_components=False,
            temp_name="secondary",
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        library.aftergrace("aqs,16"),
        evans.PitchHandler(["c", "aqs,"]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Glissando(),
                trinton.make_custom_dynamic("ffmf"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
        ),
        trinton.tremolo_command(),
        library.einsatz(
            following_text="Pauken",
            selector=trinton.pleaves(),
            direction=abjad.UP,
            tweaks=None,
            padding=0,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
    )

# violin 1 line breaking

# library.line_break(score=score, measure_range=(1, 2), break_method="noBreak")

# oboe line breaking

library.line_break(score=score, measure_range=(5,), break_method="break")

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="oboe",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
