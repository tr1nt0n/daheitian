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

score = library.daheitian_score([(6, 4), (6, 4), (5, 4)])

# commands

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -4,
                1,
                1,
            ],
            4,
        )
    ),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    evans.PitchHandler(["e'"]),
    evans.PitchHandler(
        [library._brass_chord_pitches["frenchhorn voice"]], as_ratios=True
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 4)], nested=True),
    ),
    library.ring_mod_attachments(
        dynamics=["mf"], direction=abjad.DOWN, clean_swells=True, transparent_head=False
    ),
    voice=score["frenchhorn voice"],
)

# trumpet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea(
            [
                -4,
                1,
                1,
            ],
            4,
        )
    ),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler([library._brass_chord_pitches["trumpet voice"]]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(1, 4)], nested=True),
    ),
    library.ring_mod_attachments(
        dynamics=["mf"],
        direction=abjad.DOWN,
    ),
    voice=score["trumpet voice"],
)

# trombone music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-2, 1], 2)),
    library.aftergrace(),
    evans.PitchHandler(["c'''"]),
    trinton.change_notehead_command(
        notehead="highest",
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.Glissando(),
            evans.make_fancy_gliss(
                0.25,
                0.5,
                0.75,
                1,
                1.5,
                2,
                3,
                4,
                6,
                8,
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Growl",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    voice=score["tenortrombone voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-2, 1], 2)),
    library.aftergrace(),
    evans.PitchHandler([library.harp_chords[1]]),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Arpeggio(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.tremolo_command(),
    voice=score["harp 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-2, 1], 2)),
    library.aftergrace(),
    evans.PitchHandler([["g,,", "g,"]]),
    library.change_lines(lines=5, clef="bass"),
    trinton.attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Arpeggio(),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
            ],
            pitched=True,
        ),
    ),
    trinton.tremolo_command(),
    voice=score["harp 2 voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(
        evans.talea([11, -1], 8),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    trinton.tremolo_command(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([-2, 1], 2)),
    library.aftergrace(),
    evans.PitchHandler(["d''"]),
    library.change_lines(lines=5, clef="treble"),
    library.boxed_markup(
        string="Glockenspiel",
        site="before",
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 2 voice"],
)

# strings music commands

for voice_name, pitch in zip(
    ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"],
    [5, 2, -1, -5],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        evans.RhythmHandler(
            evans.talea(library.moth_talea, 16),
        ),
        evans.PitchHandler([pitch]),
        library.change_lines(
            lines=4,
            clef="percussion",
        ),
        trinton.linear_attachment_command(
            attachments=[
                trinton.make_custom_dynamic("fffff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -1]),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.pleaves(),
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

for voice_name in ["violin 1 voice", "violin 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="DP, Kratzen",
            ),
            full_string=True,
            padding=11.5,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=11.5,
        ),
        voice=score[voice_name],
    )

# violin 1 music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.talea(library.moth_talea, 16),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)]),
        pitch_list=[
            5,
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)]),
        pitch_list=[
            "e''",
            "f''",
            "g''",
            "a''",
            "b''",
            "b''",
            "c'''",
            "c'''",
            "d'''",
            "d'''",
            "d'''",
            "e'''''",
        ],
    ),
    library.boxed_markup(
        string="( Gleichmäßiges Glissando bis zum letzten Ton )",
        selector=trinton.select_leaves_by_index([8]),
    ),
    library.change_lines(
        lines=5, clef="treble", selector=trinton.select_leaves_by_index([8])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)], nested=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([-1, -1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 8, 8, -1]),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup { }",
            library.return_boxed_markup(
                string="Steg ( immer noch Kratzen im Übergang )",
            ),
            library.return_boxed_markup(
                string="Ord., Ton",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 8, 8, -1],
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.talea(library.moth_talea, 16),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)]),
        pitch_list=[
            2,
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)]),
        pitch_list=[
            "a'",
            "c''",
            "d''",
            "e''",
            "g''",
            "a''",
            "a''",
            "a''",
            "b''",
            "c'''",
            "d'''",
            "e'''''",
        ],
    ),
    library.boxed_markup(
        string="( Gleichmäßiges Glissando bis zum letzten Ton )",
        selector=trinton.select_leaves_by_index([8]),
    ),
    library.change_lines(
        lines=5, clef="treble", selector=trinton.select_leaves_by_index([8])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)], nested=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([-1, -1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 8, 8, -1]),
    ),
    trinton.spanner_command(
        strings=[
            r"\markup { }",
            library.return_boxed_markup(
                string="Steg ( immer noch Kratzen im Übergang )",
            ),
            library.return_boxed_markup(
                string="Ord., Ton",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 8, 8, -1],
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 2 voice"],
    beam_meter=True,
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["a,"]),
    trinton.tremolo_command(),
    library.boxed_markup(
        string="MST",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
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
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.hooked_spanner_command(
        string=r"\markup \fontsize #5.5 { Rall. }",
        full_string=True,
        padding=11.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=60,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine(".|:", site="before"),
            abjad.BarLine(":|.", site="after"),
            abjad.LilyPondLiteral(
                r'\tweak text "×7" \startMeasureSpanner', "absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", "after"),
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
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.StopTextSpan(),
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
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/17",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="17",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)