## Early progress

Some automatically generated progress:
- Sep 28, 2024: [85 laws](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/Constant.lean) have been shown to be equivalent to the constant law ([Equation 46](https://teorth.github.io/equational_theories/implications/?46)), and [815 laws](https://github.com/teorth/equational_theories/tree/main/Generated/Singleton.lean) have been shown to be equivalent to the singleton law ([Equation2](https://teorth.github.io/equational_theories/implications/?2)).  Discussed in the blueprint [here](https://teorth.github.io/equational_theories/blueprint/simple-rewrite-chapter.html).
- Sep 28, 2024: [18972 implications](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/SimpleRewrites/theorems) were established by simple rewrite laws.  Discussed in the blueprint [here](https://teorth.github.io/equational_theories/blueprint/simple-rewrite-chapter.html).
- Sep 28, 2024: [4.2m implications proven by a transitive reduction of 15k theorems](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/TrivialBruteforce) were proven using simple rewrite proof scripts.  Discussed in the blueprint [here](https://teorth.github.io/equational_theories/blueprint/trivial-auto-chapter.html).
- Sep 29, 2024: [13.7m implications were conjectured to be refuted by a collection of 515 magmas](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/All4x4Tables), collected by enumerating all 4^(4*4) operators and reducing to a covering set. Discussed in the blueprint [here](https://teorth.github.io/equational_theories/blueprint/all-small-magmas-chapter.html).  (Update, Oct 3, 2024: these anti-implications are now formalized in Lean as theorems, and the number of implications established by this method increased to 13.8m.)
- Oct 1, 2024: Another [~250k transitive implications](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/TrivialBruteforce) were proven by simple proof generation. Discussed in the blueprint [here](https://teorth.github.io/equational_theories/blueprint/trivial-auto-chapter.html).
- Oct 1, 2024: ~500k transitive implications were proven by [EquationSearch](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/EquationSearch), a custom tool that chooses hypotheses and leverages previously found implications to search by using the implied equations as substitutions.  Discussed in the blueprint [here](https://teorth.github.io/equational_theories/blueprint/equation-search-chapter.html).
- Oct 2, 2024: 86 (potentially) new implications in [`Subgraph.lean`](https://github.com/teorth/equational_theories/tree/main/equational_theories/Subgraph.lean) conclusively (i.e. in Lean) resolved using the [lean-egg tactic](https://github.com/marcusrossel/lean-egg). Some of these were simply missed by the transitive closure computation and technically already implied, but some were genuinely new.
- Oct 3, 2024: Another ~150k transitive implications were proven by [EquationSearch](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/EquationSearch) after improved capabilities were added.
- Oct 3, 2024: [~1m transitive implications](https://github.com/teorth/equational_theories/tree/main/equational_theories/Generated/MagmaEgg) were proven by a new custom tool that uses egraphs to find a proof and exports it to a Lean term
- Oct 5, 2024: 97% of the remaining unknown implications were resolved (transitively) by [Vampire](https://en.wikipedia.org/wiki/Vampire_(theorem_prover)), and then converted to a Lean proof using a custom script and a Lean elaborator implementing the deduction step of superposition calculus.


Some statistics and data files from a given point in time:
- Sep 28, 2024: [A repository of unknown implications](https://github.com/amirlb/equational_theories/tree/unknown-implications), including all unknown implications, known equivalence classes, unknown implications modulo known equivalence, and only the strongest unknown implications.
- Sep 29, 2024: [Here](https://leanprover.zulipchat.com/user_uploads/3121/7ImuNeVLCa_gIsS8bHYIsokB/direct.tar.xz) is a text file of the (21K or so) direct implications proven to date, and [here](https://leanprover.zulipchat.com/user_uploads/3121/wnbVe2BZ1gamFjlMYFE7sIs9/closure.tar.xz) is the transitive closure of these implications (about 4.5m). More precisely, we have 21791 implications explicitly proven true, 4494090 additional relations implicitly proven true, 739207 explicitly proven false, 12764328 implicitly proven false, one additional relations explicitly conjectured true (and 64 more implicitly conjectured true), and 4014155 remaining implications which remain completely open.  Quotienting out by known equivalences, there are 3182453 open implications remaining.
- Oct 2, 2024: [A list of unknown implications whose converse is proven](https://github.com/amirlb/equational_theories/blob/extract_implications_equivalence_creators_data/scripts/equivalence_creators.json), i.e. implications that would reduce the number of equivalence classes of equations. At the time of creation we had 2969 equivalence classes. This file contains 4526 unknown implications, if all hold then it will reduce the number of equivalence classes to 1300.
- Oct 4, 2024: Current dashboard status: 29248 explicitly proven, 7063191 implicitly proven, 605854 explicitly disproven, 13243426 implicitly disproven, 1120090 open (94.923% complete).  No conjectures at this time.  (A more formal time series of progress is planned.)
- Oct 5, 2024: Current dashboard status: 31023 explicitly proven, 8151818 implicitly proven, 581166 explicitly disproven, 13268299 implicitly proven, 29503 open (99.866% complete).  Note some pruning of redundant theorems occurred in the explicitly disproven theorems to improve compilation time.
- Oct 6, 2024: Current dashboard status (fixing an accounting error in previous dashboards): 31019 explicitly proven, 8147260 implicitly proven, 582094 explicitly disproven, 13272262 implicitly disproven, 1001 open (99.995% complete). Up to duality, only [8 implications needed](https://github.com/teorth/equational_theories/tree/main/data/outstanding_3op_implications.txt) to resolve the graph for laws of length 3, and [440 to resolve the entire graph](https://github.com/teorth/equational_theories/tree/main/data/unknowns_10_06.txt) (including 18 conjectured to be false by Vampire, marked with an asterisk)!
- Oct 7, 2024: Current dashboard status: 31019 explicitly proven, 8147260 implicitly proven, 582096 explicitly disproven, 13272262 implicitly disproven, 999 open. Deriving a minimal set of open implications is now partly automated and takes duality into account. With this, after resolving [361 implications](https://github.com/teorth/equational_theories/tree/main/data/unknowns_10_07.json) and formalizing Vampire disproofs and duality, the graph will be complete.
- Oct 8, 2024: Current dashboard status: 31019 explicitly proven, 8147260 implicitly proven, 582132 explicitly disproven, 13272284 implicitly disproven, 941 open.  Of the 941 open, 197 are explicitly conjectured false, leading to 12 additional implications implicitly conjectured false, and 732 open implications.

Some visualizations from a given point in time:
- Sep 28, 2024: A (manually created) [Hasse diagram](https://en.wikipedia.org/wiki/Hasse_diagram) of the [dependencies obtained up to this date](https://github.com/teorth/equational_theories/tree/main/equational_theories/Subgraph.lean) for the [selected equations of interest](https://github.com/teorth/equational_theories/tree/main/equational_theories/Equations/Basic.lean) can be found [here](https://github.com/teorth/equational_theories/tree/main/images/implications.png).  Note: the orientation in these legacy images is reversed from that in current guidance.
- Sep 28, 2024: A directed acyclic graph of automatically generated implications is [here](https://github.com/teorth/equational_theories/tree/main/images/implications_092824.svg?raw=true): circular vertices are for nodes representing multiple equivalent equations and equations in green are from [`Subgraph.lean`](https://github.com/teorth/equational_theories/tree/main/equational_theories/Subgraph.lean). Note: the orientation in these legacy images is reversed from that in current guidance.
- Oct 1, 2024: An image visualizing the graph of proved results can be found [here](https://github.com/teorth/equational_theories/tree/main/images/outcomes_20241001.png). This was generated by [`outcomes_to_image.py`](https://github.com/teorth/equational_theories/tree/main/scripts/outcomes_to_image.py).
- Oct 3, 2024: The current implications represented as a directed acyclic graph were generated using [`generate_graphviz_graph.rb`](https://github.com/teorth/equational_theories/tree/main/scripts/generate_graphviz_graph.rb) to visualize the [entire graph](https://github.com/teorth/equational_theories/tree/main/images/implications_100324.svg?raw=true) and the smaller graph of equations [limited to 3 variables and three operations](https://github.com/teorth/equational_theories/tree/main/images/implications_100324_var3_op3.svg?raw=true). As previously: circular vertices are for nodes representing multiple equivalent equations and vertices in green are from [`Subgraph.lean`](https://github.com/teorth/equational_theories/tree/main/equational_theories/Subgraph.lean).