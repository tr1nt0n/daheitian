import abjad
import baca
import evans
import itertools
import quicktions
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms
from daheitian import ts

# score

score = library.daheitian_score(ts.section_19_ts)

# commands

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 24)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        ),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["bassclarinet voice"]
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["a'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["as'"],
        selector=trinton.patterned_tie_index_selector([0, 4], 7, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("mp"),
            trinton.make_custom_dynamic("mp +"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                5,
                8,
                12,
                15,
                19,
                22,
            ],
            pitched=True,
            first=True,
        ),
    ),
    library.timbre_trills(),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            25,
            27,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        ),
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["a'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["as'"],
        selector=trinton.patterned_tie_index_selector([0, 4], 7, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index(
            [
                1,
                5,
                8,
                12,
            ],
            pitched=True,
            first=True,
        ),
    ),
    library.timbre_trills(),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 27)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Slaptongue",
        ),
        full_string=True,
        padding=11.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            6,
            24,
        ),
    ),
    library.imbrication(
        pitch=10,
        name="bassclarinet imbrication",
        dynamic="ff",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25, 27)),
    library.imbrication(
        pitch=10,
        name="bassclarinet imbrication",
        dynamic="ffff",
    ),
    voice=score["bassclarinet voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 24)),
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
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([-13]),
    trinton.pitch_with_selector_command(
        pitch_list=[-14],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                2,
                4,
            ],
            6,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                3,
                5,
                9,
                11,
            ],
            pitched=True,
            first=True,
        ),
    ),
    library.percussive_bassoon_attachments(),
    library.timbre_trills(),
    library.imbrication(
        pitch=-14,
        name="bassoon imbrication",
        dynamic="ff",
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
)

bassoon_leaves = abjad.select.leaves(score["bassoon voice"])

abjad.detach(abjad.StopBeam(), bassoon_leaves[22])

abjad.attach(abjad.StopBeam(), bassoon_leaves[21])

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            25,
            27,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        ),
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([-13]),
    trinton.pitch_with_selector_command(
        pitch_list=[-14],
        selector=trinton.patterned_tie_index_selector(
            [
                1,
                3,
                4,
            ],
            7,
            pitched=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartBeam(),
            abjad.StopBeam(),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("mp")],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                2,
                5,
                9,
                12,
                16,
            ],
            pitched=True,
            first=True,
        ),
    ),
    library.percussive_bassoon_attachments(),
    library.timbre_trills(),
    library.imbrication(
        pitch=-14,
        name="bassoon imbrication voice",
        dynamic="ffff",
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
)

imbrication_voice = abjad.select.leaves(score["bassoon imbrication voice"])

abjad.beam(imbrication_voice)

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 27)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["fs"]),
    evans.PitchHandler(
        [
            [
                quicktions.Fraction("253/128"),
                quicktions.Fraction("3/2"),
            ],
        ],
        as_ratios=True,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 13)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), trinton.make_custom_dynamic("mp +")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["frenchhorn voice"],
    preprocessor=trinton.fuse_preprocessor((9,)),
)

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            21,
            24,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        ),
    ),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation,
        selector=trinton.select_tuplets_by_index(
            [
                0,
                1,
                2,
            ]
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(library.piano_kb_pitches()),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.LilyPondLiteral(
                r"\override Staff.DynamicLineSpanner.padding = #6", site="before"
            ),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            abjad.LilyPondLiteral(
                r"\revert Staff.DynamicLineSpanner.padding", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 21, 21, -1]),
    ),
    abjad.beam,
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25, 29)),
    library.make_skips(
        selector=abjad.select.leaves,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Clef("F_8")],
        selector=trinton.select_leaves_by_index([0, 3]),
    ),
    voice=score["piano 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            25,
            27,
        ),
    ),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        ),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(library.piano_kb_pitches(28)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.pleaves(),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.patterned_tie_index_selector(
            [
                6,
                12,
                16,
            ],
            27,
        ),
        pitch_list=[-14],
    ),
    trinton.detach_command(
        detachments=[abjad.Articulation],
        selector=trinton.patterned_tie_index_selector(
            [
                6,
                12,
                16,
            ],
            27,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.LaissezVibrer(),
            abjad.LilyPondLiteral(r'\change Staff = "piano 2 staff"', "before"),
            abjad.LilyPondLiteral(r'\change Staff = "piano 1 staff"', "after"),
            abjad.Dynamic("ffff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                6,
                12,
                16,
            ],
            27,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ff"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                7,
                13,
                17,
            ],
            27,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #UP", "before"
            ),
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = -8", "before"
            )
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 27)),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (28, 29)),
    evans.RhythmHandler(evans.talea([1, -19, 4], 16)),
    library.make_skips(selector=trinton.select_leaves_by_index([1, 2])),
    library.aftergrace(selector=trinton.select_leaves_by_index([-1])),
    evans.PitchHandler(["bf,,,", "b,,,", "b,,,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 5)], nested=True),
        zero_padding=True,
    ),
    trinton.noteheads_only(selector=trinton.pleaves(exclude=[0])),
    trinton.transparent_noteheads(
        selector=trinton.pleaves(grace=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            trinton.make_custom_dynamic("ffffffffff"),
            abjad.LilyPondLiteral(r'\change Staff = "piano 2 staff"', "before"),
            abjad.LilyPondLiteral(r'\change Staff = "piano 1 staff"', "after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25, 28)),
    abjad.beam,
    voice=score["piano 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25, 28)),
    library.piano_pedals(selector=abjad.select.leaves, counts=[4], pitched=None),
    voice=score["piano 2 voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 27)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 13)], nested=True),
        no_ties=True,
    ),
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
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, -1]),
        direction=abjad.UP,
    ),
    voice=score["harp 2 voice"],
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 27)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["b,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 13)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Clef("bass"), abjad.StartHairpin("o<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.tremolo_command(),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Mit Ketten",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=2,
    ),
    voice=score["percussion 1 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 27)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                13,
                13,
                24,
            ],
            first=True,
        ),
    ),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 24)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1)]),
    ),
    rmakers.force_rest,
    trinton.force_note(
        selector=library._klavierubung_selectors[2]["percussion 3 voice"]
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[1],
        selector=trinton.patterned_tie_index_selector([3, 5, 8], 9, pitched=True),
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.Dynamic("p"),
            trinton.make_custom_dynamic("p +"),
            abjad.Dynamic("mp"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("mf"),
            abjad.Dynamic("f"),
            trinton.make_custom_dynamic("f +"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                4,
                6,
                9,
                13,
                15,
                18,
                22,
            ],
            pitched=True,
            first=True,
        ),
    ),
    library.imbrication(
        pitch=1,
        name="percussion 3 imbrication",
        dynamic="ff",
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (25, 27)),
    evans.RhythmHandler(
        evans.tuplet([(1, 1)]),
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.pitch_with_selector_command(
        pitch_list=[1],
        selector=trinton.patterned_tie_index_selector([1, 2], 3, pitched=True),
    ),
    library.change_lines(lines=1, clef="percussion"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("ff")],
        selector=trinton.select_leaves_by_index(
            [
                3,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("stopped")],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    library.imbrication(
        pitch=1,
        name="percussion 3 imbrication",
        dynamic="ffff",
    ),
    library.remove_accidentals(),
    trinton.notehead_bracket_command(),
    voice=score["percussion 3 voice"],
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (27, 28)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                1,
                1,
                1,
                1,
                3,
                4,
                1,
                1,
                6,
            ],
            16,
            treat_tuplets=False,
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0])),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f''''", "ef''''", "g''''", "b'''", "a''''", "cs''''"]),
    library.unpitched_glissandi(trill=True),
    trinton.ottava_command(
        octave=2, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                0,
                6,
                6,
                9,
            ],
            first=True,
            pitched=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="1.|2.",
        ),
        full_string=True,
        padding=14.6,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=11,
    ),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="MSP",
            ),
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 11)),
    beam_meter=True,
)

violin_1_leaves = abjad.select.leaves(score["violin 1 voice"])

abjad.attach(abjad.StopHairpin(), violin_1_leaves[-1])

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 27)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["d''''"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 13)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), trinton.make_custom_dynamic("pp +")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP, senza vib.",
        ),
        full_string=True,
        padding=7,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1]),
        right_padding=2,
    ),
    voice=score["violin 2 voice"],
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 27)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([["b'", "ds''"]]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 13)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("altovarC"),
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("pp +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    trinton.artificial_harmonics(),
    voice=score["viola voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (19, 27)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["b,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 13)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("mf +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["contrabass voice"],
)

# markups

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

trinton.remove_redundant_time_signatures(score=score)

library.ties(score=score)

horn_leaves = abjad.select.leaves(score["frenchhorn voice"])

for leaf in horn_leaves:
    abjad.detach(abjad.RepeatTie, leaf)
    abjad.attach(
        abjad.LilyPondLiteral(r"\once \override Tie.transparent = ##t", "before"),
        leaf,
        tag=abjad.Tag("+PARTS"),
    )

# globals

trinton.fermata_measures(
    score=score,
    measures=[
        29,
    ],
    fermata="very-long-fermata",
    font_size="15",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (24,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\break", "after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (28,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\noBreak", "after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (29,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( bis Klavierresonanz aufhört,} \line { "dann + ~2\" zusätzliche Stille" ) } }"""
                ),
                r"- \tweak padding #-12",
            ),
            abjad.BarLine("||", site="after"),
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
    voice_names=[
        _
        for _ in library.all_voice_names
        if _ != "bassclarinet voice"
        and _ != "bassoon voice"
        and _ != "piano 2 voice"
        and _ != "percussion 3 voice"
    ],
)

for voice_name, measures in zip(
    [
        "bassclarinet voice",
        "bassoon voice",
        "piano 2 voice",
        "percussion 3 voice",
    ],
    [
        [1, 2, 3, 4, 5, 28, 29],
        [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            28,
            29,
        ],
        [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20,
            21,
            22,
            23,
            24,
        ],
        [
            28,
            29,
        ],
    ],
):

    library.blank_measure_by_hand(
        score=score,
        voice_names=[voice_name],
        measures=measures,
    )

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/19",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="19",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
