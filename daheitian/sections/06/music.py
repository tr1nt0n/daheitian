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

score = library.daheitian_score(ts.section_6_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea([_ for _ in library.logistic_map(11) if _ > 2], 16)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs'", "ds'"]),
    voice=score["flute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([_ for _ in library.logistic_map(5) if _ > 2], 16),
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
            "f'",
            "g'",
        ]
    ),
    library.flute_graces(),
    library.flute_grace_attachments(),
    trinton.change_notehead_command(notehead="la"),
    library.duet_1_2(padding=8),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Luftklang",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        right_padding=15,
    ),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["e'"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.change_notehead_command(notehead="la"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("( p )"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5, 5, 11, 12, 12, 19]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Luftklang",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, 5], first=True),
        right_padding=17,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=["af'"], selector=trinton.pleaves(grace=True)
    ),
    trinton.change_notehead_command(notehead="la"),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(),
    evans.PitchHandler([-1.5]),
    library.ring_mod_attachments(dynamics=["pppp", "ppp", "ppp", "pp"]),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([4], 1)),
        direction=abjad.DOWN,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 7, 3, 3, 1, 4, 4, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("ppp +"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 3, 3, -1]),
    ),
    voice=score["bassclarinet divisi voice"],
)

# bassoon music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
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
            evans.tuplet(
                [
                    (-1,),
                    (-1,),
                    (
                        1,
                        1,
                        1,
                    ),
                    (-1,),
                    (
                        1,
                        1,
                        1,
                    ),
                    (-1,),
                    (
                        1,
                        1,
                        1,
                    ),
                    (-1,),
                    (
                        1,
                        1,
                        1,
                    ),
                ]
            )
        ),
        direction=abjad.UP,
        voice_name="bassoon intermittent voice 1",
        from_components=False,
        preprocessor=trinton.fuse_eighths_preprocessor((3, 2, 7, 3, 3, 1, 4, 4, 5)),
        temp_name="temp",
    ),
    voice=score["bassoon voice"],
),

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(),
    evans.PitchHandler(["aqf,"]),
    library.ring_mod_attachments(
        dynamics=["pppp", "ppp", "ppp", "pp"], direction=abjad.DOWN
    ),
    trinton.notehead_bracket_command(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    library.wenn_keine_bk(),
    library.soli_1(padding=3),
    library.cue_eraser(),
    voice=score["bassoon intermittent voice 1"],
)

# piano music commands

for voice_name, hand in zip(
    [
        "piano 1 voice",
        "piano 2 voice",
    ],
    [
        "rh",
        "lh",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 5)),
        evans.RhythmHandler(
            evans.talea(
                [-4, 2, 2, 1, -1],
                8,
            )
        ),
        evans.PitchHandler(library.piano_chords(hand=hand, index=0)),
        library.handle_clefs(),
        trinton.ottava_command(
            selector=trinton.select_leaves_by_index(
                [
                    -1,
                    -1,
                ],
                pitched=True,
            )
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                -1,
            ],
            pitched=True,
        ),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    library.piano_pedals(),
    voice=score["piano 2 voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(16) if _ < 6], 8)),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([0], 2)),
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
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
    evans.RhythmHandler(evans.talea([-15, 100], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Langsam die mit Draht umwickelten Saiten mit einer Plastikkarte Kratzen",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 { \center-column { \line { Langsam die mit Draht } \line { umwickelten Saiten mit } \line { einer Plastikkarte Kratzen } } }""",
        full_string=True,
        padding=11,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.change_notehead_command(
        notehead="la",
    ),
    voice=score["harp 2 voice"],
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
    fermata="very-short-fermata",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( Ganz kurz, } \line { nur ein Atemzug ) } }"""
                ),
                r"- \tweak padding #-16",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["6:5(4)=4"],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/06",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
