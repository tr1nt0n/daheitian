import abjad
import baca
import evans
import fractions
import itertools
import trinton
from abjadext import rmakers
from abjadext import microtones
from daheitian import library
from daheitian import transforms
from daheitian import ts

# score

score = library.daheitian_score(ts.section_30_ts)

# markup

swelling_markup = abjad.Markup(
    r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { "( Jede Note al niente dal niente )" }"""
)

# commands

# flute music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 16)),
    evans.RhythmHandler(evans.talea([1], 1)),
    evans.PitchHandler(["a'"]),
    library.change_lines(lines=5, clef="treble"),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fp"), abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.parenthesize_noteheads(),
    library.onbeat_flute_handler,
    trinton.pitch_with_selector_command(
        pitch_list=library.flute_overblowing_pitches,
        selector=trinton.grace_selector(),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.patterned_leaf_index_selector(
            [
                0,
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
            ],
            15,
        ),
    ),
    library.a2(
        padding=14,
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["flute voice"],
)

# bass clarinet music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
    evans.RhythmHandler(evans.tuplet([(-1,), (7, 2, 1)])),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["bqs"]),
    trinton.notehead_bracket_command(),
    library.ring_mod_attachments(dynamics=["pp +", "pp"]),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([1000], 8)),
        direction=abjad.DOWN,
        voice_name="bassclarinet divisi voice",
    ),
    voice=score["bassclarinet voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["ass"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
            ]
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 12)], nested=True),
        no_ties=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([-2])
    ),
    voice=score["bassclarinet divisi voice"],
)

# bassoon music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
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
        evans.RhythmHandler(evans.tuplet([(-1,), (7, 2, 1)])),
        direction=abjad.UP,
        voice_name="bassoon intermittent voice",
        from_components=False,
        preprocessor=trinton.fuse_quarters_preprocessor((2, 3)),
        temp_name="temp",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["aqs,"]),
    trinton.notehead_bracket_command(),
    library.ring_mod_attachments(dynamics=["pp +", "pp"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.wenn_keine_bk(),
    library.soli_1(
        padding=3,
    ),
    library.cue_eraser(),
    voice=score["bassoon intermittent voice"],
)

# horn music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    evans.RhythmHandler(
        evans.tuplet(
            [(9, 4, 1), (-1,)],
        )
    ),
    rmakers.rewrite_dots,
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(
        [
            fractions.Fraction(31, -4),
        ]
    ),
    trinton.force_accidentals_command(
        selector=trinton.patterned_leaf_index_selector([0], 4, pitched=True)
    ),
    trinton.notehead_bracket_command(),
    library.ring_mod_attachments(dynamics=["pp", "pp +"]),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([1000], 8)),
        direction=abjad.DOWN,
        voice_name="frenchhorn divisi voice",
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Accidental.whiteout-style = #'outline",
                    r"\override Staff.Accidental.whiteout = 1",
                    r"\override Staff.Accidental.layer = 10",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["frenchhorn voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["e"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                5,
            ]
        ),
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 14)], nested=True),
        no_ties=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([-2])
    ),
    voice=score["frenchhorn divisi voice"],
)

# harp music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 16)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            1,
        )
    ),
    evans.PitchHandler(["a"]),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("tenuto"),
            abjad.LaissezVibrer(),
        ],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.boxed_markup(
        string="Die Harfe bis nach der folgenden Fermate klingen lassen",
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, first=True),
    ),
    voice=score["harp 2 voice"],
)

# piano music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rmakers.note),
    evans.PitchHandler(["a,,,"]),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.LaissezVibrer(),
            trinton.make_custom_dynamic("ffffffffff"),
            abjad.Articulation(">"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.ottava_command(octave=-1, selector=trinton.select_leaves_by_index([0, -1])),
    voice=score["piano 2 voice"],
)

# percussion 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 16)),
    evans.RhythmHandler(evans.talea([-7, 10000], 16, treat_tuplets=False)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    5,
                ],
                16,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    library.change_lines(lines=1, clef="percussion"),
    library.boxed_markup(string="Triangel"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(exclude=[-1], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[swelling_markup, abjad.StartHairpin("o<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, 7], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    library.boxed_markup(
        string="Das Triangel bis nach der folgenden Fermate klingen lassen",
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, first=True),
    ),
    trinton.tremolo_command(),
    voice=score["percussion 2 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((7, 1000)),
)

# percussion 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 16)),
    evans.RhythmHandler(evans.talea([-5, 10000], 16, treat_tuplets=False)),
    trinton.replace_with_rhythm_selection(
        rhythmhandler=evans.RhythmHandler(
            evans.talea(
                [
                    1,
                ],
                2,
            )
        ),
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.treat_tuplets(),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler("a"),
    library.change_lines(lines=5, clef="treble"),
    library.boxed_markup(string="Glockenspiel"),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(exclude=[-1], first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[swelling_markup, abjad.StartHairpin("o<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, 7], pitched=True),
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[
            abjad.LaissezVibrer(),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    library.boxed_markup(
        string="Das Glockenspiel bis nach der folgenden Fermate klingen lassen",
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, first=True),
    ),
    voice=score["percussion 3 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_sixteenths_preprocessor((5, 1000)),
)

# violin 1 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 16)),
    evans.RhythmHandler(
        evans.talea(
            [
                9,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([library._climax_pitches["violin 1 voice"][1]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            swelling_markup,
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 5, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 1 voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="MSP",
        ),
        full_string=True,
        padding=14,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=4,
    ),
    voice=score["violin 1 voice"],
    beam_meter=True,
)

# violin 2 music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
    evans.RhythmHandler(
        evans.talea(
            [
                7,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([library._climax_pitches["violin 2 voice"][1]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 7, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 2 voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([3], 8)),
        direction=abjad.DOWN,
        voice_name="violin 2 divisi voice",
    ),
    voice=score["violin 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Beide MSP",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=15,
    ),
    voice=score["violin 2 voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler([library._climax_pitches["violin 2 voice"][2]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            swelling_markup,
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["violin 2 voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.ottava_command(
        octave=1, selector=trinton.select_leaves_by_index([0, -1], pitched=True)
    ),
    voice=score["violin 2 divisi voice"],
    beam_meter=True,
)

# viola music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 16)),
    evans.RhythmHandler(
        evans.talea(
            [
                1,
            ],
            4,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([library._climax_pitches["viola voice"][1]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.Clef("treble"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 11, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["viola voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([3], 16)),
        direction=abjad.DOWN,
        voice_name="viola divisi voice",
    ),
    voice=score["viola voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 16)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Beide MSP",
        ),
        full_string=True,
        padding=9,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=17,
    ),
    voice=score["viola voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([library._climax_pitches["viola voice"][2]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            swelling_markup,
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a'")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["viola voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["viola divisi voice"],
    beam_meter=True,
)

# cello music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    evans.RhythmHandler(
        evans.talea(
            [
                13,
            ],
            16,
        )
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([library._climax_pitches["cello voice"][1]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a")),
            abjad.Clef("treble"),
            abjad.StartHairpin("o<"),
            abjad.Dynamic("mp"),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, 10, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["cello voice"][1],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([11], 16)),
        direction=abjad.DOWN,
        voice_name="cello divisi voice",
    ),
    voice=score["cello voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    trinton.hooked_spanner_command(
        string=library.return_boxed_markup(
            string="Beide MSP",
        ),
        full_string=True,
        padding=5,
        style="solid-line-with-hook",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        right_padding=2,
    ),
    voice=score["cello voice temp"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    evans.PitchHandler([library._climax_pitches["cello voice"][2]]),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("espressivo")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            swelling_markup,
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            library._climax_partial_markups["cello voice"][2],
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["cello divisi voice"],
    beam_meter=True,
)

# contrabass music commands

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 16)),
    evans.RhythmHandler(
        rmakers.note,
    ),
    evans.RewriteMeterCommand(boundary_depth=-2),
    evans.PitchHandler(["a,"]),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("die Dynamik des Klaviers anpassen", name_is_textual=True),
            abjad.StartHairpin("<"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index(
            [
                0,
                0,
                0,
                6,
            ]
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TextScript.whiteout-style = #'outline \once \override TextScript.whiteout = 1 \once \override TextScript.layer = 2",
                "before",
            ),
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") { \hspace #-5 \center-column { \line { ma non aggressivo } \line { oppressi dalle figure della bellezza }} }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([6], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.glissando_command(
        selector=trinton.ranged_selector(ranges=[range(0, 15)], nested=True)
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 16)),
    evans.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([3], 16)),
        direction=abjad.UP,
        voice_name="contrabass divisi voice",
    ),
    voice=score["contrabass voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([-1])),
    trinton.noteheads_only(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        )
    ),
    trinton.transparent_noteheads(
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        )
    ),
    trinton.detach_command(
        detachments=[abjad.Tie],
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                3,
                4,
                5,
            ]
        ),
    ),
    voice=score["contrabass divisi voice"],
)

contrabass_string_list = []

for _ in abjad.select.logical_ties(score["contrabass divisi voice"]):
    contrabass_string_list.append(library.return_boxed_markup(string="Ord."))
    contrabass_string_list.append(library.return_boxed_markup(string="MSP"))

contrabass_logical_tie_list = []

contrabass_measures = abjad.select.group_by_measure(score["contrabass divisi voice"])

contrabass_pleaves = abjad.select.leaves(contrabass_measures[2:16], pitched=True)

iter_counter = 0

for _ in abjad.select.logical_ties(contrabass_pleaves):
    contrabass_logical_tie_list.append(iter_counter)
    contrabass_logical_tie_list.append(iter_counter + 1)
    iter_counter += 1


trinton.make_music(
    lambda _: trinton.select_target(_, (3, 16)),
    evans.RewriteMeterCommand(boundary_depth=-2),
    trinton.force_rest(selector=trinton.select_logical_ties_by_index([0])),
    evans.PitchHandler(["e"]),
    trinton.change_notehead_command(notehead="harmonic-mixed"),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("espressivo"),
        ],
        selector=trinton.logical_ties(pitched=True, first=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartTrillSpan(pitch=abjad.NamedPitch("a,")),
            abjad.StopTrillSpan(),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \override #'(font-name . "Bodoni72 Book Italic") {
                \column { \line { "( Obere Stimme: Jede Note al niente dal niente" }
                \line { Tiefere Stimme: gleiche Dynamik beibehalten ) } } }"""
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                library._climax_partial_markups["contrabass voice"][1],
                r"- \tweak padding #10.5",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.spanner_command(
        strings=contrabass_string_list,
        selector=trinton.select_logical_ties_by_index(
            contrabass_logical_tie_list, first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        full_string=True,
        command="One",
        right_padding=-1,
    ),
    voice=score["contrabass divisi voice"],
    beam_meter=True,
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
    fermata="very-long-fermata",
    font_size="15",
    blank=False,
    clef_whitespace=False,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #0.75 \override #'(font-name . "Bodoni72 Book Italic") \center-column { \line { ( bis Klavierresonanz } \line { \underline {fast} aufhört ) } }"""
                ),
                r"- \tweak padding #-13",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            library.metronome_markups(
                met_string=library.metronome_marks["72"], padding=-1
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[library.quarter_60_parts],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

# cello breaks

# cutaway

trinton.whiteout_empty_staves(
    score=score,
    cutaway="blank",
    voice_names=[_ for _ in library.all_voice_names if _ != "bassclarinet voice"],
)

library.blank_measure_by_hand(
    score=score,
    voice_names=["bassclarinet voice"],
    measures=[
        1,
        2,
        3,
        4,
    ],
)

# cello line breaking

library.line_break(score=score, measure_range=(15,), break_method="noBreak")

# parts

trinton.extract_parts(score)

# render file

trinton.render_parts(
    score=score,
    part_name="harp",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="30",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/parts-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
