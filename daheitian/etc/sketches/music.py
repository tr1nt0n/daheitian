import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms

# score

score = library.daheitian_score([(15, 4)])

# music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r'\markup \fontsize #7 "build upward in pitch and dynamic from bass, persist tutti for 37 seconds ( Achtel = 60 ) "'
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# contrabass b music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        ["a,"],
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    3,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="contrabass a voice",
    ),
    voice=score["contrabass voice"],
)

# contrabass a music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler(
        ["e"],
    ),
    trinton.force_rest(selector=trinton.select_leaves_by_index([-1])),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a,", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.spanner_command(
        strings=[
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "MSP",
            "ord.",
            "ord.",
            "MSP",
            "ord.",
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
                9,
                9,
                10,
                10,
                11,
                11,
                12,
                12,
                13,
                13,
                14,
                14,
                15,
                15,
                16,
                16,
                17,
                17,
                18,
            ]
        ),
        padding=11,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["contrabass a voice"],
)

# cello b music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                11,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [
            7.5,
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a", selector=trinton.select_leaves_by_index([0, -2])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")], selector=trinton.select_leaves_by_index([0])
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    13,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="cello a voice",
    ),
    voice=score["cello voice"],
)

# cello a music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [
            17.5,
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.hooked_spanner_command(
        string="both voices MSP",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13,
        right_padding=6,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["cello a voice"],
)

# viola b music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [
            "e''",
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a'", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")], selector=trinton.select_leaves_by_index([0])
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    4,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="viola a voice",
    ),
    voice=score["viola voice"],
)

# viola a music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        ["a'''"],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a'", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.hooked_spanner_command(
        string="both voices MSP",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=16.5,
        right_padding=10,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["viola a voice"],
)

# viola b music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                6,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [
            "e''''",
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a'", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")], selector=trinton.select_leaves_by_index([0])
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [
                    7,
                ],
                16,
            )
        ),
        direction=abjad.UP,
        voice_name="violin 2a voice",
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["violin 2 voice"],
)

# violin 2a music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        ["g''''"],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a'", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.hooked_spanner_command(
        string="both voices MSP",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=18,
        right_padding=8,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 2a voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                9,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [
            11,
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.pleaves(),
    ),
    trinton.trill_span_command(
        pitch="a'", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.hooked_spanner_command(
        string="MSP",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=7,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["violin 1 voice"],
)

# percussion music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    library.change_lines(lines=1, clef="percussion"),
    trinton.tremolo_command(trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    library.boxed_markup(string="Triangel"),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler(
        [-3],
    ),
    trinton.tremolo_command(trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    library.boxed_markup(string="Glockenspiel"),
    voice=score["percussion 3 voice"],
)

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                15,
            ],
            16,
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")], selector=trinton.select_leaves_by_index([0])
    ),
    library.onbeat_flute_handler,
    trinton.pitch_with_selector_command(
        [9],
        selector=trinton.exclude_graces(),
    ),
    trinton.pitch_with_selector_command(
        library.flute_overblowing_pitches,
        selector=trinton.grace_selector(),
    ),
    library.parenthesize_noteheads(),
    library.flute_overblowing_noteheads(),
    voice=score["flute voice"],
)

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 80),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
# )

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
