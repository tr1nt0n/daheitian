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

score = library.daheitian_score(ts.section_24_ts)

# commands

# monolith

library.monolith(score=score, measure=1)

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1,)]),
    ),
    rmakers.force_augmentation,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "g'",
            "af'",
            "a'",
            "bf'",
            "a'",
            "bf'",
            "c''",
            "df''",
            "cf''",
            "c''",
            "d''",
            "ef''",
            "d''",
            "ef''",
            "f''",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["flute voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((15, 4, 4, 1)),
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    library.boxed_markup(
        string="( zu Oboe )", selector=trinton.select_leaves_by_index([-1])
    ),
    voice=score["oboe voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(1,), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1,)]),
    ),
    rmakers.force_augmentation,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(selector=trinton.select_logical_ties_by_index([0])),
    evans.PitchHandler(
        [
            "c'''",
            "c'''",
            "g'''",
            "f'''",
            "ef'''",
            "d'''",
            "ef'''",
            "d'''",
            "c'''",
            "bf''",
            "af''",
            "bf''",
            "af''",
            "g''",
            "f''",
            "ef''",
            "d''",
        ]
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
            ]
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                2,
                3,
                1,
                2,
                3,
                4,
                1,
                2,
                3,
                4,
                5,
                1,
                2,
                3,
                4,
                5,
                6,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                7,
            ),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fpp"),
            abjad.StartHairpin("<"),
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                2,
                2,
                3,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([3, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["oboe voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((15, 4, 4, 1)),
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1,)]),
    ),
    rmakers.force_augmentation,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "f''",
            "e''",
            "d''",
            "e''",
            "f''",
            "g''",
            "f''",
            "g''",
            "gf''",
            "a''",
            "bf''",
            "b''",
            "bf''",
            "c'''",
            "df'''",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.KeySignature(abjad.NamedPitchClass("f"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassclarinet voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((15, 4, 4, 1)),
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(-1,), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1,)]),
    ),
    rmakers.force_augmentation,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "bf",
            "af",
            "g",
            "f",
            "gf",
            "f",
            "ef",
            "df",
            "d",
            "ef",
            "d",
            "c",
            "bf,",
            "g,",
            "af,",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((15, 4, 4, 1)),
)

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-15, 9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f'"]),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.KeySignature(abjad.NamedPitchClass("bf"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    voice=score["frenchhorn voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-15, 9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["bf"]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-15, 9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(
        string="Triangel",
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 2 voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -2,
                5,
                1,
                1,
                5,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "a''''",
            "cs''''",
            "f''''",
            "ef''''",
            "g''''",
            "b'''",
        ]
    ),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 7, 7, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                7,
                7,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=11,
        full_string=True,
        end_hook=True,
        end_hook_style="solid-line-with-hook",
    ),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -6,
                5,
                1,
                2,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                3,
                1,
                1,
                4,
            ],
            16,
            extra_counts=[
                0,
                1,
                4,
                -2,
            ],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([1])
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "cs''''",
            "f'''",
            "g'''",
            "b'''",
            "d'''",
            "e'''",
            "b''",
            "c''''",
            "a''",
            "e'''",
            "b''",
            "d'''",
            "f''",
            "bf''",
        ]
    ),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 9, 9, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                9,
                9,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=13,
        full_string=True,
        end_hook=True,
        end_hook_style="solid-line-with-hook",
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, 9], pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -12,
                1,
                1,
                1,
                2,
                1,
                1,
                2,
                1,
                1,
                1,
                1,
                3,
                1,
                1,
                4,
            ],
            16,
            extra_counts=[
                0,
                0,
                1,
                -1,
            ],
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "d'''",
            "c''",
            "c'''",
            "b'",
            "b''",
            "g''",
            "a''",
            "a'",
            "e''",
            "gs'",
        ]
    ),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 4, 4, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                4,
                -1,
            ],
            pitched=True,
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        full_string=True,
        end_hook=True,
        end_hook_style="solid-line-with-hook",
    ),
    trinton.notehead_bracket_command(),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (-1,),
                (
                    2,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        ),
    ),
    rmakers.rewrite_dots,
    evans.PitchHandler(
        [
            "a''",
            "a'",
            "g''",
            "g'",
            "b'",
            "fs",
        ]
    ),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("tenorvarC"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="SP",
        ),
        full_string=True,
        padding=12,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
            ],
            pitched=True,
        )
    ),
    trinton.notehead_bracket_command(),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            6,
            3,
            3,
        )
    ),
    beam_meter=True,
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
                mod_string=library.metronome_marks["4:5(4)=4"],
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
        2,
    ],
    fermata="ulongfermata",
    font_size="15",
    blank=False,
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/24",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="24",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
