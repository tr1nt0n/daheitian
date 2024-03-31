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

score = library.daheitian_score(ts.section_11_ts)

# commands

# timpani commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                5,
                1,
                6,
                1,
                1,
                3,
                1,
            ],
            8,
            extra_counts=[0, 2, 0, 1, -1],
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            evans.make_fancy_gliss(
                7,
                6,
                7,
                4,
                7,
                5,
                7,
                3,
                7,
                0.5,
                0.5,
                2,
                0.5,
                7,
                7,
                7,
                7,
                5,
                4,
                3,
                2,
                1,
                1,
                1,
                0.5,
                0.5,
                1,
                2,
                1,
                1,
                1,
                2,
                0.5,
                0.5,
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                7,
                3,
                7,
                3,
                7,
                3,
                7,
                3,
                right_padding=-3,
            ),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 0, 9, 9, -2]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")], selector=trinton.logical_ties(first=True)
    ),
    trinton.change_notehead_command(
        notehead="highest", selector=trinton.select_leaves_by_index([0, -1])
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 24)], nested=True),
    ),
    trinton.tremolo_command(),
    trinton.notehead_bracket_command(),
    voice=score["percussion 1 voice"],
    beam_meter=True,
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                5,
                1,
                1,
                1,
                1,
                1,
                6,
                7,
                1,
                1,
                1,
            ],
            16,
            extra_counts=[
                2,
                0,
                4,
                0,
            ],
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                2,
            ],
            5,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["f''''", "ef''''", "g''''", "b'''", "a''''", "cs''''"]),
    library.unpitched_glissandi(trill=True),
    trinton.call_rmaker(
        rmaker=rmakers.beam,
        selector=trinton.ranged_selector(
            ranges=[
                range(22, 24),
                range(
                    31,
                    33,
                ),
                range(33, 37),
            ],
            nested=True,
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), trinton.make_custom_dynamic("pp +")],
        selector=trinton.select_leaves_by_index([0, -7], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=14,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    library.soli_1(padding=10),
    trinton.notehead_bracket_command(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["violin 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 8)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 1 voice"],
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                2,
                5,
                1,
                1,
                1,
                1,
                1,
                6,
                7,
                1,
                1,
                1,
            ],
            16,
            extra_counts=[
                2,
                0,
                4,
                0,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([5], 7)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        ["b'''", "ef''''", "a'''", "fs''''", "cs''''", "e''''", "cs''''", "af''''"]
    ),
    library.soli_1(padding=12),
    library.change_lines(lines=5, clef="treble"),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), trinton.make_custom_dynamic("pp +")],
        selector=trinton.select_leaves_by_index([0, -6], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=13.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    trinton.notehead_bracket_command(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["violin 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 3)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 8)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            8,
            9,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["violin 2 voice"],
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                1,
                6,
                7,
                1,
                1,
                1,
            ],
            16,
            extra_counts=[
                -2,
                0,
                2,
                0,
            ],
        )
    ),
    trinton.force_rest(
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                7,
                8,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(
        ["gs'''", "gf''''", "a'''", "f''''", "c''''", "ef''''"],
    ),
    library.change_lines(lines=5, clef="treble"),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("pp +"),
        ],
        selector=trinton.select_leaves_by_index([0, -7], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=14.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    library.soli_1(padding=12),
    trinton.notehead_bracket_command(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["viola voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(
        _,
        (
            8,
            9,
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    voice=score["viola voice"],
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
                1,
                1,
                1,
                1,
                6,
                7,
                1,
                1,
                1,
            ],
            16,
            extra_counts=[
                -2,
                0,
                2,
                0,
            ],
        )
    ),
    trinton.force_rest(selector=trinton.patterned_tie_index_selector([2, 6], 8)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    rmakers.force_diminution,
    trinton.respell_tuplets_command(),
    evans.PitchHandler(
        ["bf'''", "a''", "gs'''", "fs'''"],
    ),
    library.unpitched_glissandi(trill=True),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("treble"),
            abjad.StartHairpin("o<"),
            trinton.make_custom_dynamic("pp +"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -6], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=11.5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    library.soli_1(padding=9),
    trinton.notehead_bracket_command(),
    trinton.ottava_command(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["cello voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2,)),
    beam_meter=True,
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
                met_string=library.metronome_marks["144"],
                mod_string=library.metronome_marks["5:4(8)=4"],
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\pageBreak", "after")],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# cues

for voice_name in ["flute voice", "frenchhorn voice", "percussion 2 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 9)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\override Staff.MultiMeasureRest.transparent = ##t", site="before"
                ),
                abjad.LilyPondLiteral(
                    r"\revert Staff.MultiMeasureRest.transparent", site="absolute_after"
                ),
            ],
            selector=trinton.select_leaves_by_index(
                [
                    0,
                ]
            ),
            tag=abjad.Tag("+PARTS"),
        ),
        trinton.IntermittentVoiceHandler(
            rhythm_handler=evans.RhythmHandler(
                evans.talea(
                    [
                        2,
                        5,
                        1,
                        1,
                        1,
                        1,
                        1,
                        6,
                        7,
                        1,
                        1,
                        1,
                    ],
                    16,
                    extra_counts=[
                        2,
                        0,
                        4,
                        0,
                    ],
                )
            ),
            direction=abjad.DOWN,
            voice_name=f"{voice_name} cue",
            from_components=False,
            preprocessor=trinton.fuse_quarters_preprocessor((3, 2)),
            temp_name="secondary",
        ),
        voice=score[voice_name],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 9)),
        trinton.force_rest(
            selector=trinton.patterned_tie_index_selector(
                [
                    2,
                ],
                5,
            )
        ),
        evans.RewriteMeterCommand(boundary_depth=-2),
        evans.PitchHandler(["f''''", "ef''''", "g''''", "b'''", "a''''", "cs''''"]),
        library.change_lines(lines=5, clef="treble"),
        library.unpitched_glissandi(trill=True),
        trinton.call_rmaker(
            rmaker=rmakers.beam,
            selector=trinton.ranged_selector(
                ranges=[
                    range(22, 24),
                    range(
                        31,
                        33,
                    ),
                    range(33, 37),
                ],
                nested=True,
            ),
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    r"\once \override DynamicLineSpanner.padding = 6", site="before"
                ),
                abjad.StartHairpin("o<"),
                trinton.make_custom_dynamic("pp +"),
            ],
            selector=trinton.select_leaves_by_index([0, 0, -7], pitched=True),
        ),
        trinton.notehead_bracket_command(),
        trinton.ottava_command(
            selector=trinton.select_leaves_by_index([0, -1], pitched=True)
        ),
        library.einsatz(
            following_text="Erste Geige ( 1. soli )",
            selector=trinton.pleaves(),
            direction=abjad.UP,
            tweaks=None,
            padding=0,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
        beam_meter=True,
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (4, 8)),
        trinton.attachment_command(
            attachments=[abjad.Articulation("tenuto")],
            selector=trinton.logical_ties(first=True, pitched=True),
            direction=abjad.UP,
        ),
        voice=score[f"{voice_name} cue"],
    )

    trinton.make_music(
        lambda _: trinton.select_target(_, (9,)),
        trinton.attachment_command(
            attachments=[abjad.Articulation(">")],
            selector=trinton.logical_ties(first=True, pitched=True),
            direction=abjad.UP,
        ),
        voice=score[f"{voice_name} cue"],
    )


# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# parts

trinton.extract_parts(score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/sections/11",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="11",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
