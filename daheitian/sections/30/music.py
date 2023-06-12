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

score = library.daheitian_score(ts.section_30_ts)

# commands

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["a,,,"]),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LaissezVibrer(),
            trinton.make_custom_dynamic("ffffffffff"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 2 voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 16)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["a,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("die Dynamik des Klaviers anpassen", name_is_textual=True),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                6,
            ]
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 15)], nested=True)
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 16)),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([3], 16)),
        direction=abjad.UP,
        voice_name="contrabass divisi voice",
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        )
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        )
    ),
    trinton.detach_command(
        detachments=[abjad.Tie],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        ),
    ),
    voice=score["contrabass divisi voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
    evans.PitchHandler(["e"]),
    trinton.change_notehead_command(notehead="harmonic-mixed"),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a,")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["contrabass voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["contrabass divisi voice"],
    beam_meter=True,
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.fermata_measures(
    score=score,
    measures=[
        1,
    ],
    fermata="uverylongfermata",
    font_size="15",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( bis Klavierresonanz } \line { \underline {fast} aufhört ) } }"""
                ),
                r"- \tweak padding #-11",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[library.quarter_60], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["Global Context"],
)

# cutaway

# trinton.whiteout_empty_staves(
#     score=score,
#     cutaway="blank",
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/30",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="30",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
