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

score = library.daheitian_score(
    [
        (1, 4),
        (3, 2),
        (5, 4),
        (3, 4),
        (1, 4),
    ]
)

# commands

# invisibility by hand

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (5,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override MultiMeasureRest.transparent = ##t",
                    "before",
                )
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(evans.even_division([32])),
    library.flute_flageolets(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    library.a2_whistletone(),
    voice=score["flute voice"],
)


# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    3,
                    1,
                    1,
                    2,
                    1,
                ),
                (8, 1, -1),
                (-1,),
            ]
        )
    ),
    trinton.respell_tuplets_command(),
    evans.PitchHandler([24]),
    trinton.notehead_bracket_command(),
    library.horn_monolith_attachments(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([2, 4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Bewegen die Ventile schnell und wahllos + Flatterzunge.",
        ),
        full_string=True,
        padding=8.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<|"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    voice=score["frenchhorn voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
    beam_meter=True,
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(evans.talea([-3, 1000], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([["es''''", "f''''"]]),
    trinton.force_accidentals_command(
        selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Arpeggio(),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Mit einem Triangelschläger zwischen den Saiten",
        ),
        full_string=True,
        padding=11,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=68,
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=trinton.boxed_markup(
            string=["Mit einem Triangelschläger", "zwischen den Saiten"],
            tweaks=None,
            column="\center-column",
            font_name="Bodoni72 Book",
            fontsize=2,
            string_only=True,
        ),
        full_string=True,
        padding=13,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.tremolo_command(),
    voice=score["harp 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1, -1), (-1,)])),
    trinton.respell_tuplets_command(),
    evans.PitchHandler([["c'", "df'"]]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.boxed_markup(string="Röhrenglocken"),
    library.change_lines(lines=5, clef="bass"),
    library.piano_pedals(),
    voice=score["percussion 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace(),
    evans.PitchHandler(
        [
            5,
        ]
    ),
    library.change_lines(
        lines=4,
        clef="strings",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP",
        ),
        full_string=True,
        padding=11,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        right_padding=2,
        command="One",
    ),
    library.soli_1(padding=12),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Kratzen",
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
        padding=8,
        full_string=True,
        right_padding=-2,
        command="Two",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Kratzen",
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
        padding=8,
        full_string=True,
        right_padding=-4,
        command="Two",
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["contrabass voice"],
)

# colophon

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #50 \right-column { \line { Providence, RI. \hspace #0.75 – \hspace #0.75 Leipzig, DE. } \line { November 2022 \hspace #0.75 – \hspace #0.75 March 2024. } } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["harp 1 voice"],
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
)

trinton.fermata_measures(
    score=score,
    measures=[
        5,
    ],
    fermata="very-long-fermata",
    font_size="15",
    last_measure=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\pageBreak", "absolute_before"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"], padding=7
            )
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
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["4.=4"],
                padding=10,
            )
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
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\break", "before"),
            abjad.LilyPondLiteral(r"\noBreak", "before"),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book") \fontsize #7.5 \center-column { "37\"" }"""
            ),
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "flute voice" and _ != "harp 1 voice" and _ != "contrabass voice"
    ],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["flute voice"],
    measures=[
        1,
    ],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["harp 1 voice"],
    measures=[
        1,
        2,
    ],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["contrabass voice"],
    measures=[
        1,
        2,
        3,
    ],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="harp",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="31",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
