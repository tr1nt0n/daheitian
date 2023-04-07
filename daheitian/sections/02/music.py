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

score = library.daheitian_score(ts.section_1_ts)

library.standard_clefs(score)

# commands


# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# parts

trinton.extract_parts(score)

# parts globals

# render parts file without whiteout_empty_staves

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/01",
#     build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
#     segment_name="02_parts",
#     includes=[
#         "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )

# score globals

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             library.metronome_markups(
#                 met_string=library.metronome_marks["72"],
#             ),
#             library.movements[0],
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP
#     ),
#     voice=score["Global Context"]
# )

# cutaway

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank"
# )

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/02",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
