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

score = library.daheitian_score(ts.section_15_ts)

# commands

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
            treat_tuplets=False,
        )
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[1]["violin 1 voice"]),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    -1,
                ],
                8,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler([5, 2, -5, 2, -1, 5]),
    library.change_lines(lines=4, clef="percussion"),
    library.fuse_durations([(1, 4)]),
    trinton.beam_durations([(1, 4)], beam_rests=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                4,
                4,
            ],
            pitched=True,
        ),
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((7, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
            treat_tuplets=False,
        )
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["violin 1 voice"]),
    library.fuse_contiguous(),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                8,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([5, 2, -5, 2, -1, 5]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 2, 2, 6, 6, 11, 11, -1], pitched=True
        ),
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((31, 1)),
    beam_meter=True,
)


# strings spanners

for voice_name in [
    "violin 1 voice",
    # "violin 2 voice",
    # "viola voice",
    # "cello voice",
    # "contrabass voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1, 7)),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="DP, Kratzen",
            ),
            full_string=True,
            padding=7.5,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        voice=score[voice_name],
    )


# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["144"],
                mod_string=library.metronome_marks["5:4(8)=4"],
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2.=4"],
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
    lambda _: trinton.select_target(_, (4, 7)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["6:5(4)=4"],
                string_only=True,
                parenthesis=True,
            ),
            library.metronome_markups(
                met_string=library.metronome_marks["96"],
                mod_string=library.metronome_marks["5:3(4)=4"],
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/15",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="15",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
