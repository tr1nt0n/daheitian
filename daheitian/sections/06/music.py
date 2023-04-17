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

score = library.daheitian_score(ts.section_6_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea([_ for _ in library.logistic_map(11) if _ > 2], 16)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs''", "ds''"]),
    voice=score["flute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([_ for _ in library.logistic_map(5) if _ > 2], 16),
        ),
        direction=abjad.UP,
        voice_name="flute divisi voice",
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            "f''",
            "g''",
        ]
    ),
    library.flute_graces(),
    library.flute_grace_attachments(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Duet",
        ),
        full_string=True,
        padding=11.5,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        right_padding=15,
    ),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["e''"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("( p )"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5, 5, 11, 12, 12, 19]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Solo",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, 5], first=True),
        right_padding=17,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=["af''"], selector=trinton.pleaves(grace=True)
    ),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-1.5]),
    library.ring_mod_attachments(dynamics=["ppp", "pp", "pp", "p"]),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([4], 1)),
        direction=abjad.DOWN,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((5, 7, 3, 3, 1, 4, 4, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, 3, 3, -1]),
    ),
    voice=score["bassclarinet divisi voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# parts globals

# parts

trinton.extract_parts(score)

# render parts file without whiteout_empty_staves

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/06",
#     build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
#     segment_name="06_parts",
#     includes=[
#         "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )

# score globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["6:5(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/06",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
