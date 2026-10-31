#!/bin/sh
# Copy course PDFs into the site and push. Edit the list below.
cd "$(dirname "$0")" || exit 1

# source PDF on your machine  →  destination inside the site
sync() { [ -f "$1" ] && cp "$1" "$2" || echo "missing: $1"; }

sync ~/Desktop/Math570/Math570_Part1_typeset.pdf  notes/math570-f26/notes.pdf
sync ~/Desktop/Math564/MATH564_Lecture_Notes_Pre-midterm.pdf                  notes/math564-f26/notes.pdf
sync ~/Desktop/MATH592/Math592_Part1_Polish_Spaces.pdf                  notes/math592-f26/notes.pdf

# winter 2026
sync /Users/zhangyitian/Desktop/McGill/W2026/Comp_252_Grade_A/COMP252_Complete_Notes.pdf notes/comp252-w26/notes.pdf
sync /Users/zhangyitian/Desktop/McGill/W2026/Math_255_Grade_A/Analysis_2_notes.pdf notes/math255-w26/notes.pdf
sync /Users/zhangyitian/Desktop/McGill/W2026/Math_251_Grade_A/Algebra_2_notes.pdf notes/math251-w26/notes.pdf

# fall 2025
sync /Users/zhangyitian/Desktop/McGill/f2025/Math_254_Grade_A/analysis_1_notes.pdf notes/math254-f25/notes.pdf
sync /Users/zhangyitian/Desktop/McGill/f2025/Math_245_Grade_A/Algebra_1_notes.pdf notes/math245-f25/notes.pdf

# cv
sync /Users/zhangyitian/Desktop/Personal_Files/CV/cv.pdf cv/cv.pdf

# problem sets
sync /Users/zhangyitian/Desktop/Mariano/Mari_2023-2024/F23_W24/Cal2/Integral_Practices/Ans-Key.pdf problem-sets/calc2-integration-answers.pdf
sync /Users/zhangyitian/Desktop/Mariano/Mari_2023-2024/F23_W24/Cal2/Integral_Practices/cal2_integrals_problems.pdf problem-sets/calc2-integration.pdf

# add one line per course; same for cv/cv.pdf and problem-sets/

git pull -q --rebase
git add -A
git diff --cached --quiet && { echo "nothing changed"; exit 0; }
git commit -qm "Update notes $(date +%Y-%m-%d)"
git push -q && echo "pushed"
