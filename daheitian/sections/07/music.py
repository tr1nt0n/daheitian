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
    evans.PitchHandler([12]),
    library.ring_mod_attachments(dynamics=["p"], direction=abjad.DOWN),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["c''"].string,
        full_string=True,
        padding=7,
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

for voice_name, fundamental in zip(
    ["frenchhorn voice", "tenortrombone voice"],
    [
        "e'",
        "a",
    ],
):
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
        evans.PitchHandler([fundamental]),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        trinton.notehead_bracket_command(),
        library.ring_mod_attachments(
            dynamics=["p +"], direction=abjad.DOWN, clean_swells=True
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

# tuba music commands

abjad.attach(
    abjad.Clef("bass"), abjad.select.leaves(score["tuba voice"], pitched=True)[0]
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
        evans.PitchHandler(
            [
                -1,
                -1,
                5,
                2,
            ]
        ),
        library.change_lines(lines=4, clef="percussion"),
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
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.beam_durations([(3, 8)], beam_rests=True),
        library.fuse_durations([(3, 8)]),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 3)),
        trinton.beam_durations([(1, 4)], beam_rests=True),
        library.fuse_durations([(1, 4)]),
        voice=score[voice_name],
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
    trinton.beam_durations([(1, 4)], beam_rests=True),
    library.fuse_durations([(1, 4)]),
    evans.PitchHandler(
        [
            -1,
            -1,
            5,
            2,
        ]
    ),
    library.change_lines(lines=4, clef="percussion"),
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
    fermata="ulongfermata",
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
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["3:5(4)=4"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["5:4(4)=4"],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/07",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
