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

score = library.daheitian_score(ts.section_20_ts)

# commands

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([15, 1], 16)),
    evans.PitchHandler(["as'"]),
    trinton.linear_attachment_command(
        attachments=[abjad.Glissando(), abjad.StartHairpin("o<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([-7, 8, 1], 16)),
        direction=abjad.UP,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.PitchHandler(["bqf'"]),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 4)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["bassclarinet divisi voice"],
)

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-5, 3], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["c'''"]),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0], pitched=True)
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([-1])),
    trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([-1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BendAfter(4),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-4 \center-column { \line { Anspannen } } }"""
            ),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1., con sordino",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    voice=score["trumpet voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([-3, 5], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pppp"), abjad.StartHairpin("<")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.tremolo_command(),
    library.boxed_markup(
        string="Auf dem Rand mit dem Holz der Schlägel",
    ),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                14,
                13,
                1,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    library.boxed_markup(string="Triangel"),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index([0, 1, 1, -1], first=True),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 6)], nested=True),
        no_ties=True,
    ),
    voice=score["percussion 2 voice"],
    beam_meter=True,
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                14,
                13,
                1,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["gs''"]),
    library.change_lines(
        lines=5,
        clef="treble",
    ),
    library.boxed_markup(string="Glockenspiel"),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            # library.clef_whitespace,
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                # 0,
                0,
                1,
                1,
                -1,
            ],
            first=True,
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 6)], nested=True),
        no_ties=True,
    ),
    voice=score["percussion 3 voice"],
    beam_meter=True,
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                12,
                4,
                4,
                2,
                2,
                3,
                1,
            ],
            16,
        )
    ),
    evans.PitchHandler([library._climax_pitches["violin 1 voice"][1]]),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 1 voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -3,
                -3,
                -1,
                -1,
            ],
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        no_ties=True,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=12,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                12,
                4,
                4,
                2,
                2,
                3,
                1,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            [
                library._climax_pitches["violin 2 voice"][1],
                library._climax_pitches["violin 2 voice"][2],
            ],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 2 voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 2 voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                -3,
                -3,
                -1,
                -1,
            ],
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        no_ties=True,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=18.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=2,
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["violin 2 voice"],
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                12,
                4,
                4,
                2,
                2,
                3,
                1,
            ],
            16,
        )
    ),
    evans.PitchHandler(
        [
            [
                library._climax_pitches["viola voice"][1],
                library._climax_pitches["viola voice"][2],
            ],
        ]
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["viola voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["viola voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.linear_attachment_command(
        attachments=[
            # library.clef_whitespace,
            abjad.Clef("treble"),
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                # 0,
                0,
                0,
                0,
                -3,
                -3,
                -1,
                -1,
            ],
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        no_ties=True,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=16.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=2,
    ),
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.talea([-9, 6, 1], 16),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["c'''"]),
    trinton.change_notehead_command(
        notehead="highest",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True),
        no_ties=True,
    ),
    trinton.hooked_spanner_command(
        string=r"\gridato-twist-bow",
        full_string=True,
        padding=6,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["cello voice"],
    beam_meter=True,
)

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
            library.movements[3],
            library.metronome_markups(
                met_string=library.metronome_marks["144"],
                mod_string=library.metronome_marks["3:2(8)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/20",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="20",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
