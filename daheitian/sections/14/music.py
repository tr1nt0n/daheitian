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

score = library.daheitian_score(ts.section_14_ts)

# commands

# moths rhythms

for voice_name in [
    "oboe voice",
    "bassclarinet voice",
    "bassoon voice",
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
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
        trinton.force_note(selector=library._moths_selectors[1][voice_name]),
        evans.RewriteMeterCommand(boundary_depth=-2),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.logical_ties(first=True, pitched=True),
        ),
        voice=score[voice_name],
        preprocessor=trinton.fuse_sixteenths_preprocessor((9, 5, 10)),
    )

    tuplets = abjad.select.tuplets(score[voice_name])

    tuplets = tuplets[0:2]

    for tuplet in tuplets:
        for leaf in tuplets:
            rmakers.force_rest(leaf)

for voice_name in [
    "oboe voice",
    "bassclarinet voice",
    "bassoon voice",
    "violin 1 voice",
    "violin 2 voice",
    "cello voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        rmakers.trivialize,
        rmakers.extract_trivial,
        library.fuse_durations([(3, 8)]),
        trinton.beam_durations([(3, 8)], beam_rests=True),
        trinton.attachment_command(
            attachments=[abjad.Dynamic("ff")],
            selector=trinton.select_leaves_by_index([0], pitched=True),
        ),
        voice=score[voice_name],
    )

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(3) if _ > 2], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["cs''", "ds''"]),
    voice=score["flute voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([_ for _ in library.logistic_map(8) if _ > 2], 16),
        ),
        direction=abjad.UP,
        voice_name="flute divisi voice",
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RewriteMeterCommand(),
    evans.PitchHandler(
        [
            "f''",
            "g''",
        ]
    ),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector([0, 1, 4], 6),
    ),
    library.flute_grace_attachments(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Duett",
        ),
        full_string=True,
        padding=11.5,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, -1], first=True),
        right_padding=15,
    ),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_logical_ties_by_index(
            [
                3,
            ],
            first=True,
        ),
    ),
    library.flute_graces(
        grace_selector=trinton.patterned_tie_index_selector(
            [
                0,
                1,
                4,
                6,
                8,
                9,
            ],
            11,
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["e''"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Solo",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, 5], first=True),
        right_padding=2.5,
    ),
    voice=score["flute voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=["af''"], selector=trinton.pleaves(grace=True)
    ),
    voice=score["flute divisi voice"],
    beam_meter=True,
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler(["c''"]),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["c''"].string,
        full_string=True,
        padding=7.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1.5,
    ),
    voice=score["oboe voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([9, 1, 10], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), trinton.make_custom_dynamic("fffff")],
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    trinton.arrow_spanner_command(
        l_string=library.return_boxed_markup(
            string="Ton",
        ),
        r_string=library.return_boxed_markup(
            string="Überblasen",
        ),
        selector=trinton.select_leaves_by_index([0, 2]),
        style="solid-line-with-arrow",
        padding=14.5,
        direction="down",
        tempo=True,
        right_padding=-1,
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([-5, 4, 1, -10], 16),
        ),
        direction=abjad.UP,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["bqf"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(2, 5)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("fffff", direction=abjad.UP),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ton",
            ),
            library.return_boxed_markup(
                string="Überblasen",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=9.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["bassclarinet divisi voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1), (-1,)])),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["bqf"]),
    library.ring_mod_attachments(dynamics=["mp", "mp +"]),
    trinton.notehead_bracket_command(),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea([9], 4),
        ),
        direction=abjad.DOWN,
        voice_name="bassclarinet div voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            3,
            2,
            3,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["as"]),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("mf +"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["bassclarinet div voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler([-3]),
    trinton.change_notehead_command(notehead="lowest"),
    library.remove_accidentals(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Überblasen",
        ),
        full_string=True,
        padding=4.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.PitchHandler(
        [
            "d",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.attach_multiphonics(),
    voice=score["bassoon voice"],
)

# piano music commands

for voice_name, hand in zip(["piano 1 voice", "piano 2 voice"], ["rh", "lh"]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (3, 5)),
        evans.RhythmHandler(
            evans.talea([1, 1, 1, -1, 1, -1, 1, 1, -1], 4),
        ),
        evans.PitchHandler(library.piano_chords(hand=hand, index=3)),
        library.handle_clefs(),
        trinton.ottava_command(
            selector=trinton.select_leaves_by_index(
                [
                    2,
                    2,
                    5,
                    5,
                ],
                pitched=True,
            )
        ),
        voice=score[voice_name],
    )

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index([0, 0, 3], pitched=True),
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    library.piano_pedals(
        counts=[
            3,
            1,
            2,
        ]
    ),
    voice=score["piano 2 voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(10) if _ < 6], 8)),
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
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                -1,
            ],
            pitched=True,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    voice=score["harp 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="( sim. )",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-up-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
        direction="down",
    ),
    trinton.change_notehead_command(
        notehead="la",
    ),
    voice=score["harp 2 voice"],
    preprocessor=trinton.fuse_preprocessor((5,)),
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([15, -9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# strings music commands

for voice_name in ["violin 1 voice", "violin 2 voice", "cello voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        evans.PitchHandler(
            [
                [5, 2],
                [-1, -5],
            ],
        ),
        library.change_lines(lines=4, clef="percussion"),
        voice=score[voice_name],
    )

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="DP, Kratzen",
            ),
            full_string=True,
            padding=8,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=2,
        ),
        voice=score[voice_name],
    )

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(evans.talea([3, 2], 16)),
        selector=trinton.select_tuplets_by_index([1]),
    ),
    rmakers.trivialize,
    rmakers.extract_trivial,
    library.fuse_durations([(3, 8)]),
    trinton.beam_durations([(3, 8)], beam_rests=True),
    library.aftergrace(
        notes_string="c'16",
        selector=trinton.select_leaves_by_index(
            [
                1,
            ],
            pitched=True,
        ),
    ),
    evans.PitchHandler(
        [
            [5, 2],
            [5, 2],
            [5, 2],
            [-1, -5],
        ]
    ),
    library.change_lines(lines=4, clef="percussion"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(4, 7)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<|"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP, Kratzen",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["viola voice"],
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    library.boxed_markup(
        string="DP, Kratzen",
    ),
    voice=score["cello voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.talea([15, -9], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["contrabass voice"],
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
            library.movements[2],
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    trinton.spanner_command(
        strings=[
            library.metronome_markups(
                met_string=library.metronome_marks["48"],
                string_only=True,
                parenthesis=True,
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
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(4)=4"],
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
        11,
    ],
    font_size="15",
    fermata="uverylongfermata",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book") \fontsize #7.5 \center-column { "18.5\"" }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        12,
    ],
    font_size="15",
    fermata="ushortfermata",
    blank=False,
    clef_whitespace=False,
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    # voice_names=[
    #     _
    #     for _ in library.all_voice_names
    #     if _ != "bassclarinet voice"
    #     and _ != "bassoon voice"
    #     and _ != "frenchhorn voice"
    #     and _ != "tenortrombone voice"
    #     and _ != "percussion 2 voice"
    #     and _ != "percussion 3 voice"
    # ],
)

# library.blank_measure_by_hand(
#     score=score,
#     voice_names=["tenortrombone voice"],
#     measures=[
#         10,
#         11,
#         12,
#     ],
# )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/14",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="14",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
