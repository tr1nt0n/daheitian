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

score = library.daheitian_score(ts.section_5_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(5) if _ > 2], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs''", "ds''"]),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["e''"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, 3]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Solo",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=8.5,
    ),
    voice=score["flute voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (
                    1,
                    1,
                    1,
                ),
            ]
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-1.5]),
    library.ring_mod_attachments(dynamics=["ppp"]),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([21], 8)),
        direction=abjad.DOWN,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((10, 9, 1, 6, 3, 4, 4, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    voice=score["bassclarinet divisi voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.tuplet([(4, 3, 1), (-1,)]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([library.harp_chords[0]]),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 4)],
            nested=True,
        ),
        no_ties=True,
    ),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Arpeggio(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, -1], pitched=True),
    ),
    voice=score["harp 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 1)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.talea([-6, 11, 1], 32),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([library.harp_chords[0]]),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(1, 4)],
            nested=True,
        ),
        no_ties=True,
    ),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[abjad.Arpeggio(), abjad.StartHairpin("o<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["harp 1 voice"],
    beam_meter=True,
)

# percussion 1

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mf"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 5]),
    ),
    voice=score["percussion 2 voice"],
)

abjad.attach(abjad.StopHairpin(), abjad.select.leaf(score["percussion 2 voice"], -1))

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["percussion 3 voice"]
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 4], pitched=True, first=True
        ),
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
)

abjad.attach(abjad.StopHairpin(), abjad.select.leaf(score["percussion 3 voice"], -1))

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.PitchHandler([1]),
    library.imbrication(
        pitch=1,
        name="percussion 3 imbrication",
        dynamic="mf",
    ),
    library.remove_accidentals(),
    voice=score["percussion 3 voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# parts globals

# parts

trinton.extract_parts(score)

# render parts file without whiteout_empty_staves

# trinton.render_file(
#     score=score,
#     segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/05",
#     build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
#     segment_name="05_parts",
#     includes=[
#         "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
#         "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
#     ],
# )

# score globals

trinton.fermata_measures(
    score=score,
    measures=[
        0,
    ],
    font_size="15",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            library.movements[1],
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                mod_string=library.metronome_marks["2.=4"],
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
    voice_names=[_ for _ in library.all_voice_names if _ != "bassclarinet voice"],
    cutaway="blank",
)

library.blank_measure_by_hand(
    score=score, voice_names=["bassclarinet voice"], measures=[0], clef_whitespace=False
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/05",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
