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
        (15, 4),
    ]
)

# flute

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea(library.logistic_map(1), 32, treat_tuplets=False),),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector([3,], 6)
    ),
    evans.PitchHandler([13, "ds''"]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[16],
        selector=trinton.grace_selector(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    trinton.treat_tuplets(),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6.5,
        right_padding=2,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.even_division([4])),
    evans.PitchHandler(transforms.initial_progression),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    voice=score["piano 2 voice"]
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
