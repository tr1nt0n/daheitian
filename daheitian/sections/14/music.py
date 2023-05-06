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

score = library.daheitian_score(ts.section_14_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        evans.talea([_ for _ in library.logistic_map(36) if _ > 2], 16)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs''", "ds''"]),
    voice=score["flute voice"],
    beam_meter=True,
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 5)),
#     evans.IntermittentVoiceHandler(
#         rhythm_handler=evans.RhythmHandler(
#             evans.talea([_ for _ in library.logistic_map(5) if _ > 2], 16),
#         ),
#         direction=abjad.UP,
#         voice_name="flute divisi voice",
#     ),
#     voice=score["flute voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 5)),
#     evans.RewriteMeterCommand(),
#     evans.PitchHandler(
#         [
#             "f''",
#             "g''",
#         ]
#     ),
#     library.flute_graces(),
#     library.flute_grace_attachments(),
#     trinton.hooked_spanner_command(
#         string=library.return_boxed_markup(
#             string="Duett",
#         ),
#         full_string=True,
#         padding=11.5,
#         style="solid-line-with-hook",
#         selector=trinton.select_logical_ties_by_index([0, -1], first=True),
#         right_padding=15,
#     ),
#     voice=score["flute divisi voice"],
#     beam_meter=True,
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 5)),
#     library.flute_graces(),
#     trinton.pitch_with_selector_command(
#         pitch_list=["e''"], selector=trinton.pleaves(grace=True)
#     ),
#     library.flute_grace_attachments(),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.Dynamic("ppp"),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic("pp"),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic("p"),
#             trinton.make_custom_dynamic("( p )"),
#             abjad.StartHairpin("<"),
#             abjad.Dynamic("mp"),
#         ],
#         selector=trinton.select_leaves_by_index([0, 0, 5, 5, 11, 12, 12, 19]),
#     ),
#     trinton.hooked_spanner_command(
#         string=library.return_boxed_markup(
#             string="Solo",
#         ),
#         full_string=True,
#         padding=8,
#         style="solid-line-with-hook",
#         selector=trinton.select_logical_ties_by_index([0, 5], first=True),
#         right_padding=17,
#     ),
#     voice=score["flute voice"],
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (3, 5)),
#     trinton.pitch_with_selector_command(
#         pitch_list=["af''"], selector=trinton.pleaves(grace=True)
#     ),
#     voice=score["flute divisi voice"],
#     beam_meter=True,
# )

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
            library.movements[2],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["3:2(4)=4"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        11,
    ],
    font_size="15",
    fermata="uverylongfermata",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"""\markup \override #'(font-name . "Bodoni72 Book") \fontsize #7.5 \center-column { "18.5\"" }""")],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        12,
    ],
    font_size="15",
    fermata="ushortfermata",
    blank=False,
    clef_whitespace=False,
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[
    #     _
    #     for _ in library.all_voice_names
    #     if _ != "bassclarinet voice"
    #     and _ != "bassoon voice"
    #     and _ != "frenchhorn voice"
    #     and _ != "tenortrombone voice"
    #     and _ != "percussion 2 voice"
    #     and _ != "percussion 3 voice"
    # ],
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["tenortrombone voice"],
#     measures=[
#         10,
#         11,
#         12,
#     ],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/14",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="14",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
