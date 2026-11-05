## Issue tracker

- Issues live in GitHub Issues of `gvanboxtel/black_scholes`. Use the `gh` CLI.
- Board: https://github.com/users/gvanboxtel/projects/6 (project #6, owner `gvanboxtel`). Columns (field `Status`): Backlog, Ready, In Progress, Review, Done, Won't Do – Duplicate, On hold.
- Board fields: `Priority` (P0 Mandatory, P1 Bonus, P2 Extra), `Size` (XS ≈ 1 h, S 1–2 h, M 2–3 h, L 3–5 h, XL > 5 h), `Estimate (h)`. Epics get Status, Priority and Estimate (the sum of their sub-issues), no Size.
- There's no subject PDF. P0 is the most basic Black-Scholes model: a small tested program that prints a European call and put price. P1 is everything beyond that which builds on the model (Greeks, implied volatility, the full tool, other pricing methods). P2 is deep dives.
- Epics (title `Epic: ...`, label `epic`, `Epic: Bonus: ...` for P1) group the issues as sub-issues. Issue titles have a prefix: `CPP` (C++ learning), `SETUP`, `FIN`, `VOL`, `MATH`, `BS`, `DOC`, `GRK`, `IV`, `CLI`, `MC`, `BIN`, `DIV`, `PLOT`, and `EXT` (`Extra:`, P2).
- Labels:
  - type: `enhancement`, `bug`, `chore`, `documentation`
  - area: `setup`, `cpp`, `options`, `volatility`, `pricing`, `greeks`, `implied-vol`, `cli`, `verification`, `bonus`, `extra`
  - `size: <XS..XL>` and `time: <N>h` on every sub-issue, matching the board fields
  - `ready-for-human`: the student implements it
- Issue body sections: Context, Learn first, Think about, Tasks, Check yourself, Acceptance criteria, Related (with "Blocked by #N"). Write new issues in teaching mode: pointers and hints, no solutions.
- The student is new to both finance and C++, and needs sources specific and deep enough to get going. "Learn first" lists sources in reading order, each with the exact section or page, the question it answers, and any known mistake in it or notation that differs from other sources. Only list a source you opened. A "**Go deeper**" block at its end links the P2 issues that deepen a part of this one; the deeper sources live in those P2 issues.
- Each new C++ topic gets its own `CPP-NN` sub-issue, placed directly before the first issue that needs it and listed as its blocker. Its exercises go in a throwaway `scratch/` folder.
- Acceptance criteria use numbers checked independently. Tools are tested on this machine first (Windows, MinGW `g++`, CMake with Ninja, WSL Ubuntu for sanitizers), and anything that differs from the docs is stated in the issue.
- A new issue gets the labels above, is added to the board with Status, Priority, Size and Estimate set, and is linked as a sub-issue of its epic.

## Pull request reviews

- PR reviews use teaching mode too: point to the problem and give a hint, no ready-made fix.
