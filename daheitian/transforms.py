import abjad
import baca
import evans
import itertools
import random
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library

# initial link chords

initial_progression = [
    [
        -26,
        -21,
        -12,
    ],
    [
        -4,
        7,
        13,
        14,
        17,
        21,
    ],
    [
        23,
        30,
        40,
    ],
]

cycled_progression = []

for _ in range(0, 12):
    for chord in initial_progression:
        cycled_progression.append(chord)

alpha_progression = []

pattern_1 = abjad.Pattern(indices=[1, 4, 5], period=6)
pattern_2 = abjad.Pattern(
    indices=[
        0,
        6,
        9,
    ],
    period=10,
)

for i, chord in zip(range(len(cycled_progression)), cycled_progression):
    if pattern_1.matches_index(i, len(cycled_progression)):
        alpha = evans.Sequence(chord).alpha(category=1)
        if chord == [
            -26,
            -21,
            -12,
        ]:
            alpha = [_ * -1 for _ in alpha]
            alpha_progression.append(alpha)
        elif chord == [
            -4,
            7,
            13,
            14,
            17,
            21,
        ]:
            new_alpha = []
            for _ in alpha:
                if alpha.index(_) == 0:
                    new_alpha.append(_ * -1)
                else:
                    new_alpha.append(_)
            alpha_progression.append(new_alpha)

        else:
            alpha_progression.append(alpha)

    elif pattern_2.matches_index(i, len(cycled_progression)):
        alpha = evans.Sequence(chord).alpha(category=2)
        if chord == [
            -26,
            -21,
            -12,
        ]:
            alpha = [_ * -1 for _ in alpha]
            alpha_progression.append(alpha)
        elif chord == [
            -4,
            7,
            13,
            14,
            17,
            21,
        ]:
            new_alpha = []
            for _ in alpha:
                if alpha.index(_) == 0:
                    new_alpha.append(_ * -1)
                else:
                    new_alpha.append(_)
            alpha_progression.append(new_alpha)

        else:
            alpha_progression.append(alpha)
    else:
        alpha_progression.append(chord)

transposed_progression = []

for chord in alpha_progression[0:6]:
    transposed_progression.append(chord)

for chord in alpha_progression[6:12]:
    if alpha_progression.index(chord) % 2 == 0:
        transposed_progression.append(trinton.transpose(chord, 1))
    else:
        transposed_progression.append(trinton.transpose(chord, 2))

for chord, transpose in zip(
    alpha_progression[12:24],
    [
        3,
        3,
        4,
        3,
        2,
        4,
        6,
        4,
        6,
        7,
        7,
        5,
    ],
):
    transposed_progression.append(trinton.transpose(chord, transpose))

for chord in alpha_progression[24:36]:
    if alpha_progression.index(chord) % 2 == 0:
        transposed_progression.append(trinton.transpose(chord, 6))
    else:
        transposed_progression.append(trinton.transpose(chord, 7))

final_progression = []

for _ in transposed_progression:
    if isinstance(_, evans.Sequence):
        new_chord = []
        for n in _:
            new_chord.append(n)
        final_progression.append(new_chord)
    else:
        final_progression.append(_)

random.seed(2)

final_progression = random.sample(final_progression, len(final_progression))

piano_chords_rh = []

piano_chords_lh = []

for chord in final_progression:
    if len(chord) == 3:
        rh_chord = [_ for _ in chord[1:]]
        lh_chord = [chord[0]]
        piano_chords_rh.append(rh_chord)
        piano_chords_lh.append(lh_chord)

    else:
        rh_chord = [_ for _ in chord[2:]]
        lh_chord = [_ for _ in chord[0:2]]
        piano_chords_rh.append(rh_chord)
        piano_chords_lh.append(lh_chord)

piano_chords_rh = trinton.remove_adjacent(piano_chords_rh)

piano_chords_lh = trinton.remove_adjacent(piano_chords_lh)
