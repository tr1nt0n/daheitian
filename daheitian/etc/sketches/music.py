import abjad
import baca
import evans
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms

# score

score = library.daheitian_score(
    [
        (8, 4),
        (7, 4),
    ]
)

# flute

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(r"\markup \fontsize #6 { Stage 1 }"),
            abjad.Markup(r"\markup \fontsize #6 { Stage 2 }"),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(library.logistic_map(1), 32, treat_tuplets=False),
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                3,
            ],
            6,
        )
    ),
    evans.PitchHandler([13, "ds''"]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string="Solo",
        selector=trinton.select_leaves_by_index([0, -1]),
        padding=6.5,
        right_padding=2,
    ),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[16],
        selector=trinton.grace_selector(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    trinton.treat_tuplets(),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(library.logistic_map(11), 32, treat_tuplets=False),
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                3,
            ],
            6,
        )
    ),
    evans.PitchHandler([13, "ds''"]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    library.flute_graces(mod=2),
    trinton.pitch_with_selector_command(
        pitch_list=[16],
        selector=trinton.grace_selector(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    trinton.treat_tuplets(),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(library.logistic_map(0), 32, treat_tuplets=False),
        ),
        direction=abjad.UP,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                5,
            ],
            6,
        )
    ),
    evans.PitchHandler([19, 17]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    library.flute_graces(mod=2),
    trinton.pitch_with_selector_command(
        pitch_list=[20],
        selector=trinton.grace_selector(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    trinton.treat_tuplets(),
    voice=score["intermittent_voice"],
)

# piano

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                1,
                2,
                1,
                4,
                4,
                2,
                4,
                1,
            ],
            8,
        )
    ),
    evans.PitchHandler(transforms.piano_chords_rh),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            3,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.patterned_tie_index_selector([0], 3, first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Ottava(n=1), abjad.Ottava(n=0, site="after")],
        selector=trinton.patterned_tie_index_selector([2], 3, first=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                1,
                2,
                1,
                4,
                4,
                2,
                4,
                1,
            ],
            8,
        )
    ),
    evans.PitchHandler(transforms.piano_chords_lh),
    trinton.force_accidentals_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
            ],
            3,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.patterned_tie_index_selector([0], 3, first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Ottava(n=1), abjad.Ottava(n=0, site="after")],
        selector=trinton.patterned_tie_index_selector([2], 3, first=True),
    ),
    library.piano_pedals(),
    voice=score["piano 2 voice"],
)

# harp

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    library.pitch_harp_arpeggi(),
    trinton.notehead_bracket_command(),
    library.harp_clefs(),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["harp voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            4,
            1,
            2,
            1,
            4,
            4,
            2,
            4,
            1,
        )
    ),
    beam_meter=True,
)

# write sc file

# trinton.make_sc_file(
#     score=score,
#     tempo=((1, 4), 80),
#     current_directory="/Users/trintonprater/scores/daheitian/daheitian/etc/sketches",
# )

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

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
