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

score = library.daheitian_score(ts.section_16_ts)

# commands

# monolith

library.monolith(
    score=score,
    measure=11,
)

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=5.5,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index(
            [0, 15], first=True, pitched=True
        ),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["oboe voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(1),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ffff")],
        selector=trinton.select_logical_ties_by_index(
            [
                4,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["oboe voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 8)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 16], pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(9), 16, extra_counts=[-1])),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(evans.talea(library.oboe_talea(17), 16, extra_counts=[-1])),
    rmakers.force_diminution,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([12]),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ffff")],
        selector=trinton.select_logical_ties_by_index(
            [3, -1],
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["fs''"], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((1,)),
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 6)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_logical_ties_by_index([0, 6], first=True, pitched=True),
        right_padding=2,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mf"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(1),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(2),
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-2]),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("ffff")],
        selector=trinton.select_logical_ties_by_index(
            [5, -1], first=True, pitched=True
        ),
    ),
    trinton.notehead_bracket_command(),
    library.patterned_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=[4], selector=trinton.pleaves(grace=True)
    ),
    library.grace_attachments(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 10)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
            ],
            16,
            extra_counts=[-2, 2, 0],
        )
    ),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Tanggu"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], pitched=True, first=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            [
                8,
            ],
            16,
            extra_counts=[2, -2, -1],
        )
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Tanggu"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], pitched=True, first=True
        ),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_chant_talea,
            16,
            extra_counts=[
                -1,
                0,
            ],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution, selector=trinton.select_tuplets_by_index([-1])
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[-3],
        selector=trinton.select_logical_ties_by_index(
            [28, 29, 30, 31, 32, 33, 34], pitched=True
        ),
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.change_lines(
        lines=3,
        clef="percussion",
        selector=trinton.select_logical_ties_by_index([28], pitched=True, first=True),
    ),
    library.boxed_markup(string="Tam-Tam mit Bogen"),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            2,
            1,
            2,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    -6,
                    3,
                    3,
                    2,
                    2,
                ],
                8,
            )
        ),
        direction=abjad.UP,
        voice_name="percussion divisi voice",
    ),
    voice=score["percussion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9, 10)),
    evans.PitchHandler([4, 0]),
    library.boxed_markup(string="+ Gongs der chinesisch Oper"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["percussion divisi voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.RhythmHandler(
        evans.talea(
            library.oboe_talea(1),
            16,
            extra_counts=[
                -1,
                0,
                -2,
            ],
        )
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_diminution,
        selector=trinton.select_tuplets_by_index([0, 2, 3, 4, 6, 7]),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([-3]),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                -1,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_quarters_preprocessor(
        (
            1,
            2,
            2,
            2,
            1,
            2,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [
                    3,
                    3,
                    2,
                    2,
                    3,
                    3,
                    2,
                    2,
                    3,
                    3,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    3,
                    3,
                ],
                8,
            )
        ),
        direction=abjad.UP,
        voice_name="opera gongs voice",
    ),
    voice=score["percussion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 20)),
    evans.PitchHandler([4, 0]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["opera gongs voice"],
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
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["3:5(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["5:4(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["57 3/5"],
                mod_string=library.metronome_marks["4:5(4)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.StartTextSpan(
                    left_text=abjad.Markup(
                        library.metronome_markups(
                            met_string=library.metronome_marks["57 3/5"],
                            string_only=True,
                            parenthesis=True,
                        ),
                    ),
                    right_text=abjad.Markup(
                        library.metronome_markups(
                            met_string=library.metronome_marks["144"],
                            mod_string=library.metronome_marks["5:4(8)=4"],
                            string_only=True,
                        ),
                    ),
                    style="solid-line-with-arrow",
                    right_padding=0,
                ),
                r"- \tweak padding #11.5",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ]
        ),
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/16",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="16",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
