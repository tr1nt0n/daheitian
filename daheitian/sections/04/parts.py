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

score = library.daheitian_score(ts.section_4_ts)

# commands

# timpani music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True)
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("aqs,16"),
    evans.PitchHandler(["c", "aqs,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 1 voice"],
)

# strings music commands

for voice_name in ["violin 1 voice", "violin 2 voice", "viola voice", "cello voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (2, 4)),
        evans.RhythmHandler(evans.talea([-2, 8], 4)),
        library.change_lines(
            lines=1,
            clef="percussion",
        ),
        trinton.hooked_spanner_command(
            string=library.return_boxed_markup(
                string="Steg",
            ),
            full_string=True,
            padding=3,
            style="solid-line-with-hook",
            selector=trinton.select_leaves_by_index([0, -1], pitched=True),
            right_padding=4,
        ),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Markup(
                    library.return_boxed_markup(
                        string="Abrupt beginnen und enden", font="italic"
                    )
                ),
                abjad.Dynamic("mp"),
                abjad.StartHairpin("--"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
        ),
        voice=score[voice_name],
    )

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)), library.unis(), voice=score["cello voice"]
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 3)], nested=True),
        no_ties=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            trinton.make_custom_dynamic("ffpp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 4)),
    evans.RhythmHandler(rmakers.note),
    evans.RewriteMeterCommand(),
    library.change_lines(
        lines=1,
        clef="percussion",
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Steg",
        ),
        full_string=True,
        padding=3,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Markup(
                library.return_boxed_markup(string="Abrupt enden", font="italic")
            ),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
    ),
    voice=score["contrabass voice"],
    preprocessor=trinton.fuse_preprocessor((2,)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rmakers.note),
    library.aftergrace("a,16"),
    evans.PitchHandler(["a,"]),
    library.change_lines(lines=5, clef="bass"),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Glissando(),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">o"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1]),
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
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("||"),
            abjad.LilyPondLiteral(r"\break", "after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.fermata_measures(
    score=score,
    measures=[
        5,
    ],
    font_size="15",
    blank=False,
)

trinton.fermata_measures(
    score=score,
    measures=[
        0,
    ],
    fermata="long-fermata",
    font_size="15",
    blank=False,
)

for measure, tempo in zip(
    [
        1,
        3,
        6,
    ],
    [
        library.metronome_markups(
            met_string=library.metronome_marks["144"],
            mod_string=library.metronome_marks["3:2(8)=4"],
            padding=1,
            # hspace="\hspace #-5",
        ),
        library.metronome_markups(
            met_string=library.metronome_marks["96"],
            mod_string=library.metronome_marks["4.=4"],
            padding=1,
        ),
        library.metronome_markups(
            met_string=library.metronome_marks["144"],
            mod_string=library.metronome_marks["3:2(4)=4"],
            padding=0,
        ),
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[tempo],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

# cues

for voice_name in ["flute voice", "bassclarinet voice", "harp 1 voice"]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
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
            rhythm_handler=evans.RhythmHandler(evans.talea([1], 1)),
            direction=abjad.UP,
            voice_name=f"{voice_name} cue",
            from_components=False,
            temp_name="secondary",
        ),
        voice=score[voice_name],
    ),

    trinton.make_music(
        lambda _: trinton.select_target(_, (6,)),
        library.aftergrace("aqs,16"),
        evans.PitchHandler(["c", "aqs,"]),
        trinton.linear_attachment_command(
            attachments=[
                abjad.Clef("bass"),
                abjad.Glissando(),
                abjad.Dynamic("mp"),
                abjad.StartHairpin(">o"),
                abjad.StopHairpin(),
            ],
            selector=trinton.select_leaves_by_index([0, 0, 0, 0, -1]),
        ),
        trinton.tremolo_command(),
        library.einsatz(
            following_text="Pauken",
            selector=trinton.pleaves(),
            direction=abjad.UP,
            tweaks=None,
            padding=0,
        ),
        library.cue_eraser(),
        voice=score[f"{voice_name} cue"],
    )

# cutaway

trinton.whiteout_empty_staves(score=score, cutaway="blank")

# violin 1 line breaking

# library.line_break(score=score, measure_range=(5, 7), break_method="noBreak")

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="contrabass",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
