import abjad
import baca
import evans
import trinton
import random
from daheitian import library
from itertools import cycle


def example_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Flute(),
        ],
        groups=[
            1,
        ],
        time_signatures=time_signatures,
        filler=abjad.Rest,
    )

    return score


root_numerators = [
    # Roopak Taal
    2,
    2,
    3,
    # Jhap Taal
    2,
    3,
    2,
    3,
    # Deepchandi Taal
    3,
    4,
    3,
    4,
    # Ek Taal
    12,
]

partitioned_numerators = abjad.sequence.partition_by_counts(
    sequence=root_numerators,
    counts=[
        3,
        4,
        5,
    ],
    overhang=True,
)

helianthated_numerators = baca.sequence.helianthate(partitioned_numerators, n=-1, m=1)

taal_numerator_sequence = evans.Sequence(helianthated_numerators).flatten()

taal_ts_sequence = []

for numerator in taal_numerator_sequence:
    if numerator == 12:
        pair = (numerator, 8)
    else:
        pair = (numerator, 4)

    taal_ts_sequence.append(pair)

map_ts_sequence = trinton.make_ts_pair_list(
    numerators=library.map,
    denominators=cycle(
        [
            16,
        ]
    ),
)

# sketch_ts_sequence = []
#
# for _ in taal_ts_sequence:
#     sketch_ts_sequence.append(_)
#
# for _ in map_ts_sequence:
#     sketch_ts_sequence.append(_)
#
# score = example_score(sketch_ts_sequence)
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.Markup(r"\markup \fontsize #8 { Taal Time Signatures }"),
#         ],
#         selector=trinton.select_leaves_by_index([0])
#     ),
#     voice=score["Global Context"]
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (361,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.Markup(r"\markup \fontsize #8 { Logistic Map Time Signatures }"),
#             abjad.BarLine("||", "before")
#         ],
#         selector=trinton.select_leaves_by_index([0])
#     ),
#     voice=score["Global Context"]
# )
#
# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 1237)),
#     evans.RewriteMeterCommand(),
#     voice=score["flute voice"]
# )
#
# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
#     build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
#     segment_name="time_signatures",
#     includes=[
#         "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )
