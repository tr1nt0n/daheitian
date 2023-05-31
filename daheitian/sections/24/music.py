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
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.KeySignature(abjad.NamedPitchClass("ef"), abjad.Mode("major")),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["flute voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((15, 4, 4, 1)),
)

# oboe music commands

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
            "cs'''",
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
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((15, 4, 4, 1)),
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
