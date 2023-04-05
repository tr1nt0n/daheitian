import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms
from itertools import cycle

# score

score = library.daheitian_score([(15, 4), (15, 4), (15, 4)])

for leaf, string in zip(
    [0, 1, 2],
    [
        "Stage 1 ( interpolation via single instruments moving to next stage )",
        "Stage 2",
        "Stage 3",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        trinton.attachment_command(
            attachments=[abjad.Markup(rf"\markup \fontsize #8 {{ {string} }}")],
            selector=trinton.select_leaves_by_index([leaf]),
        ),
        voice=score["Global Context"],
    )

# rhythms

for voice_name in [
    "contrabass voice",
    "cello voice",
    "viola voice",
    "violin 2 voice",
    "violin 1 voice",
    "bassoon voice",
    "bassclarinet voice",
    "oboe voice",
]:

    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (
                        1,
                        1,
                        1,
                        1,
                    )
                ],
                treat_tuplets=False,
            )
        ),
        rmakers.force_rest,
        trinton.force_note(selector=library._moths_selectors[1][voice_name]),
        trinton.beam_groups(beam_rests=True, selector=abjad.select.tuplets),
        trinton.treat_tuplets(),
        voice=score[voice_name],
        preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (2,)),
        evans.RhythmHandler(
            evans.tuplet(
                [
                    (
                        1,
                        1,
                        1,
                        1,
                    )
                ],
            )
        ),
        rmakers.force_rest,
        trinton.force_note(selector=library._moths_selectors[2][voice_name]),
        library.fuse_contiguous(),
        trinton.beam_groups(beam_rests=True, selector=abjad.select.tuplets),
        evans.RewriteMeterCommand(boundary_depth=-1),
        voice=score[voice_name],
        preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (3,)),
        evans.RhythmHandler(evans.talea(library.moths_talea(), 16)),
        trinton.beam_durations([(1, 4)]),
        voice=score[voice_name],
        preprocessor=trinton.fuse_quarters_preprocessor((1,)),
    )

# strings music commands

for voice_name, index in zip(
    [
        "contrabass voice",
        "cello voice",
        "viola voice",
        "violin 2 voice",
        "violin 1 voice",
    ],
    list(range(5)),
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.PitchHandler(
            pitch_list=trinton.rotated_sequence(
                [
                    -5,
                    2,
                    5,
                    -1,
                    5,
                ],
                index,
            ),
        ),
        library.change_lines(
            lines=4,
            clef="percussion",
        ),
        trinton.hooked_spanner_command(
            string="DP",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            padding=6.5,
            right_padding=3,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("fff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        voice=score[voice_name],
    )

# clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler([-3]),
    trinton.hooked_spanner_command(
        string="Überblasen",
        padding=5,
        right_padding=3,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["bassclarinet voice"],
)

# oboe and basson music commands

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["bassoon voice"], 0))

for voice_name, pitch_list in zip(
    [
        "bassoon voice",
        "oboe voice",
    ],
    [
        ["cqs,", "d"],
        ["c''"],
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 3)),
        evans.PitchHandler(pitch_list=pitch_list),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("fff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        library.attach_multiphonics(),
        voice=score[voice_name],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
