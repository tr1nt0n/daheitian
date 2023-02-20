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

score = library.daheitian_score([(15, 4), (15, 4), (15, 4), (15, 4)])

# music commands

for measure, string in zip(
    [1, 2, 3, 4],
    [
        r'\markup \fontsize #7 "Stage 1 ( accumulate instrumentation to Stage 2 )"',
        r'\markup \fontsize #7 "Stage 2 ( all cresc., then dissipate instrumentation to Stage 3 )"',
        r'\markup \fontsize #7 "Stage 3"',
        r'\markup \fontsize #7 "Stage 4"',
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.Markup(string)],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea(library.logistic_map(), 16, treat_tuplets=False)),
    evans.PitchHandler(["cs''", "ds''"]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[16], selector=trinton.grace_selector()
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="Solo", selector=trinton.select_leaves_by_index([0, -1]), padding=9
    ),
    trinton.treat_tuplets(),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            2,
            3,
        ),
    ),
    evans.RhythmHandler(evans.talea(library.logistic_map(9), 16, treat_tuplets=False)),
    evans.PitchHandler(["cs''", "ds''"]),
    trinton.hooked_spanner_command(
        string="Duo", selector=trinton.select_leaves_by_index([0, -1]), padding=9
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([11, -1]),
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(library.logistic_map(), 16, treat_tuplets=False)
        ),
        direction=abjad.UP,
        voice_name="flute a voice",
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    library.flute_graces(mod=2),
    trinton.pitch_with_selector_command(
        pitch_list=[16], selector=trinton.grace_selector()
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            2,
            3,
        ),
    ),
    evans.PitchHandler(["f''", "g''"]),
    library.flute_graces(mod=2),
    trinton.pitch_with_selector_command(
        pitch_list=["af''"], selector=trinton.grace_selector()
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    voice=score["flute a voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.treat_tuplets(),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea(library.logistic_map(33), 16, treat_tuplets=False)),
    evans.PitchHandler(["f''", "g''"]),
    trinton.tremolo_command(selector=trinton.pleaves()),
    library.flute_graces(mod=2),
    trinton.pitch_with_selector_command(
        pitch_list=["af''"], selector=trinton.grace_selector()
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.grace_selector(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.hooked_spanner_command(
        string="Solo", selector=trinton.select_leaves_by_index([0, -1]), padding=9
    ),
    trinton.treat_tuplets(),
    voice=score["flute voice"],
)

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                3,
                5,
                2,
            ],
            8,
        )
    ),
    evans.PitchHandler(transforms.piano_chords_rh),
    library.handle_clefs(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([2, 3, 6, 6, 10, 10])
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea(
            [
                4,
                3,
                5,
                2,
            ],
            8,
        ),
    ),
    evans.PitchHandler(transforms.piano_chords_lh),
    library.piano_pedals(),
    library.handle_clefs(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([2, 3, 6, 6, 10, 10])
    ),
    voice=score["piano 2 voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([7, 3, 5, 2, 1], 8)),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
            ],
            2,
        )
    ),
    evans.PitchHandler(pitch_list=library.harp_chords),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.tremolo_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo"), abjad.Arpeggio()],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["harp 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    library.change_lines(
        lines=1, clef="percussion", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.hooked_spanner_command(
        string="Kratzen Sie die mit Draht umwickelten Saiten mit einer Plastikkarte ab.",
        direction="down",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=195,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.change_notehead_command(
        notehead="la",
        selector=trinton.pleaves(),
    ),
    voice=score["harp 2 voice"],
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
