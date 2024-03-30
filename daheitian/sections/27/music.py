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

score = library.daheitian_score([(1, 4) for _ in range(0, 37)])

# commands

# invisible mm_rests

for voice_name in library.all_voice_names:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 37)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override MultiMeasureRest.transparent = ##t", "opening"
                )
            ],
            selector=abjad.select.leaves,
            tag=abjad.Tag("+PARTS"),
        ),
        voice=score[voice_name],
    )

# brass music commands


for voice_name in ["frenchhorn voice", "tenortrombone voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (34, 36)),
        evans.RhythmHandler(
            evans.talea(
                [
                    3,
                ],
                8,
            )
        ),
        library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.noteheads_only(),
        trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([-1])),
        trinton.force_accidentals_command(
            selector=trinton.select_leaves_by_index([0], pitched=True)
        ),
        library.ring_mod_attachments(
            dynamics=["mp"], direction=abjad.DOWN, clean_swells=True, zero_padding=True
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((3,)),
    )

for voice_name in ["trumpet voice", "tuba voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (34, 36)),
        evans.RhythmHandler(
            evans.talea(
                [
                    3,
                ],
                8,
            )
        ),
        library.aftergrace(
            selector=trinton.select_leaves_by_index(
                [-1],
            )
        ),
        evans.PitchHandler([library._brass_chord_pitches[voice_name]]),
        trinton.noteheads_only(),
        trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([-1])),
        library.ring_mod_attachments(
            dynamics=["mp"], direction=abjad.DOWN, clean_swells=True, zero_padding=True
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_preprocessor((3,)),
    )

for voice_name, clef in zip(["frenchhorn voice", "tuba voice"], ["treble", "bass"]):
    first_pleaf = abjad.select.leaves(score[voice_name], pitched=True)[0]
    abjad.attach(abjad.Clef(clef), first_pleaf)
    whitespace = abjad.LilyPondLiteral(
        r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-3.5 . 0)",
        "before",
    )
    abjad.attach(whitespace, first_pleaf)

# strings final aftergraces

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (37,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override MultiMeasureRest.transparent = ##t", "opening"
                )
            ],
            selector=abjad.select.leaves,
            tag=abjad.Tag("+SCORE"),
        ),
        library.aftergrace(selector=trinton.select_leaves_by_index([0])),
        trinton.noteheads_only(),
        trinton.transparent_noteheads(selector=trinton.pleaves()),
        voice=score[voice_name],
    )

# violin 1 music commands

for measure in [
    1,
    4,
    6,
    13,
    14,
    17,
    18,
    28,
    29,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        trinton.noteheads_only(),
        voice=score["violin 1 voice"],
    )

violin1_pitches_doubled = []

for p1, p2 in zip(
    library._bloom_pitches["violin 1 voice"][5],
    library._bloom_pitches["violin 1 voice"][5],
):
    violin1_pitches_doubled.append(p1)
    violin1_pitches_doubled.append(p1)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    evans.PitchHandler(pitch_list=violin1_pitches_doubled),
    trinton.attachment_command(
        attachments=[trinton.make_custom_dynamic("sffz")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Articulation(">"),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["violin 1 voice"],
)

# violin 2 music commands

for measure in [1, 7, 8, 14, 16, 17, 18, 28, 29]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        trinton.noteheads_only(),
        voice=score["violin 2 voice"],
    )

violin2_pitches_doubled = []

for p1, p2 in zip(
    library._bloom_pitches["violin 2 voice"][5],
    library._bloom_pitches["violin 2 voice"][5],
):
    violin2_pitches_doubled.append(p1)
    violin2_pitches_doubled.append(p1)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    evans.PitchHandler(pitch_list=violin2_pitches_doubled),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Articulation(">"),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["violin 2 voice"],
)

# viola music commands

for measure in [1, 5, 6, 10, 12, 20, 23, 26, 29]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        trinton.noteheads_only(),
        voice=score["viola voice"],
    )

viola_pitches_doubled = []

for p1, p2 in zip(
    library._bloom_pitches["viola voice"][5],
    library._bloom_pitches["viola voice"][5],
):
    viola_pitches_doubled.append(p1)
    viola_pitches_doubled.append(p1)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    evans.PitchHandler(pitch_list=viola_pitches_doubled),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            trinton.make_custom_dynamic("sffz"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Articulation(">"),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["viola voice"],
)

# cello music commands

for measure in [1, 6, 8, 11, 12, 16, 18, 26, 29]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        evans.RhythmHandler(
            rmakers.note,
        ),
        trinton.noteheads_only(),
        voice=score["cello voice"],
    )

cello_pitches_doubled = []

for p1, p2 in zip(
    library._bloom_pitches["cello voice"][5],
    library._bloom_pitches["cello voice"][5],
):
    cello_pitches_doubled.append(p1)
    cello_pitches_doubled.append(p1)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    evans.PitchHandler(pitch_list=cello_pitches_doubled),
    library.change_lines(
        lines=5,
        clef="bass",
    ),
    trinton.attachment_command(
        attachments=[library.clef_whitespace, trinton.make_custom_dynamic("sffz")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(zero_padding=True),
            abjad.Articulation(">"),
        ],
        selector=trinton.pleaves(exclude=[-1]),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    library.soli_1(padding=0),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override MultiMeasureRest.transparent = ##t", "opening"
            )
        ],
        selector=abjad.select.leaves,
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    trinton.noteheads_only(),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 37)),
    library.aftergrace(
        selector=trinton.select_leaves_by_index(_ for _ in range(0, 36))
    ),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    evans.PitchHandler(pitch_list=["af,"]),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("sffz"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 72)], nested=True),
        zero_padding=True,
    ),
    voice=score["contrabass voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

library.make_timestamp_markups(global_context=score["Global Context"])

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 37)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.Accidental.X-extent = ##f", "before"
            ),
            abjad.LilyPondLiteral(
                r"\override Score.BarLine.X-extent = #'(0 . 0)", "after"
            ),
            abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = #(trinton-blank-time-signature)",
                "before",
            ),
            abjad.LilyPondLiteral(
                r"""\tweak text \markup \override #'(font-name . "Bodoni72 Book") \fontsize #1 \center-column { "37\"" } \startMeasureSpanner""",
                "absolute_before",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", "after"),
            abjad.LilyPondLiteral(r"\revert Score.Accidental.X-extent", "after"),
            abjad.LilyPondLiteral(r"\revert Score.BarLine.X-extent", "after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1, -1, -1]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("!", site="after"),
        ],
        selector=trinton.select_leaves_by_index([_ for _ in range(0, 36)]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.hair-thickness = 0.5", "after"
            )
        ],
        selector=trinton.select_leaves_by_index([_ for _ in range(0, 36)]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.hair-thickness = 1", "after"
            )
        ],
        selector=trinton.select_leaves_by_index([_ for _ in range(0, 36)]),
        tag=abjad.Tag("+PARTS"),
    ),
    voice=score["Global Context"],
)

for measure, pair in zip(
    [
        1,
        5,
        9,
        13,
        17,
        21,
        25,
        29,
        34,
    ],
    [
        (1, 4),
        (5, 8),
        (9, 12),
        (13, 16),
        (17, 20),
        (21, 24),
        (25, 28),
        (29, 33),
        (34, 37),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[library.return_milestone_markup(pair)],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.DOWN,
        ),
        voice=score["Global Context"],
    )

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/27",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="27",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
