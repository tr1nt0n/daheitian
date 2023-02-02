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
        (9, 4),
        (9, 4),
        (9, 4),
        (9, 4),
    ]
)

# commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.even_division([4])),
    evans.PitchHandler(transforms.piano_chords_rh),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
            ],
            3,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.patterned_leaf_index_selector([0], 3),
    ),
    trinton.attachment_command(
        attachments=[abjad.Ottava(n=1), abjad.Ottava(n=0, site="after")],
        selector=trinton.patterned_leaf_index_selector([2], 3),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(evans.even_division([4])),
    evans.PitchHandler(transforms.piano_chords_lh),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.patterned_leaf_index_selector(
            [
                1,
            ],
            3,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.patterned_leaf_index_selector([0], 3),
    ),
    trinton.attachment_command(
        attachments=[abjad.Ottava(n=1), abjad.Ottava(n=0, site="after")],
        selector=trinton.patterned_leaf_index_selector([2], 3),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    library.pitch_harp_arpeggi(),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.harp_clefs(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
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
