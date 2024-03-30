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

score = library.daheitian_score(ts.section_29_ts)

# commands

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler([library._brass_chord_pitches["frenchhorn voice"]]),
    trinton.detach_command(
        detachments=[abjad.Markup], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.RepeatTie(),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["frenchhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                2,
                2,
                5,
                6,
                4,
                5,
                4,
                5,
                8,
                3,
            ],
            16,
            extra_counts=[0, 1, 0, -2, 2],
        )
    ),
    trinton.force_rest(
        trinton.patterned_tie_index_selector(
            [
                1,
                5,
            ],
            8,
        )
    ),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.detach_command(
        detachments=[abjad.Tie],
        selector=trinton.select_leaves_by_index([8], pitched=True),
    ),
    library.grace(
        selector=trinton.select_leaves_by_index([0]),
    ),
    evans.PitchHandler(["c'''"]),
    trinton.pitch_with_selector_command(
        pitch_list=[library._brass_chord_pitches["frenchhorn voice"]],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.invisible_accidentals_command(
        selector=trinton.select_leaves_by_index([0], grace=False, pitched=True)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.pleaves(exclude=[0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BreathMark(),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffp"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.detach_command(
        detachments=[
            abjad.Markup,
        ],
        selector=trinton.pleaves(),
    ),
    trinton.tremolo_command(selector=trinton.pleaves(exclude=[0])),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Bewegen die Ventile schnell und wahllos + Flatterzunge.",
        ),
        full_string=True,
        padding=8.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        right_padding=2,
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
    trinton.transparent_noteheads(selector=trinton.select_leaves_by_index([0])),
    trinton.notehead_bracket_command(),
    voice=score["frenchhorn voice"],
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            2,
            1,
            2,
            2,
            3,
            3,
        )
    ),
    beam_meter=True,
)

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(
        [library._brass_chord_pitches["trumpet voice"]],
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.RepeatTie(),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BreathMark(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
            ]
        ),
    ),
    voice=score["trumpet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(
        evans.talea(
            [6, 5, 4, 6],
            16,
            extra_counts=[
                -1,
                0,
                -1,
                1,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([2, 4], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["c'''"]),
    trinton.change_notehead_command(notehead="highest"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ffff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.trumpet_glissandi(),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                evans.make_fancy_gliss(
                    7,
                    5,
                    3,
                    2,
                    1,
                    1,
                    1,
                ),
                evans.make_fancy_gliss(
                    2,
                    3,
                    7,
                    2,
                    3,
                    3,
                    7,
                    7,
                ),
            ]
        ),
        selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.BreathMark(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                1,
                -5,
                -3,
            ]
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["trumpet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            3,
            2,
            3,
            3,
            6,
            3,
        )
    ),
)

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([2, 10, 3, -1], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[library._brass_chord_pitches["tenortrombone voice"]],
        selector=trinton.logical_ties(pitched=True, exclude=[-1]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[-24],
        selector=trinton.select_logical_ties_by_index([-1], pitched=True),
    ),
    trinton.detach_command(
        detachments=[abjad.Markup],
        selector=trinton.pleaves(),
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
    trinton.change_notehead_command(
        notehead="lowest", selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.Clef("bass"),
            abjad.Articulation("marcato"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1, -1, -1], first=True, pitched=True
        ),
    ),
    trinton.invisible_accidentals_command(selector=trinton.select_leaves_by_index([3])),
    trinton.attachment_command(
        attachments=[abjad.BreathMark()],
        selector=trinton.select_leaves_by_index([2]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.RepeatTie(),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        evans.talea([3, -2, 4, -3, 5, -2, 4, -2], 16, extra_counts=[0, -1, 1, 0])
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-24]),
    trinton.change_notehead_command(
        notehead="lowest",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["tenortrombone voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3,)),
    beam_meter=True,
)

# tuba music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [library._brass_chord_pitches["tuba voice"]],
    ),
    trinton.noteheads_only(selector=trinton.select_leaves_by_index([0])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.RepeatTie(),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True),
        no_ties=True,
    ),
    voice=score["tuba voice"],
    preprocessor=trinton.fuse_preprocessor((1, 3)),
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
    fermata="very-long-fermata",
    font_size="15",
    blank=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book") \center-column { \line { \fontsize #7.5 { "12" } \fontsize #3 { \fraction 1 3 } \fontsize #7.5 { "\"" } } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                string_only=True,
                parenthesis=True,
                interpolation="Accel.",
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["3:2(4)=4"],
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        right_padding=0,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(".|:", "before"),
            abjad.BarLine(":|.", "after"),
            abjad.LilyPondLiteral(
                r'\tweak text "×3, Rall. moltiss. sempre" \startMeasureSpanner',
                "absolute_before",
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", "after"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override MeasureSpanner.padding = 3", "before"
            )
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
        tag=abjad.Tag("+PARTS"),
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/29",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="29",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
