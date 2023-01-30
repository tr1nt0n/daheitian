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

score = library.daheitian_score(
    [
        (34, 16),
    ]
)

# flute

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.even_division([16])),
    evans.PitchHandler(transforms.piano_chords_rh),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([1, 9, 13, 16, 18, 25, 32, ])
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0, 7, 11, 14, 17, 24, 31, 33,])
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index(
            [
                1,
                1,
                3,
                3,
                5,
                5,
                9,
                9,
                19,
                20,
                22,
                22,
                26,
                29,
                32,
                32,
            ],
        )
    ),
    voice=score["piano 1 voice"]
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.even_division([16])),
    evans.PitchHandler(transforms.piano_chords_lh),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([1, 9, 13, 16, 18, 25, 32, ])
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0, 7, 11, 14, 17, 24, 31, 33,])
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index(
            [
                1,
                1,
                3,
                3,
                5,
                5,
                9,
                9,
                19,
                20,
                22,
                22,
                26,
                29,
                32,
                32,
            ],
        )
    ),
    voice=score["piano 2 voice"]
)

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 15),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/pitch",
# )

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/etc/pitch",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="piano_and_harp",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
