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

score = library.daheitian_score([(5, 4), (1, 4)])

# commands

# revert key signature

for voice_name in library.all_voice_names:
    abjad.attach(
        abjad.KeySignature(abjad.NamedPitchClass("c"), abjad.Mode("major")),
        abjad.select.leaf(score[voice_name], 0),
    )

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([4, -1], 4)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("ffmp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                12,
                4,
                3,
                1,
            ],
            16,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.pleaves(exclude=[-2, -1])
    ),
    evans.PitchHandler(
        pitch_list=[
            "cs'",
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=3,
                with_quarter_tones=True,
            ),
        ]
    ),
    library.soli_1(padding=3),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
    ),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, -1, -1]),
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                12,
                4,
                3,
                1,
            ],
            16,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.pleaves(exclude=[-2, -1])
    ),
    evans.PitchHandler(
        pitch_list=[
            -3,
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=2,
                with_quarter_tones=True,
            ),
        ]
    ),
    library.soli_1(padding=3),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
    ),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, -1, -1]),
    ),
    voice=score["violin 2 voice"],
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                12,
                4,
                3,
                1,
            ],
            16,
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.pleaves(exclude=[-2, -1])
    ),
    evans.PitchHandler(
        pitch_list=[
            -5.5,
            evans.ETPitch(
                fundamental="af",
                repeating_ratio="11/8",
                number_of_divisions=3,
                scale_degree=1,
                with_quarter_tones=True,
            ),
        ]
    ),
    library.soli_1(padding=3),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
    ),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1]),
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([4, -1], 4)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            [
                -1,
                -5,
            ]
        ]
    ),
    library.change_lines(lines=4, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP, Kratzen, Doppelgriff",
        ),
        full_string=True,
        padding=7.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([12, 4, 3, 1], 16)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([4, -1], 4)),
        direction=abjad.DOWN,
        voice_name="contrabass divisi voice",
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(["af'"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Steg",
            ),
            library.return_boxed_markup(
                string="Ord.",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=16,
        full_string=True,
        right_padding=-2,
        command="One",
    ),
    voice=score["contrabass voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["a,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffmp"),
            abjad.StartHairpin("|>o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["contrabass divisi voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.attachment_command(
        attachments=[
            library.post_ghost_metronome,
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            library.post_ghost_metronome_parts,
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        2,
    ],
    fermata="short-fermata",
    font_size="15",
    blank=False,
    clef_whitespace=False,
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/26",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="26",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
