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

score = library.daheitian_score(ts.section_3_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.even_division([64], treat_tuplets=False)),
    trinton.force_rest(trinton.select_tuplets_by_index([0])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    library.flute_flageolets(),
    voice=score["flute voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 15)),
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["bassclarinet voice"]
    ),
    rmakers.rewrite_dots,
    evans.PitchHandler(["a'"]),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Slaptongue",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    library.timbre_trills(),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Stem.direction = #DOWN", "before"),
            abjad.LilyPondLiteral(r"\revert Stem.direction", "after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassclarinet voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                )
            ]
        ),
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._klavierubung_selectors[2]["bassoon voice"]),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-13]),
    library.percussive_bassoon_attachments(),
    library.timbre_trills(index=3),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([3, -3], 8)),
    library.change_lines(lines=4, clef="strings"),
    evans.PitchHandler(
        [5],
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([3, -3], 8)),
        direction=abjad.DOWN,
        voice_name="cello divisi voice",
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.aftergrace(notes_string="f'16"),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([-5]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("fff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP",
        ),
        full_string=True,
        padding=11.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Kratzen",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=8.5,
        full_string=True,
        command="One",
        right_padding=-2,
    ),
    voice=score["cello divisi voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Bangu mit Bambusstäbchen"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["percussion 3 voice"]
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Amboss mit Hämmerchen"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["percussion 3 voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# score globals

for measure, tempo in zip(
    [
        1,
        3,
    ],
    [
        library.metronome_markups(
            met_string=library.metronome_marks["96"],
            mod_string=library.metronome_marks["5:3(4)=4"],
        ),
        library.metronome_markups(
            met_string=library.metronome_marks["48"],
            mod_string=library.metronome_marks["2=4"],
        ),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[tempo],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/03",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
