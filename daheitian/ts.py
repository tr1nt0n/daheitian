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

# section 1

section_1_ts = taal_ts_sequence[0:2]

# section 2

section_2_ts = taal_ts_sequence[2:4]

section_2_ts.insert(0, (1, 4))

section_2_ts.append((1, 4))

# section 3

section_3_ts = taal_ts_sequence[4:6]

for _ in map_ts_sequence[0:3]:
    section_3_ts.append(_)

# section 4

section_4_ts = taal_ts_sequence[6:11]

section_4_ts.insert(4, (1, 4))

section_4_ts.insert(6, (1, 4))

# section 5

section_5_ts = map_ts_sequence[3:10]

section_5_ts.append((1, 4))

# section 6

section_6_ts = taal_ts_sequence[11:16]

section_6_ts.append((1, 4))

# section 7

section_7_ts = taal_ts_sequence[16:20]

section_7_ts.append((1, 4))

# section 8

section_8_ts = taal_ts_sequence[20:23]

section_8_ts.append((1, 4))

# section 9

section_9_ts = taal_ts_sequence[23:28]

# section 10

section_10_ts = taal_ts_sequence[28:31]

# section 11

section_11_ts = taal_ts_sequence[31:40]

# section 13

section_13_ts = map_ts_sequence[10:25]

# section 14

section_14_ts = taal_ts_sequence[40:50]

section_14_ts.append((1, 4))
section_14_ts.append((1, 4))

# section 15

section_15_ts = taal_ts_sequence[50:57]

# section 16

section_16_ts = taal_ts_sequence[57:75]

section_16_ts.insert(0, (1, 4))

section_16_ts.insert(10, (3, 2))

# section 18

section_18_ts = taal_ts_sequence[75:80]

section_18_ts.insert(0, (1, 4))

for _ in map_ts_sequence[25:27]:
    section_18_ts.append(_)

# section 19

section_19_ts = map_ts_sequence[27:54]

section_19_ts.append((5, 4))

section_19_ts.append((1, 4))

# section 20

section_20_ts = taal_ts_sequence[80:82]

# section 21

section_21_ts = taal_ts_sequence[82:89]

# section 22

section_22_ts = taal_ts_sequence[89:91]

# section 23

section_23_ts = taal_ts_sequence[91:98]

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
