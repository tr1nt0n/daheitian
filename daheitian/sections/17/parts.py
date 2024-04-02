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

# oboe music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea(library.moth_talea, 16)),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 12)]), pitch_list=["bqs'"]
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(12, 31)]),
        pitch_list=[
            "cqs''",
            "cs''",
            "dqf''",
            "d''",
            "dqs''",
            "ef''",
            "eqf''",
            "e''",
            "eqs''",
            "f''",
            "fqs''",
            "fs''",
            "g''",
            "a''",
            "b''",
            "cs'''",
            "d'''",
            "ds'''",
            "e'''",
        ],
    ),
    library.attach_multiphonics(
        repitch_only=True,
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.BendAfter(3.5)],
        selector=trinton.ranged_selector(ranges=[range(12, 30)]),
    ),
    trinton.ficta_command(selector=trinton.select_leaves_by_index([12, -1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                "before",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
            ),
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("fffffpp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 10, 11, 11, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["bqs' hspace"].string,
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 11]),
        right_padding=1.5,
    ),
    voice=score["oboe voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea(library.moth_talea, 16)),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 12)]), pitch_list=[-3]
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(12, 31)]),
        pitch_list=[
            "e",
            "fqs",
            "g",
            "aqf",
            "bf",
            "bqs",
            "cs'",
            "dqs'",
            "e'",
            "fqs'",
            "g'",
            "aqf'",
            "cqs''",
            "ef''",
            "fs''",
            "aqf''",
            "cs'''",
            "eqs'''",
            "fs'''",
        ],
    ),
    trinton.change_notehead_command(
        notehead="lowest",
        selector=trinton.ranged_selector(ranges=[range(0, 12)]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.BendAfter(3.5)],
        selector=trinton.ranged_selector(ranges=[range(12, 30)]),
    ),
    trinton.ficta_command(selector=trinton.select_leaves_by_index([12, -1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                "before",
            ),
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("fffffpp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 10, 11, 11, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
                ),
                r"- \tweak padding #3.5",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Überblasen",
        ),
        full_string=True,
        padding=4,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 11]),
        right_padding=1.5,
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea(library.moth_talea, 16)),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 12)]), pitch_list=["d"]
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(12, 31)]),
        pitch_list=[
            "d",
            "dqf",
            "cs",
            "cqs",
            "c",
            "cqf",
            "b,",
            "bqf,",
            "bf,",
            "aqs,",
            "a,",
            "aqf,",
            "af,",
            "gqs,",
            "g,",
            "gqf,",
            "fs,",
            "f,",
            "e,",
        ],
    ),
    library.attach_multiphonics(
        repitch_only=True,
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    # trinton.attachment_command(
    #     attachments=[
    #         abjad.bundle(
    #             abjad.Markup(
    #                 r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5 "Tutti" }"""
    #             ),
    #             r"- \tweak whiteout-style #'outline",
    #             r"- \tweak whiteout 1"
    #         )
    #     ],
    #     selector=trinton.select_leaves_by_index([0], pitched=True),
    #     direction=abjad.UP,
    # ),
    trinton.attachment_command(
        attachments=[abjad.BendAfter(-3.5)],
        selector=trinton.ranged_selector(ranges=[range(12, 30)]),
    ),
    trinton.ficta_command(selector=trinton.select_leaves_by_index([12, -1])),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                "before",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
            ),
            trinton.make_custom_dynamic("fffff"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
            trinton.make_custom_dynamic("fffffpp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 0, 10, 11, 11, -1]),
    ),
    trinton.hooked_spanner_command(
        string=library._fundamental_to_multiphonic["d hspace"].string,
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, 11]),
        right_padding=1.5,
    ),
    voice=score["bassoon voice"],
    beam_meter=True,
)

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
    evans.PitchHandler(
        [library._brass_chord_pitches["frenchhorn voice"]],
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
            abjad.BreathMark(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Kneifen der Kehle, wie ein Knurren",
        ),
        full_string=True,
        padding=10.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=1,
    ),
    voice=score["tenortrombone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["e,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["tenortrombone voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# tuba music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([10, 1], 4)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["fs,", "e,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["tuba voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(evans.talea([10, 1], 4)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([["fs,,", "fs,"], ["e,,", "e,"]]),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("sffz"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(pitched=True, first=True),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["c", "e"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffffpp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)


# percussion 2 music commands

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
    voice=score["percussion 3 voice"],
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
            clef="strings",
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                    "before",
                ),
                trinton.make_custom_dynamic("fffff"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
        ),
        trinton.attachment_command(
            attachments=[abjad.Articulation("marcato")],
            selector=trinton.pleaves(),
        ),
        trinton.invisible_accidentals_command(
            selector=trinton.select_leaves_by_index([0], pitched=True)
        ),
        voice=score[voice_name],
        beam_meter=True,
    )

for voice_name in ["violin 2 voice", "viola voice", "cello voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.attachment_command(
            attachments=[
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score[voice_name],
    )

for voice_name in ["violin 1 voice", "violin 2 voice", "viola voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (1,)),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="DP, Kratzen",
            ),
            full_string=True,
            padding=8,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=11.5,
        ),
        voice=score[voice_name],
    )

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5.5 \center-column { \line { Immer die gleiche Artikulation, } \line { ohne hörbare Grundschläge } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["violin 1 voice"],
)

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
                string="Steg ( kein Kratzen )",
            ),
            library.return_boxed_markup(
                string="Ord.",
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
                string="Steg ( kein Kratzen )",
            ),
            library.return_boxed_markup(
                string="Ord.",
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

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.talea(library.moth_talea, 16),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)]),
        pitch_list=[
            -1,
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)]),
        pitch_list=[
            "g",
            "b",
            "c'",
            "d'",
            "f'",
            "g'",
            "a'",
            "a'",
            "b'",
            "c''",
            "d''",
            "e'''",
        ],
    ),
    library.boxed_markup(
        string="( Gleichmäßiges Glissando bis zum letzten Ton )",
        selector=trinton.select_leaves_by_index([8]),
    ),
    library.change_lines(
        lines=5, clef="altovarC", selector=trinton.select_leaves_by_index([8])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)], nested=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.pleaves(),
    ),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([-1, -1])),
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
                string="Steg ( kein Kratzen )",
            ),
            library.return_boxed_markup(
                string="Ord.",
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
    voice=score["viola voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="DP, Kratzen",
        ),
        full_string=True,
        padding=8,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=11.5,
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(
        evans.talea(library.moth_talea, 16),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)]),
        pitch_list=[
            -5,
        ],
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.ranged_selector(ranges=[range(8, 20)]),
        pitch_list=[
            "c,",
            "e,",
            "g,",
            "a,",
            "d",
            "f",
            "f",
            "g",
            "a",
            "c'",
            "c'",
            "e'''",
        ],
    ),
    library.boxed_markup(
        string="( Gleichmäßiges Glissando bis zum letzten Ton )",
        selector=trinton.select_leaves_by_index([8]),
    ),
    library.change_lines(
        lines=5, clef="bass", selector=trinton.select_leaves_by_index([8])
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
                string="Steg ( kein Kratzen )",
            ),
            library.return_boxed_markup(
                string="Ord.",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 8, 8, -1],
        ),
        style="solid-line-with-arrow",
        padding=10.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["cello voice"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["a,", "e,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 4)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("fffffpp"),
            abjad.StartHairpin("<"),
            trinton.make_custom_dynamic("fffff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([4, 1], 4)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\hideNotes", site="before"),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \override #'(font-name . "Bodoni72 Book Italic")
                    { \hspace #-20 \center-column { \line { Leichte Überschneidung }
                    \line { mit dem folgenden Flötenton } } }"""
                ),
                r"- \tweak font-size #'2",
                r"- \tweak padding 2",
                r"- \tweak whiteout-style #'outline'",
                r"- \tweak whiteout 1",
                r"- \tweak X-extent ##f",
            ),
            abjad.bundle(
                abjad.Markup(r"\middle-fermata"),
                r"- \tweak font-size #'15",
                r"- \tweak padding 2",
            ),
            abjad.LilyPondLiteral(r"\unHideNotes", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, 1, 1, -1]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.hooked_spanner_command(
        string=r"""\markup \fontsize #5.5 { "Rall. moltiss." }""",
        full_string=True,
        padding=4,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=-3,
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
            abjad.LilyPondLiteral(r"\break", "before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
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

# flute line breaking

# library.line_break(
#     score=score,
#     measure_range=(1, 2),
#     break_method="noBreak"
# )

# library.line_break(
#     score=score,
#     measure_range=(3,),
#     break_method="break"
# )

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="oboe",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="17",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
