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

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
    trinton.force_note(selector=library._moths_selectors[1]["oboe voice"]),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([-1])),
    library.fuse_durations([(1, 4)]),
    trinton.beam_durations([(1, 4)], beam_rests=True),
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.PitchHandler(
        [
            "bqs'",
        ]
    ),
    library.attach_multiphonics(repitch_only=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["bqs' hspace"].string,
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1.5,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
            ],
            pitched=True,
        ),
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((9, 11)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
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
    trinton.force_note(selector=library._moths_selectors[2]["oboe voice"]),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                    -3,
                ],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([1]),
    ),
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
    library.fuse_contiguous(selector=trinton.pleaves(exclude=[-1])),
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "bqs'",
        ]
    ),
    library.attach_multiphonics(repitch_only=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["bqs' hspace"].string,
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1.5,
    ),
    library.boxed_markup(
        string="( zu Cor Anglais )", selector=trinton.select_leaves_by_index([-1])
    ),
    voice=score["oboe voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((11, 8, 15, 2)),
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
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
    trinton.force_note(selector=library._moths_selectors[2]["bassclarinet voice"]),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -2,
                    1,
                    -6,
                    1,
                    -6,
                ],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([1]),
    ),
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
    library.fuse_contiguous(selector=trinton.pleaves(exclude=[-1])),
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            -3,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Überblasen",
        ),
        full_string=True,
        padding=5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 15, 14, 2)),
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
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
    trinton.force_note(selector=library._moths_selectors[1]["bassoon voice"]),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([1, 2, 3, 4])),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -2,
                    3,
                    -1,
                    -4,
                ],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            "cqs,",
            "cqs,",
            "d",
            "cqs,",
            "d",
            "d",
        ]
    ),
    library.fuse_durations([(1, 4)]),
    trinton.beam_durations([(1, 4)], beam_rests=True),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.attach_multiphonics(padding=3.25),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
            ],
            pitched=True,
        ),
    ),
    voice=score["bassoon voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((7, 1, 2, 2, 2, 5, 7)),
)


trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
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
    trinton.force_note(selector=library._moths_selectors[2]["bassoon voice"]),
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
    evans.PitchHandler(
        [
            "d",
            "d",
            "cqs,",
            "cqs,",
            "d",
            "cqs,",
        ]
    ),
    library.attach_multiphonics(),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, 4, -1], pitched=True, first=True
        ),
    ),
    voice=score["bassoon voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((25, 1)),
)

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

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
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
    trinton.force_note(selector=library._moths_selectors[1]["violin 2 voice"]),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index(
            [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
            ]
        )
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            5,
            -1,
            5,
            2,
            -5,
            2,
        ]
    ),
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
            abjad.Dynamic("pp"),
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                2,
            ],
            pitched=True,
        ),
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 1, 1, 1, 1, 1, 1, 1, 1, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
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
    trinton.force_note(selector=library._moths_selectors[2]["violin 2 voice"]),
    library.fuse_contiguous(
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
            ]
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [1, -1],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([0]),
    ),
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
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            2,
            5,
            -1,
            5,
            2,
            -5,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 1, 4, 4, -1], first=True, pitched=True
        ),
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor(
        (
            1,
            15,
            1,
        )
    ),
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            16,
        )
    ),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[1]["viola voice"]),
    trinton.treat_tuplets(),
    evans.PitchHandler([2, -1, 2, -1, 5, 2, 5, -5]),
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
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, -1],
            pitched=True,
        ),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                -1,
            ],
            16,
            treat_tuplets=False,
        )
    ),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -2,
                    1,
                    -3,
                    4,
                    -2,
                    4,
                    -2,
                    4,
                    -2,
                    4,
                    -2,
                ],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([1]),
    ),
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
    rmakers.trivialize,
    rmakers.extract_trivial,
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            -1,
            5,
            2,
            5,
            -5,
            2,
            -1,
            2,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, -1], first=True, pitched=True
        ),
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((10, 7, 1)),
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
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
    trinton.force_note(selector=library._moths_selectors[1]["cello voice"]),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    -1,
                    1,
                ],
                8,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            5,
            5,
            2,
            -5,
            2,
            -1,
            -1,
        ]
    ),
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
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                3,
                4,
                4,
            ],
            pitched=True,
        ),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((11, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
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
    trinton.force_note(selector=library._moths_selectors[2]["cello voice"]),
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
    evans.PitchHandler(
        [
            5,
            5,
            2,
            -5,
            2,
            -1,
            -1,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 2, 5, 5, -1], pitched=True),
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((25, 1)),
    beam_meter=True,
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 4)),
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
    trinton.force_note(selector=library._moths_selectors[1]["contrabass voice"]),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([1, 2, 3, 4])),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [-2, 5, -3],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.PitchHandler(
        [
            5,
            -1,
            -1,
            -5,
            -5,
            2,
        ]
    ),
    library.change_lines(lines=4, clef="percussion"),
    # trinton.attachment_command(
    #     attachments=[library.clef_whitespace],
    #     selector=trinton.select_leaves_by_index([0])
    # ),
    library.fuse_durations([(1, 4)]),
    trinton.beam_durations([(1, 4)], beam_rests=True),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                3,
            ],
            pitched=True,
        ),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((7, 1, 2, 2, 2, 5, 7)),
)


trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
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
    trinton.force_note(selector=library._moths_selectors[2]["contrabass voice"]),
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
    evans.PitchHandler(
        [
            -5,
            2,
            5,
            -1,
            -1,
            -5,
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("fff"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 2, 2, 4, 4, -1], pitched=True, first=True
        ),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((25, 1)),
)

# strings spanners

for voice_name in [
    "violin 1 voice",
    "violin 2 voice",
    "viola voice",
    "cello voice",
    "contrabass voice",
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
