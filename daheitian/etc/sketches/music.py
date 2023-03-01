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

score = library.daheitian_score([(4, 4), (15, 4)])

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"\markup \fontsize #8 { sectional incisions can be made between any two points }"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["c"]),
    library.aftergrace(
        notes_string="aqs,16",
        cons=(12, 13),
    ),
    library.aftergrace_attachments(),
    trinton.tremolo_command(
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([2, 5, 8, 10, 10], 8)),
    evans.PitchHandler(["aqs,", "gs", "e'", "e'", "e'"]),
    library.aftergrace(
        notes_string="b16", cons=(10, 11), selector=trinton.select_leaves_by_index([0])
    ),
    library.aftergrace(
        notes_string="e'16",
        cons=(10, 11),
        selector=trinton.select_leaves_by_index([1, 3, 4, 6]),
    ),
    library.aftergrace_attachments(
        notehead_change="highest",
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([3, 4, 6])
    ),
    trinton.linear_attachment_command(
        attachments=[
            evans.make_fancy_gliss(
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            evans.make_fancy_gliss(
                1,
                1,
                2,
                1,
                2,
                1,
                1,
            ),
            evans.make_fancy_gliss(
                2,
                3,
                1,
                1,
                1,
                2,
                1,
            ),
        ],
        selector=trinton.select_leaves_by_index([3, 4, 6]),
    ),
    trinton.tremolo_command(
        selector=trinton.pleaves(),
    ),
    voice=score["percussion 1 voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["a,"]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["contrabass voice"],
)

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 80),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
# )

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

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
