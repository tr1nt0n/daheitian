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

score = library.daheitian_score([(3, 2), (1, 4)])

# commands

library.monolith(score=score, measure=1, flute_denom=32)

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
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["2=4"],
                padding=9,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        0,
    ],
    font_size="15",
    fermata="short-fermata",
    blank=False,
    clef_whitespace=False,
)

# cues


for voice_name in [
    "bassclarinet voice",
    "bassoon voice",
    "harp 1 voice",
    "percussion 3 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\override Staff.MultiMeasureRest.transparent = ##t", site="before"
                ),
                abjad.LilyPondLiteral(
                    r"\revert Staff.MultiMeasureRest.transparent", site="absolute_after"
                ),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                ]
            ),
            tag=abjad.Tag("+PARTS"),
        ),
        trinton.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(
                evans.tuplet(
                    [
                        (
                            3,
                            1,
                            1,
                            2,
                            1,
                        ),
                        (8, 1, -1),
                        (-1,),
                    ]
                )
            ),
            direction=abjad.DOWN,
            voice_name=f"{voice_name} cue",
            from_components=False,
            preprocessor=trinton.fuse_quarters_preprocessor((2,)),
            temp_name="secondary",
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.respell_tuplets_command(),
        evans.PitchHandler([24]),
        trinton.notehead_bracket_command(),
        library.horn_monolith_attachments(),
        trinton.attachment_command(
            attachments=[
                abjad.Articulation(">"),
            ],
            selector=trinton.select_leaves_by_index([2, 4, -1], pitched=True),
            direction=abjad.UP,
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("staccato")],
            selector=trinton.logical_ties(first=True, pitched=True),
            direction=abjad.UP,
        ),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="Bewegen die Ventile schnell und wahllos + Flatterzunge.",
            ),
            full_string=True,
            padding=7.5,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Dynamic("mf"),
                abjad.StartHairpin("<|"),
                abjad.Dynamic("fff"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        ),
        trinton.tremolo_command(selector=trinton.pleaves()),
        library.change_lines(lines=5, clef="treble"),
        library.einsatz(
            following_text="Hörner",
            selector=trinton.pleaves(),
            direction=abjad.UP,
            tweaks=None,
            padding=5,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )

    library.blank_measure_by_hand(score=score, voice_names=[voice_name], measures=[1])

# # violin 1 line breaking
#
# library.line_break(score=score, measure_range=(1, 2), break_method="noBreak")

# trombone line breaking

library.line_break(score=score, measure_range=(2,), break_method="break")

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="harp",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="12",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
