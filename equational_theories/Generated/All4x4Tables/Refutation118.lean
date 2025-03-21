
import Mathlib.Data.Finite.Prod
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,0,2],[0,0,2],[1,1,0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «All4x4Tables [[0,0,2],[0,0,2],[1,1,0]]» : Magma (Fin 3) where
  op := finOpTable "[[0,0,2],[0,0,2],[1,1,0]]"

/-! The facts -/
@[equational_result]
theorem «Facts from All4x4Tables [[0,0,2],[0,0,2],[1,1,0]]» :
  ∃ (G : Type) (_ : Magma G) (_: Finite G), Facts G [3488, 4138] [3253, 3461, 3475, 3664, 3668, 3674, 3678, 4131, 4269, 4631] :=
    ⟨Fin 3, «All4x4Tables [[0,0,2],[0,0,2],[1,1,0]]», Finite.of_fintype _, by decideFin!⟩
