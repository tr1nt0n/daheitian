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

score = library.daheitian_score(ts.section_13_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.talea([_ for _ in library.logistic_map(21) if _ > 2], 16)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs''", "ds''"]),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector([1, 2, 4], 5),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e''"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=23.5,
    ),
    voice=score["flute voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["bassclarinet voice"]
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "a'",
        ]
    ),
    library.timbre_trills(),
    trinton.pitch_with_selector_command(
        pitch_list=["as'"],
        selector=trinton.patterned_leaf_index_selector([0, 5, 7], 8, pitched=True),
    ),
    library.imbrication(
        pitch=10, name="bassclarinet imbrication", dynamic="ff", secondary_dynamic="f"
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Slaptongue",
        ),
        full_string=True,
        padding=12,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=15,
    ),
    voice=score["bassclarinet imbrication"],
)

bass_clarinet_pleaves = abjad.select.leaves(score["bassclarinet voice"], pitched=True)

for n in range(11, 18):
    abjad.detach(abjad.Dynamic, bass_clarinet_pleaves[n])

abjad.attach(abjad.StartHairpin(">o"), bass_clarinet_pleaves[11])
abjad.attach(abjad.StopHairpin(), bass_clarinet_pleaves[17])

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1, 1, 1, 1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._klavierubung_selectors[2]["bassoon voice"]),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            "b,",
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    library.timbre_trills(index=2),
    trinton.pitch_with_selector_command(
        pitch_list=["bf,"],
        selector=trinton.patterned_leaf_index_selector([0, 5, 7], 8, pitched=True),
    ),
    library.percussive_bassoon_attachments(),
    library.imbrication(
        pitch=-14, name="bassoon imbrication", dynamic="ff", secondary_dynamic="mf"
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
)

bassoon_pleaves = abjad.select.leaves(score["bassoon voice"], pitched=True)

for n in range(20, 34):
    abjad.detach(abjad.Dynamic, bassoon_pleaves[n])

abjad.attach(abjad.StartHairpin(">o"), bassoon_pleaves[20])
abjad.attach(abjad.StopHairpin(), bassoon_pleaves[33])

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                ),
                (-1,),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["eqf"]),
    library.ring_mod_attachments(
        dynamics=["mp", "mp", "mp", "mp", "mp", "mp", "pp", "ppp"]
    ),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([100], 8)),
        direction=abjad.DOWN,
        voice_name="frenchhorn divisi voice",
    ),
    voice=score["frenchhorn voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor(
        (
            4,
            5,
            8,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["ds"]),
    trinton.attachment_command(
        attachments=[library.clef_whitespace, abjad.Clef("bass"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([11, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.|2.",
        ),
        full_string=True,
        padding=15,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=22,
    ),
    voice=score["frenchhorn divisi voice"],
)

# trombone music commands

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1, 15)),
#     evans.RhythmHandler(
#         evans.tuplet(
#             [
#                 (
#                     2,
#                     1,
#                 ),
#                 (-1,),
#             ]
#         )
#     ),
#     rmakers.rewrite_dots,
#     evans.RewriteMeterCommand(boundary_depth=-2),
#     evans.PitchHandler(["c'''"]),
#     trinton.attachment_command(
#         attachments=[library.clef_whitespace, abjad.Clef("treble")],
#         selector=trinton.select_leaves_by_index([0], pitched=True),
#     ),
#     trinton.change_notehead_command(notehead="highest"),
#     trinton.linear_attachment_command(
#         attachments=itertools.cycle(
#             [
#                 abjad.Glissando(),
#             ],
#         ),
#         selector=trinton.patterned_tie_index_selector(
#             [
#                 0,
#             ],
#             2,
#             pitched=True,
#             first=True,
#         ),
#     ),
#     trinton.notehead_bracket_command(),
#     trinton.hooked_spanner_command(
#         string=library.return_boxed_markup(
#             string="1., Growl",
#         ),
#         full_string=True,
#         padding=8,
#         style="solid-line-with-hook",
#         selector=trinton.select_leaves_by_index([0, -1], pitched=True),
#         right_padding=2,
#     ),
#     voice=score["tenortrombone voice"],
#     preprocessor=trinton.fuse_sixteenths_preprocessor(
#         (
#             4,
#             5,
#             8,
#         )
#     ),
# )

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.talea(
            [4, 5, 8], 16
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector([1], 2, pitched=True, grace=False)
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.aftergrace_command(
        selector=trinton.logical_ties(pitched=True, grace=False),
        slash=True
    ),
    evans.PitchHandler(["c'''"]),
    trinton.attachment_command(
        attachments=[library.clef_whitespace, abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.change_notehead_command(notehead="highest"),
    trinton.notehead_bracket_command(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1., Kneifen im hinteren Teil der Kehle, wie ein Knurren",
        ),
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartHairpin("o<"),
                abjad.Dynamic("mp"),
            ],
        ),
        selector=trinton.patterned_tie_index_selector(
            [0, 1], 2, pitched=True, first=True
        ),
    ),
    trinton.continuous_glissando(no_ties=True,),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 15)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 1], 2, pitched=True, first=True
        ),
    ),
    trinton.continuous_glissando(no_ties=True,),
    voice=score["tenortrombone voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(24) if _ < 6], 8)),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([1], 2)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        library.harp_chords,
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["harp 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Langsam die mit Draht umwickelten Saiten mit einer Plastikkarte Kratzen",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
        tag=abjad.Tag("+SCORE"),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #1 { \center-column { \line { Langsam die mit Draht } \line { umwickelten Saiten mit } \line { einer Plastikkarte Kratzen } } }""",
        full_string=True,
        padding=11,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.change_notehead_command(
        notehead="la",
    ),
    voice=score["harp 2 voice"],
    preprocessor=trinton.fuse_preprocessor((15,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["harp 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Bangu mit Bambusstäbchen"),
    trinton.attachment_command(
        attachments=[library.clef_whitespace, abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 15)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin(">o"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 15)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["percussion 3 voice"]
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.pitch_with_selector_command(
        pitch_list=[1],
        selector=trinton.patterned_leaf_index_selector([0, 5, 7], 8, pitched=True),
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.imbrication(
        pitch=1, name="percussion 3 imbrication", dynamic="ff", secondary_dynamic="f"
    ),
    trinton.notehead_bracket_command(),
    library.remove_accidentals(),
    voice=score["percussion 3 voice"],
)

percussion2_pleaves = abjad.select.leaves(score["percussion 3 voice"], pitched=True)

abjad.attach(
    abjad.Markup(
        library.return_boxed_markup(
            string="Amboss mit Hämmerchen",
        ),
    ),
    percussion2_pleaves[0],
    direction=abjad.UP,
)

for n in range(13, 19):
    abjad.detach(abjad.Dynamic, percussion2_pleaves[n])

abjad.attach(abjad.StartHairpin(">o"), percussion2_pleaves[13])
abjad.attach(abjad.StopHairpin(), percussion2_pleaves[18])

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 14)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["144"],
                mod_string=library.metronome_marks["8=4"],
                string_only=True,
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
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("||"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "bassclarinet voice"
        and _ != "bassoon voice"
        and _ != "frenchhorn voice"
        and _ != "percussion 2 voice"
        and _ != "percussion 3 voice"
    ],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/13",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="13",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
