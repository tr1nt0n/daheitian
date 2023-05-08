\version "2.23.14"
\language "english"

\include "parts-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"

\score {
    \removeWithTag #'voice1
    \removeWithTag #'voice2
    \removeWithTag #'voice3
    \removeWithTag #'voice4
    \removeWithTag #'voice5
    \removeWithTag #'voice6
    \removeWithTag #'voice7
    \removeWithTag #'voice8
    \removeWithTag #'voice9
    \removeWithTag #'voice10
    \removeWithTag #'voice11
    \removeWithTag #'voice12
    \removeWithTag #'voice13
    \removeWithTag #'voice14
    \removeWithTag #'voice15
    \removeWithTag #'voice16
    \removeWithTag #'voice17
    \removeWithTag #'voice19
    \removeWithTag #'voice20
        {
            \include "01_parts.ly"
            \include "02_parts.ly"
            \include "03_parts.ly"
            \include "04_parts.ly"
            \include "05_parts.ly"
            \include "06_parts.ly"
            \include "07_parts.ly"
            \include "08_parts.ly"
            \include "09_parts.ly"
            \include "10_parts.ly"
            \include "11_parts.ly"
            \include "12_parts.ly"
            \include "13_parts.ly"
            \include "14_parts.ly"
        }
}
