
import Mathlib.Data.Finite.Prod
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,0],[0,0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «All4x4Tables [[1,0],[0,0]]» : Magma (Fin 2) where
  op := finOpTable "[[1,0],[0,0]]"

/-! The facts -/
@[equational_result]
theorem «Facts from All4x4Tables [[1,0],[0,0]]» :
  ∃ (G : Type) (_ : Magma G) (_: Finite G), Facts G [43, 1435, 1638, 1660, 1668, 1869, 1931, 2134, 2162, 2163, 2165, 3262, 3308, 3309, 3352, 3465, 3518, 3521, 3546, 3549, 3556, 3890, 3917, 3924, 3927, 3952, 3962, 4073, 4093, 4121, 4158, 4164, 4284, 4314, 4389, 4408, 4445, 4472, 4479, 4599] [47, 99, 159, 167, 203, 255, 307, 359, 411, 614, 817, 1020, 1223, 1431, 1434, 1441, 1451, 1454, 1478, 1488, 1515, 1519, 1525, 1632, 1635, 1644, 1648, 1655, 1681, 1721, 1722, 1728, 1731, 1833, 1834, 1841, 1851, 1861, 1894, 1897, 1921, 1924, 1925, 2036, 2037, 2038, 2040, 2041, 2043, 2044, 2060, 2063, 2128, 2238, 2441, 2644, 2847, 3050, 3255, 3256, 3268, 3271, 3272, 3278, 3279, 3281, 3315, 3316, 3318, 3319, 3342, 3343, 3346, 3458, 3461, 3464, 3472, 3474, 3475, 3481, 3482, 3484, 3509, 3512, 3519, 3522, 3545, 3558, 3659, 3864, 3865, 3867, 3868, 3870, 3871, 3878, 3881, 3888, 3915, 3918, 3925, 3928, 3951, 3964, 4066, 4068, 4070, 4071, 4074, 4084, 4090, 4091, 4118, 4120, 4128, 4130, 4155, 4165, 4167, 4268, 4269, 4270, 4272, 4273, 4275, 4290, 4291, 4293, 4320, 4321, 4343, 4396, 4399, 4406, 4433, 4436, 4443, 4470, 4473, 4480, 4583, 4584, 4585, 4587, 4588, 4590, 4598, 4605, 4608, 4629, 4636, 4658] :=
    ⟨Fin 2, «All4x4Tables [[1,0],[0,0]]», Finite.of_fintype _, by decideFin!⟩
