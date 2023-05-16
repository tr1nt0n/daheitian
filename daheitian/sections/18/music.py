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

score = library.daheitian_score(ts.section_18_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["e'''"]),
    trinton.noteheads_only(),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override StemTremolo.X-offset = 0.6", "before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override StemTremolo.Y-offset = 6.75", "before"
            ),
            abjad.BendAfter(0),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(3) if _ > 2], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f'''", "g'''"]),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        selector=trinton.pleaves(grace=True), pitch_list=["af'''"]
    ),
    library.flute_grace_attachments(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                "before",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-4 \center-column { \line { Solo: } \line { espressivo, } \line { dolcissimo, } \line { teneramente } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["flute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 8)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=13,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1]),
    ),
    voice=score["flute voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.boxed_markup(string="Bangu mit Bambusstäbchen"),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pppp"), abjad.Dynamic("ppp")],
        selector=trinton.logical_ties(first=True),
    ),
    voice=score["percussion 2 voice"],
)

# percussion 2 voice

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.tuplet([(-1, 1)])),
    rmakers.rewrite_dots,
    library.boxed_markup(string="Amboss mit Hämmerchen"),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ppp"), abjad.Articulation("stopped")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
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
    font_size="15",
    blank=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["2=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["4.=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/18",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="18",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
