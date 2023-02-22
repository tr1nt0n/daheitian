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

score = library.daheitian_score([(9, 4), (9, 4), (9, 4)])

# music commands

for measure, string in zip(
    [1, 2, 3, 4],
    [
        r'\markup \fontsize #7 "Stage 1 ( always accumulating / interpolating)"',
        r'\markup \fontsize #7 "Stage 2"',
        r'\markup \fontsize #7 "Stage 3"',
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.Markup(string)],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    library.boxed_markup(string="Bangu", selector=trinton.select_leaves_by_index([0])),
    voice=score["percussion 2 voice"],
)

for measure, talea in zip(
    [
        1,
        2,
        3,
    ],
    ([8, 16, 16]),
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.talea(library.logistic_map(measure), talea)),
        voice=score["percussion 2 voice"],
    )

# percussion 2 music commands

for measure, note_selector, preprocessor, rest_durations in zip(
    [
        1,
        2,
        3,
    ],
    [
        trinton.patterned_tie_index_selector([1, 5], 8),
        trinton.patterned_tie_index_selector([1, 2, 5, 7], 8),
        trinton.patterned_tie_index_selector([0], 1),
    ],
    [
        trinton.fuse_eighths_preprocessor((6, 7, 5)),
        trinton.fuse_sixteenths_preprocessor((7, 6, 4, 9, 7, 3)),
        trinton.fuse_sixteenths_preprocessor(
            (
                6,
                4,
                9,
                7,
                7,
                5,
                4,
                7,
                7,
                8,
                8,
            )
        ),
    ],
    [
        [(6, 8), (7, 8), (5, 8)],
        [(7, 16), (6, 16), (4, 16), (9, 16), (7, 16), (3, 16)],
        [
            (6, 16),
            (4, 16),
            (9, 16),
            (7, 16),
            (7, 16),
            (5, 16),
            (4, 16),
            (7, 16),
            (7, 16),
            (8, 16),
            (8, 16),
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet([(1, 1)], treat_tuplets=False),
        ),
        rmakers.force_rest,
        trinton.force_note(selector=note_selector),
        trinton.treat_tuplets(),
        trinton.attachment_command(
            attachments=[abjad.Articulation("stopped")],
            selector=trinton.logical_ties(pitched=True, first=True),
        ),
        trinton.notehead_bracket_command(),
        trinton.beam_durations(
            rest_durations,
        ),
        voice=score["percussion 3 voice"],
        preprocessor=preprocessor,
    )

library.imbrication(
    voice=score["percussion 3 voice"],
    measures=[1, 2, 3],
    pitch=1,
    indices=[0, 3, 7],
    period=9,
    name="anvil imbrication",
    dynamic="f",
    secondary_dynamic="mp",
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Amboss"),
    voice=score["percussion 3 voice"],
)

library.remove_accidentals(voice=score["percussion 3 voice"], measure_range=(1, 3))

# bassoon music commands

for measure, note_selector, preprocessor, rest_durations in zip(
    [
        2,
        3,
    ],
    [
        trinton.patterned_tie_index_selector([0, 2, 7], 8),
        trinton.patterned_tie_index_selector([0], 1),
    ],
    [
        trinton.fuse_sixteenths_preprocessor((7, 6, 4, 9, 7, 3)),
        trinton.fuse_sixteenths_preprocessor(
            (
                6,
                4,
                9,
                7,
                7,
                5,
                4,
                7,
                7,
                8,
                8,
            )
        ),
    ],
    [
        [(7, 16), (6, 16), (4, 16), (9, 16), (7, 16), (3, 16)],
        [
            (6, 16),
            (4, 16),
            (9, 16),
            (7, 16),
            (7, 16),
            (5, 16),
            (4, 16),
            (7, 16),
            (7, 16),
            (8, 16),
            (8, 16),
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet([(1, 1, 1)], treat_tuplets=False),
        ),
        rmakers.force_rest,
        trinton.force_note(selector=note_selector),
        evans.PitchHandler([-1]),
        trinton.treat_tuplets(),
        trinton.notehead_bracket_command(),
        trinton.beam_durations(
            rest_durations,
        ),
        library.timbre_trills(),
        trinton.hooked_spanner_command(
            string="Schlagzunge",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=12.5,
        ),
        voice=score["bassoon voice"],
        preprocessor=preprocessor,
    )

abjad.attach(
    abjad.Clef("bass"), abjad.select.leaves(score["bassoon voice"], pitched=True)[0]
)

library.imbrication(
    voice=score["bassoon voice"],
    measures=[2, 3],
    pitch=-2,
    indices=[2, 4, 8],
    period=9,
    name="bassoon imbrication",
    dynamic="f",
    secondary_dynamic="mp",
)

library.remove_accidentals(voice=score["bassoon voice"], measure_range=(2, 3))

# bass clarinet music commands

for measure, note_selector, preprocessor, rest_durations in zip(
    [
        2,
        3,
    ],
    [
        trinton.patterned_tie_index_selector(
            [
                3,
                6,
            ],
            8,
        ),
        trinton.patterned_tie_index_selector([0], 1),
    ],
    [
        trinton.fuse_sixteenths_preprocessor((7, 6, 4, 9, 7, 3)),
        trinton.fuse_sixteenths_preprocessor(
            (
                6,
                4,
                9,
                7,
                7,
                5,
                4,
                7,
                7,
                8,
                8,
            )
        ),
    ],
    [
        [(7, 16), (6, 16), (4, 16), (9, 16), (7, 16), (3, 16)],
        [
            (6, 16),
            (4, 16),
            (9, 16),
            (7, 16),
            (7, 16),
            (5, 16),
            (4, 16),
            (7, 16),
            (7, 16),
            (8, 16),
            (8, 16),
        ],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            evans.tuplet([(1, 1, 1, 1, 1)], treat_tuplets=False),
        ),
        rmakers.force_rest,
        trinton.force_note(selector=note_selector),
        evans.PitchHandler([12]),
        trinton.treat_tuplets(),
        trinton.notehead_bracket_command(),
        trinton.beam_durations(
            rest_durations,
        ),
        library.timbre_trills(index=12),
        trinton.hooked_spanner_command(
            string="Schlagzunge",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=12,
        ),
        voice=score["bassclarinet voice"],
        preprocessor=preprocessor,
    )

library.imbrication(
    voice=score["bassclarinet voice"],
    measures=[2, 3],
    pitch=13,
    indices=[3, 5, 7],
    period=9,
    name="bassclarinet imbrication",
    dynamic="f",
    secondary_dynamic="mp",
)

library.remove_accidentals(voice=score["bassclarinet voice"], measure_range=(2, 3))

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1, 1, 1)], treat_tuplets=False),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(library.piano_kb_pitches(17)),
    trinton.notehead_bracket_command(),
    trinton.beam_durations(
        [
            (6, 16),
            (4, 16),
            (9, 16),
            (7, 16),
            (7, 16),
            (5, 16),
            (4, 16),
            (7, 16),
            (7, 16),
            (8, 16),
            (8, 16),
        ],
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1]),
        octave=2,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["piano 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            6,
            4,
            9,
            7,
            7,
            5,
            4,
            7,
            7,
            8,
            8,
        )
    ),
)

library.imbrication(
    voice=score["piano 1 voice"],
    measures=[2, 3],
    pitch=34,
    indices=[1, 7, 12],
    period=13,
    name="piano imbrication",
    dynamic="f",
    secondary_dynamic="mp",
)

# library.remove_accidentals(
#     voice=score["bassclarinet voice"],
#     measure_range=(2, 3)
# )

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
