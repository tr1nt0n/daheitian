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

score = library.daheitian_score([(4, 4)])

# old_cue_eraser replaces all notes and indicators with tagged copies of themselves


def old_cue_eraser():
    def erase(argument):
        components = abjad.select.components(argument)
        for component in components:
            if isinstance(component, abjad.Tuplet):
                tuplet = component
                tuplet_duration = abjad.get.duration(tuplet)
                tuplet_multiplier = tuplet.multiplier
                tuplet_indicators = abjad.get.indicators(tuplet)
                tuplet_leaves = abjad.select.leaves(tuplet)
                new_tuplet = abjad.Tuplet(tuplet_multiplier, tag=abjad.Tag("+PARTS"))
                for leaf in tuplet_leaves:
                    if isinstance(leaf, abjad.Note):
                        note_duration = abjad.get.duration(leaf, preprolated=True)
                        note_pitch = leaf.written_pitch
                        note_indicators = abjad.get.indicators(leaf)
                        new_note = abjad.Note(tag=abjad.Tag("+PARTS"))
                        new_note.written_pitch = note_pitch
                        new_note.written_duration = note_duration

                        next_leaf = abjad.select.with_next_leaf(leaf)[-1]
                        previous_leaf = abjad.select.with_previous_leaf(leaf)[0]

                        if isinstance(
                            abjad.get.parentage(next_leaf).parent,
                            abjad.AfterGraceContainer,
                        ):
                            grace_duration = abjad.get.duration(
                                next_leaf, preprolated=True
                            )
                            grace_pitch = next_leaf.written_pitch
                            grace_indicators = abjad.get.indicators(next_leaf)
                            new_grace = abjad.Note(tag=abjad.Tag("+PARTS"))
                            new_grace.written_pitch = grace_pitch
                            new_grace.written_duration = grace_duration
                            for indicator in grace_indicators:
                                abjad.attach(
                                    indicator, new_grace, tag=abjad.Tag("+PARTS")
                                )
                            new_container = abjad.AfterGraceContainer(
                                [new_grace], tag=abjad.Tag("+PARTS")
                            )
                            new_container_indicators = abjad.get.indicators(
                                new_container
                            )
                            for indicator in new_container_indicators:
                                abjad.detach(indicator, new_container)
                                abjad.attach(
                                    indicator, new_container, tag=abjad.Tag("+PARTS")
                                )
                            abjad.attach(
                                new_container, new_note, tag=abjad.Tag("+PARTS")
                            )
                        if isinstance(
                            abjad.get.parentage(previous_leaf).parent,
                            abjad.BeforeGraceContainer,
                        ):
                            grace_duration = abjad.get.duration(
                                previous_leaf, preprolated=True
                            )
                            grace_pitch = previous_leaf.written_pitch
                            grace_indicators = abjad.get.indicators(previous_leaf)
                            new_grace = abjad.Note(tag=abjad.Tag("+PARTS"))
                            new_grace.written_pitch = grace_pitch
                            new_grace.written_duration = grace_duration
                            for indicator in grace_indicators:
                                abjad.attach(
                                    indicator, new_grace, tag=abjad.Tag("+PARTS")
                                )
                            new_container = abjad.BeforeGraceContainer(
                                [new_grace], tag=abjad.Tag("+PARTS")
                            )
                            new_container_indicators = abjad.get.indicators(
                                new_container
                            )
                            for indicator in new_container_indicators:
                                abjad.detach(indicator, new_container)
                                abjad.attach(
                                    indicator, new_container, tag=abjad.Tag("+PARTS")
                                )
                            abjad.attach(
                                new_container, new_note, tag=abjad.Tag("+PARTS")
                            )

                        for indicator in note_indicators:
                            abjad.attach(indicator, new_note, tag=abjad.Tag("+PARTS"))
                        new_tuplet.append(new_note)

                    if isinstance(leaf, abjad.Rest):
                        rest_duration = abjad.get.duration(leaf)
                        rest_indicators = abjad.get.indicators(leaf)
                        new_rest = abjad.Rest(rest_duration, tag=abjad.Tag("+PARTS"))
                        for indicator in rest_indicators:
                            abjad.attach(indicator, new_rest, tag=abjad.Tag("+PARTS"))
                        new_tuplet.append(new_rest)

                for indicator in tuplet_indicators:
                    abjad.attach(indicator, new_tuplet, tag=abjad.Tag("+PARTS"))
                abjad.mutate.replace(tuplet, new_tuplet)

            if (
                isinstance(component, abjad.Note)
                and not isinstance(abjad.get.parentage(component).parent, abjad.Tuplet)
                and not isinstance(
                    abjad.get.parentage(component).parent, abjad.AfterGraceContainer
                )
                and not isinstance(
                    abjad.get.parentage(component).parent, abjad.BeforeGraceContainer
                )
                and abjad.get.parentage(component).parent is not None
            ):
                leaf = component
                note_duration = abjad.get.duration(leaf)
                note_pitch = leaf.written_pitch
                note_indicators = abjad.get.indicators(leaf)
                new_note = abjad.Note(tag=abjad.Tag("+PARTS"))
                new_note.written_pitch = note_pitch
                new_note.written_duration = note_duration

                next_leaf = abjad.select.with_next_leaf(leaf)[-1]
                previous_leaf = abjad.select.with_previous_leaf(leaf)[0]

                if isinstance(
                    abjad.get.parentage(next_leaf).parent, abjad.AfterGraceContainer
                ):
                    grace_duration = abjad.get.duration(next_leaf, preprolated=True)
                    grace_pitch = next_leaf.written_pitch
                    grace_indicators = abjad.get.indicators(next_leaf)
                    new_grace = abjad.Note(tag=abjad.Tag("+PARTS"))
                    new_grace.written_pitch = grace_pitch
                    new_grace.written_duration = grace_duration
                    for indicator in grace_indicators:
                        abjad.attach(indicator, new_grace, tag=abjad.Tag("+PARTS"))
                    new_container = abjad.AfterGraceContainer(
                        [new_grace], tag=abjad.Tag("+PARTS")
                    )
                    new_container_indicators = abjad.get.indicators(new_container)
                    for indicator in new_container_indicators:
                        abjad.detach(indicator, new_container)
                        abjad.attach(indicator, new_container, tag=abjad.Tag("+PARTS"))
                    abjad.attach(new_container, new_note, tag=abjad.Tag("+PARTS"))
                if isinstance(
                    abjad.get.parentage(previous_leaf).parent,
                    abjad.BeforeGraceContainer,
                ):
                    grace_duration = abjad.get.duration(previous_leaf, preprolated=True)
                    grace_pitch = previous_leaf.written_pitch
                    grace_indicators = abjad.get.indicators(previous_leaf)
                    new_grace = abjad.Note(tag=abjad.Tag("+PARTS"))
                    new_grace.written_pitch = grace_pitch
                    new_grace.written_duration = grace_duration
                    for indicator in grace_indicators:
                        abjad.attach(indicator, new_grace, tag=abjad.Tag("+PARTS"))
                    new_container = abjad.BeforeGraceContainer(
                        [new_grace], tag=abjad.Tag("+PARTS")
                    )
                    new_container_indicators = abjad.get.indicators(new_container)
                    for indicator in new_container_indicators:
                        abjad.detach(indicator, new_container)
                        abjad.attach(indicator, new_container, tag=abjad.Tag("+PARTS"))
                    abjad.attach(new_container, new_note, tag=abjad.Tag("+PARTS"))

                for indicator in note_indicators:
                    abjad.attach(indicator, new_note, tag=abjad.Tag("+PARTS"))
                abjad.mutate.replace(leaf, new_note)

            if isinstance(component, abjad.Rest) and not isinstance(
                abjad.get.parentage(component).parent, abjad.Tuplet
            ):
                leaf = component
                rest_duration = abjad.get.duration(leaf)
                rest_indicators = abjad.get.indicators(leaf)
                new_rest = abjad.Rest(rest_duration, tag=abjad.Tag("+PARTS"))
                for indicator in rest_indicators:
                    abjad.attach(indicator, new_rest, tag=abjad.Tag("+PARTS"))
                abjad.mutate.replace(leaf, new_rest)

    return erase


# the problem only appears when there's an intermittent voice . . .

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.IntermittentVoiceHandler(
        rhythm_handler=evans.RhythmHandler(evans.talea([1], 1)),
        direction=abjad.UP,
        voice_name="flute voice cue",
        from_components=False,
        temp_name="secondary",
    ),
    voice=score["flute voice"],
)

# with a grace note in it

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.aftergrace("c'16"),
    voice=score["flute voice cue"],
)

# call the cue erasing function on the music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    library.aftergrace("c'16"),
    old_cue_eraser(),
    voice=score["flute voice cue"],
)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/daheitian/daheitian/etc/tagging_example",
    build_path="/Users/trintonprater/scores/daheitian/daheitian/build",
    segment_name="_tagging_example",
    includes=[
        "/Users/trintonprater/scores/daheitian/daheitian/build/daheitian-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

# the resultant lily file should contain an intermittent voice which is all tagged out except for an aftergrace container
