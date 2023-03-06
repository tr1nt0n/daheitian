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

score = library.daheitian_score(
    [
        (8, 4),
    ]
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[abjad.Markup(r"\markup \fontsize #8 { ( not transposed ) }")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# music commands

# rhythm

for voice_name, int_voice_name in zip(
    ["frenchhorn voice", "tenortrombone voice"],
    ["frenchhorn 2 voice", "tenortrombone 2 voice"],
):

    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(rmakers.note),
        evans.IntermittentVoiceHandler(
            evans.RhythmHandler(evans.talea([8], 4)),
            direction=abjad.DOWN,
            voice_name=int_voice_name,
        ),
        voice=score[voice_name],
    )

# microtonal pitches

for voice_name in [
    "tenortrombone voice",
    "tenortrombone 2 voice",
    "frenchhorn voice",
    "frenchhorn 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.PitchHandler(["a"]),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]], as_ratios=True),
        trinton.force_accidentals_command(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        voice=score[voice_name],
    )

# 12TET pitches

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([library._brass_chord_pitches["trumpet voice"]]),
    voice=score["trumpet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([library._brass_chord_pitches["tuba voice"]]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Markup(r"\markup { if only one tubist, sing higher pitch }"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["tuba voice"],
)

# clean up markups

for voice_name in [
    "frenchhorn 2 voice",
    "tenortrombone 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        library.clean_cent_markups(
            selector=trinton.logical_ties(first=True, pitched=True)
        ),
        voice=score[voice_name],
    )

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 20),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/pitch",
# )

# globals

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/etc/pitch",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="brass_chord",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/sketch-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
