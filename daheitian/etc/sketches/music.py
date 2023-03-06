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

score = library.daheitian_score([(8, 4), (15, 4)])

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.arrow_spanner_command(
        l_string=r"\markup \fontsize #8 { Monolith }",
        r_string=r"\markup \fontsize #8 { Living Mass }",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=3,
        tempo=True,
    ),
    voice=score["Global Context"],
)

# measure 1 commands

for voice_name in ["trumpet voice", "tuba voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.noteheads_only(),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\-", "after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

abjad.attach(abjad.Clef("bass"), abjad.select.leaf(score["tuba voice"], 0))

for voice_name, fundamental in zip(
    [
        "frenchhorn voice",
        "tenortrombone voice",
    ],
    [
        "e'",
        "a",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(rmakers.note),
        evans.PitchHandler([fundamental]),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]], as_ratios=True),
        trinton.noteheads_only(),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\-", "after")],
            selector=trinton.select_leaves_by_index([0]),
        ),
        trinton.force_accidentals_command(selector=trinton.pleaves()),
        voice=score[voice_name],
    )

for voice_name in [
    "frenchhorn voice",
    "trumpet voice",
    "tenortrombone voice",
    "tuba voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-7 \center-column { \line { Choralisches Atmen, } \line { jeder Atemzug cresc. dal niente } } }"""
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            library.logistic_map(index=20),
            16,
            extra_counts=[
                2,
                0,
                -1,
                0,
            ],
        ),
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([1, 5, 9], 10)),
    evans.PitchHandler(["e'"]),
    evans.PitchHandler(
        [library._brass_chord_pitches["tenortrombone voice"]], as_ratios=True
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato"), abjad.Dynamic("fp")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.logical_ties(first=True, pitched=True)
    ),
    trinton.notehead_bracket_command(),
    voice=score["frenchhorn voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 5, 4)),
)

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(library.logistic_map(index=0), 16, extra_counts=[0, -2]),
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([2, 4], 6)),
    evans.PitchHandler([24]),
    library.aftergrace(
        notes_string="c'''16",
        cons=(15, 16),
    ),
    library.aftergrace_attachments(
        dynamic="ffff",
        articulation="marcato",
        notehead_change="highest",
    ),
    trinton.linear_attachment_command(
        attachments=cycle(
            [
                evans.make_fancy_gliss(
                    1,
                    1,
                    3,
                    1,
                    1,
                    4,
                    1,
                    1,
                    1,
                    1,
                    2,
                    1,
                ),
                evans.make_fancy_gliss(
                    4,
                    5,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
                evans.make_fancy_gliss(1, 1, 1, 1, 1, 1, 2, 3, 4, 5),
            ]
        ),
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="highest",
        selector=trinton.pleaves(),
    ),
    trinton.notehead_bracket_command(),
    voice=score["trumpet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
)

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(library.logistic_map(index=9), 16, extra_counts=[0, -1]),
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            2,
        )
    ),
    evans.PitchHandler([-24]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("ffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["tenortrombone voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            1,
            2,
        )
    ),
)

# tuba music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([library._brass_chord_pitches["tuba voice"]]),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["tuba voice"],
)

# Choralisches Atmen, jeder Atemzug cresc. dal niente

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
