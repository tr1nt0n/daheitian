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

score = library.daheitian_score(ts.section_23_ts)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([_ for _ in library.logistic_map(6) if _ > 2], 32)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f''", "g''"]),
    library.flute_graces(),
    trinton.pitch_with_selector_command(
        pitch_list=["af''"], selector=trinton.pleaves(grace=True)
    ),
    library.flute_grace_attachments(),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("ff")],
        selector=trinton.select_logical_ties_by_index([0, 10], first=True),
    ),
    library.a2(padding=0),
    voice=score["flute voice"],
    beam_meter=True,
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
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
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([12]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">"), abjad.Articulation("staccato")],
        selector=trinton.logical_ties(first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 10], first=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Slaptongue",
        ),
        full_string=True,
        padding=5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
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
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([-13]),
    trinton.pitch_with_selector_command(
        pitch_list=[-14],
        selector=trinton.pleaves(
            exclude=[
                0,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
            ]
        ),
    ),
    library.remove_accidentals(),
    library.percussive_bassoon_attachments(),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("staccato"),
        ],
        selector=trinton.logical_ties(first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 0, 12], first=True),
    ),
    trinton.notehead_bracket_command(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
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
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                )
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation,
        selector=trinton.select_tuplets_by_index([0, 3, 4, 6]),
    ),
    evans.PitchHandler(library.piano_kb_pitches(54)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 15], first=True),
    ),
    trinton.pitch_with_selector_command(
        selector=trinton.patterned_tie_index_selector(
            [
                4,
            ],
            10,
        ),
        pitch_list=[-14],
    ),
    trinton.detach_command(
        detachments=[abjad.Articulation],
        selector=trinton.patterned_tie_index_selector(
            [
                4,
            ],
            10,
            first=True,
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.LilyPondLiteral(r'\change Staff = "piano 2 staff"', "before"),
            abjad.LilyPondLiteral(r'\change Staff = "piano 1 staff"', "after"),
        ],
        selector=trinton.patterned_tie_index_selector(
            [
                4,
            ],
            10,
            first=True,
        ),
        direction=abjad.UP,
    ),
    trinton.ottava_command(octave=2, selector=trinton.select_leaves_by_index([0, -1])),
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
                r"\once \override TupletBracket.padding = -4", "before"
            )
        ],
        selector=trinton.select_tuplets_by_index([1, -1]),
    ),
    trinton.notehead_bracket_command(),
    voice=score["piano 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    library.make_skips(selector=abjad.select.leaves),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["piano 2 voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(library.harp_chords),
    trinton.ottava_command(selector=trinton.select_leaves_by_index([0, -1])),
    trinton.tremolo_command(),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Arpeggio(),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                2,
            ]
        ),
    ),
    voice=score["harp 1 voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    trinton.change_notehead_command(notehead="la"),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
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
    voice=score["harp 2 voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.aftergrace(),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 8)], nested=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, 5, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((7,)),
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            4,
        )
    ),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Bangu"),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 7]),
    ),
    voice=score["percussion 2 voice"],
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (
                    1,
                    1,
                    1,
                    1,
                )
            ]
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Amboss mit Hämmerchen"),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mf"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 0, 8], first=True),
    ),
    voice=score["percussion 3 voice"],
    beam_meter=True,
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1], 16)),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["violin 1 voice"]),
    library.fuse_contiguous(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["df'"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(r"twist-bow")],
        selector=trinton.pleaves(),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 7], pitched=True),
    ),
    library.tutti(padding=0),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([83, 1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "df'",
            "aqf",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[
                range(0, 8),
            ],
            nested=True,
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1]),
    ),
    library.soli_1(padding=0),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ord.",
            ),
            library.return_boxed_markup(
                string="Steg",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        right_padding=-1,
        command="Three",
    ),
    voice=score["guitar 1 voice"],
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1], 16)),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["violin 2 voice"]),
    library.fuse_contiguous(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["a"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(r"twist-bow")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 4], pitched=True, first=True
        ),
    ),
    library.tutti(padding=0),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([40, 43, 1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "a",
            "gs",
            "aqf",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 4), range(3, 8)],
            nested=True,
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1]),
    ),
    library.soli_1(padding=0),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ord.",
            ),
            library.return_boxed_markup(
                string="Steg",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        right_padding=-1,
        command="Three",
    ),
    voice=score["guitar 2 voice"],
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1], 16)),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["viola voice"]),
    library.fuse_contiguous(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["gs"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(r"twist-bow")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("altovarC")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3], pitched=True, first=True
        ),
    ),
    library.tutti(padding=0),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([38, 45, 1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "aqf",
            "a",
            "aqs",
        ]
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 5), range(4, 10)],
            nested=True,
        )
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1]),
    ),
    library.soli_1(padding=0),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ord.",
            ),
            library.return_boxed_markup(
                string="Steg",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        style="solid-line-with-arrow",
        padding=7,
        full_string=True,
        right_padding=-1,
        command="Three",
    ),
    voice=score["guitar 3 voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([1], 16)),
    rmakers.force_rest,
    trinton.force_note(selector=library._moths_selectors[2]["cello voice"]),
    library.fuse_contiguous(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["af"]),
    trinton.attachment_command(
        attachments=[abjad.Articulation(r"twist-bow")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pppp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ff"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 3], pitched=True, first=True
        ),
    ),
    library.tutti(padding=0),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([83, 1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "af",
        ]
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1]),
    ),
    library.soli_1(padding=0),
    trinton.spanner_command(
        strings=[
            library.return_boxed_markup(
                string="Ord.",
            ),
            library.return_boxed_markup(
                string="Steg",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, -1],
        ),
        style="solid-line-with-arrow",
        padding=8,
        full_string=True,
        right_padding=-1,
        command="Three",
    ),
    voice=score["guitar 4 voice"],
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(evans.talea([83, -1], 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["a,"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 7)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 2, 5, -1]),
    ),
    evans.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([83, 1], 16)),
        direction=abjad.UP,
        voice_name="contrabass divisi voice",
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        [
            "af'",
        ]
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(
            ranges=[range(0, 3), range(2, 8)], nested=True
        ),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartSlur(),
            abjad.StartHairpin("<"),
            abjad.Dynamic("ffff"),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, -1]),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=[
            r"\markup {}",
            library.return_boxed_markup(
                string="SP",
            ),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 2, 2, -1],
        ),
        style="solid-line-with-arrow",
        padding=16.5,
        full_string=True,
        right_padding=-1,
        end_hook=True,
        end_hook_style="solid-line-with-hook",
    ),
    voice=score["contrabass divisi voice"],
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
            library.metronome_markups(
                met_string=library.metronome_marks["72"],
                mod_string=library.metronome_marks["3:4(4)=4"],
                padding=2,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\break", "before"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\pageBreak", "after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.MultiMeasureRest.transparent = ##t", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.MultiMeasureRest.transparent", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
        tag=abjad.Tag("+PARTS"),
    ),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(
            evans.talea(
                [-100],
                4,
            )
        ),
        direction=abjad.DOWN,
        voice_name="frenchhorn voice cue",
        from_components=False,
        temp_name="secondary",
        preprocessor=None,
    ),
    voice=score["frenchhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.einsatz(
        following_text="Ab hier bis Takt 173 Grand Tutti",
        selector=abjad.select.leaves,
        direction=abjad.UP,
        tweaks=None,
        padding=0,
        termination=False,
    ),
    library.cue_eraser(),
    voice=score["frenchhorn voice cue"],
    beam_meter=True,
)

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "piano 2 voice"],
)

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=["frenchhorn voice secondary"],
)

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="harp",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="23",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
