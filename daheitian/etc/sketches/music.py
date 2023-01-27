import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library

# score

score = library.daheitian_score(
    [
        (4, 4),
        (3, 4),
        (7, 8),
        (3, 4),
        (12, 8),
        (4, 4),
        (4, 4),
        (4, 4),
        (6, 8),
        (6, 8),
        (7, 8),
        (7, 8),
    ]
)

# commands

for measure in [
    1,
    3,
    5,
    7,
    9,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(evans.tuplet([(8, 1)])),
        rmakers.rewrite_dots,
        evans.PitchHandler(["bs,", "aqs,"]),
        trinton.attachment_command(
            attachments=[abjad.Glissando()],
            selector=trinton.patterned_leaf_index_selector([0], 2),
        ),
        trinton.tremolo_command(selector=trinton.pleaves()),
        trinton.notehead_bracket_command(),
        voice=score["percussion 1 voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["percussion 1 voice"],
)

for measure in [
    1,
    3,
    5,
    7,
    9,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(rmakers.note),
        evans.RewriteMeterCommand(),
        evans.PitchHandler(["as,"]),
        voice=score["contrabass voice"],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["contrabass voice"],
)

# write sc file
#
# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 40),
#     current_directory="/Users/trintonprater/scores/graveyard/graveyard/etc/rhythm",
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
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
