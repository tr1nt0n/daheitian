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

score = library.daheitian_score([(8, 8), (4, 8), (1, 4)])

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([2, 1, 3], 8),
    ),
    evans.PitchHandler(["g''", "g''", "g''", "f''", "f''", "ef''"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([0, 2, 3, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["flute voice"],
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([3], 8),
    ),
    evans.PitchHandler(["ef''", "d''", "bf'", "c''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.Dynamic("f"),
            abjad.StopSlur(),
            abjad.StartSlur(),
            abjad.StopSlur(),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 2, -1, -1]),
    ),
    voice=score["oboe voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                2,
                1,
                3,
            ],
            8,
        ),
    ),
    evans.PitchHandler(["c'''", "c'''", "c'''", "bf''", "a''"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([0, 1, 3, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["bassclarinet voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([2, 1, 2, 1, 2, 1, 3], 8),
    ),
    evans.PitchHandler(["ef", "ef", "d", "d", "d", "d", "c"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
            first=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["bassoon voice"],
)

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([2, 1, 3, 3, 3], 8),
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([2])
    ),
    evans.PitchHandler([["bf", "bf,"], ["bf", "c"], ["a", "d"], ["g", "d"]]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.pleaves(exclude=[1, 3, 4]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["frenchhorn voice"],
)

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([1, -2, -3, 2, 1, 3], 8),
    ),
    evans.PitchHandler(
        [
            ["ef''", "ef'"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.pleaves(exclude=[2]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["trumpet voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                -3,
                -3,
            ],
            8,
        )
    ),
    evans.PitchHandler([["ef'''", "ef''"]]),
    trinton.attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.Dynamic("ff"),
            abjad.Articulation(">"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["harp 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                -3,
                -3,
            ],
            8,
        )
    ),
    evans.PitchHandler([["ef,", "ef"]]),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    trinton.attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.Articulation(">"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["harp 2 voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                -2,
                2,
                1,
                2,
                1,
                3,
            ],
            8,
        )
    ),
    evans.PitchHandler(
        [
            "ef",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LaissezVibrer(),
            abjad.Articulation(">"),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 1], pitched=True),
    ),
    voice=score["percussion 1 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                -3,
                -3,
            ],
            8,
        )
    ),
    evans.PitchHandler([["bf'", "g''"]]),
    library.change_lines(lines=5, clef="treble"),
    library.boxed_markup(string="Glockenspiel"),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.Dynamic("f"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["percussion 3 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                3,
                -3,
                -3,
            ],
            8,
        )
    ),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f"), abjad.LaissezVibrer()],
        selector=trinton.pleaves(),
    ),
    voice=score["percussion 2 voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea([3], 8),
    ),
    evans.PitchHandler(["ef'''", "d'''", "bf''", "g''"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.StartSlur(),
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                "before",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-9 \center-column { \line { Tutto ciò che è romantico } \line { all'interno del corpo } } }"""
            ),
            abjad.Dynamic("ff"),
            abjad.StopSlur(),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 0, 1, -1]),
    ),
    voice=score["violin 1 voice"],
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                6,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                6,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            "bf'",
            "bf'",
            "g''",
            "f''",
            "ef''",
            "d''",
            "c''",
            "d''",
            "c''",
            "bf'",
            "af'",
            "fs'",
            "g'",
        ]
    ),
    trinton.beam_durations([(3, 8)]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                6,
                7,
                11,
            ]
        ),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([6, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, -100], 16)
        ),
        direction=abjad.UP,
        voice_name="violin 2 divisi voice",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler(
        [
            ["bf'''", "c''''"],
            "bf'",
            "g''",
            "f''",
            "ef''",
            "d''",
            "c''",
            "d''",
            "c''",
            "bf'",
            "af'",
            "fs'",
            ["bf'''", "c''''"],
        ]
    ),
    trinton.beam_durations([(3, 8)]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                6,
                7,
                11,
            ]
        ),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0, -1])),
    library.boxed_markup(
        string="Molto flaut., Doppelgriff",
    ),
    library.boxed_markup(
        string="( sim )", selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
    ),
    voice=score["violin 2 divisi voice"],
)


# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                6,
                2,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                1,
                6,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            "bf",
            "d'",
            "d''",
            "c''",
            "bf'",
            "af'",
            "g'",
            "fs'",
            "g'",
            "f'",
            "ef'",
            "d'",
            "c'",
        ]
    ),
    trinton.beam_durations([(3, 8)]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                7,
                8,
                11,
            ]
        ),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([6, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, -100], 16)
        ),
        direction=abjad.UP,
        voice_name="viola divisi voice",
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.PitchHandler(
        [
            ["ef'''", "f'''"],
            "d'",
            "d''",
            "c''",
            "bf'",
            "af'",
            "g'",
            "fs'",
            "g'",
            "f'",
            "ef'",
            "d'",
            ["ef'''", "f'''"],
        ]
    ),
    trinton.beam_durations([(3, 8)]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ]
        ),
        selector=trinton.select_leaves_by_index(
            [
                2,
                7,
                8,
                11,
            ]
        ),
    ),
    trinton.tremolo_command(selector=trinton.select_leaves_by_index([0, -1])),
    library.boxed_markup(
        string="Molto flaut., Doppelgriff",
    ),
    library.boxed_markup(
        string="( sim )", selector=trinton.select_leaves_by_index([-1])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                -1,
            ]
        ),
    ),
    voice=score["viola divisi voice"],
)

# cello music commands

# contrabass music commands

for voice_name, pitch_list in zip(
    ["cello voice", "contrabass voice"],
    [
        ["ef,", "g,", "c,"],
        ["ef,", "g,", "c"],
    ],
):

    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 2)),
        evans.RhythmHandler(
            evans.talea(
                [
                    3,
                ],
                8,
            ),
        ),
        trinton.attachment_command(
            attachments=[
                abjad.Tie(),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    1,
                ]
            ),
        ),
        evans.PitchHandler(pitch_list),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
                abjad.Dynamic("f"),
                abjad.StartHairpin(">o"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        voice=score[voice_name],
    )

# stop hairpins

for voice_name in [
    "oboe voice",
    "flute voice",
    "bassclarinet voice",
    "bassoon voice",
    "frenchhorn voice",
    "trumpet voice",
    "percussion 1 voice",
    "violin 1 voice",
    "violin 2 voice temp",
    "viola voice temp",
    "cello voice",
    "contrabass voice",
]:
    last_leaf = abjad.select.leaf(score[voice_name], -1)
    abjad.attach(abjad.StopHairpin(), last_leaf)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine(".|:", site="before"),
            library.ghost_metronome,
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = #(ghost-time-signature-one)",
                "before",
            ),
            abjad.LilyPondLiteral(
                r'\tweak text \markup \center-column {"12" "8"} \startMeasureSpanner',
                "absolute_before",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", "after"),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta "1"))""",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = #(ghost-time-signature-two)",
                "before",
            ),
            abjad.BarLine(":|.", site="after"),
            abjad.LilyPondLiteral(
                r"""\set Score.repeatCommands = #'((volta #f))""",
                site="after",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                0,
                1,
                1,
                1,
                -1,
                -1,
            ]
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\noBreak"), "after"],
        selector=trinton.select_leaves_by_index([2]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        3,
    ],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/25",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="25",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
