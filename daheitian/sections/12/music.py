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

score = library.daheitian_score([(3, 2), (1, 4)])

# commands

library.monolith(score=score, measure=1)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.change_lines(lines=5, clef="treble"),
    voice=score["percussion 2 voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["2=4"],
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
        0,
    ],
    font_size="15",
    fermata="ushortfermata",
    blank=False,
    clef_whitespace=False,
)

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/12",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
