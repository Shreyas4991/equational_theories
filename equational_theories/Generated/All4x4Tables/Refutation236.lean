
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3, 2, 0, 1], [2, 3, 1, 0], [0, 1, 2, 3], [0, 1, 2, 3]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3, 2, 0, 1], [2, 3, 1, 0], [0, 1, 2, 3], [0, 1, 2, 3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3, 2, 0, 1], [2, 3, 1, 0], [0, 1, 2, 3], [0, 1, 2, 3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3, 2, 0, 1], [2, 3, 1, 0], [0, 1, 2, 3], [0, 1, 2, 3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [31, 513, 1122, 1637, 1718, 1731, 1934, 2355, 2389, 2402, 2466, 2496, 2558, 2592, 2652, 2733, 2808, 2964, 2998, 3011, 3201, 3214, 3464, 4090, 4165, 4590] [2, 3, 8, 24, 25, 26, 28, 29, 38, 39, 40, 43, 47, 99, 151, 203, 255, 307, 331, 359, 407, 412, 413, 414, 416, 417, 419, 420, 426, 427, 429, 430, 436, 437, 439, 440, 463, 464, 466, 467, 473, 474, 476, 477, 500, 501, 503, 504, 510, 511, 614, 817, 1021, 1022, 1023, 1025, 1026, 1028, 1029, 1035, 1036, 1038, 1039, 1045, 1046, 1048, 1049, 1072, 1073, 1075, 1076, 1082, 1083, 1085, 1086, 1109, 1110, 1112, 1113, 1119, 1120, 1223, 1426, 1630, 1631, 1632, 1634, 1635, 1638, 1644, 1645, 1647, 1648, 1654, 1655, 1657, 1658, 1681, 1682, 1684, 1685, 1691, 1692, 1694, 1695, 1719, 1721, 1722, 1728, 1729, 1833, 1834, 1835, 1837, 1838, 1840, 1841, 1847, 1848, 1850, 1851, 1857, 1858, 1860, 1861, 1884, 1885, 1887, 1888, 1894, 1895, 1897, 1898, 1921, 1922, 1924, 1925, 1931, 1932, 2035, 2239, 2240, 2241, 2243, 2244, 2247, 2253, 2254, 2257, 2264, 2266, 2267, 2290, 2291, 2294, 2301, 2303, 2304, 2328, 2330, 2331, 2337, 2338, 2442, 2443, 2444, 2446, 2447, 2450, 2456, 2457, 2460, 2467, 2469, 2470, 2493, 2494, 2497, 2504, 2506, 2507, 2531, 2533, 2534, 2540, 2541, 2645, 2646, 2647, 2649, 2650, 2653, 2659, 2660, 2663, 2670, 2672, 2673, 2696, 2697, 2700, 2707, 2709, 2710, 2734, 2736, 2737, 2743, 2744, 2848, 2849, 2850, 2852, 2853, 2856, 2862, 2863, 2866, 2873, 2875, 2876, 2899, 2900, 2903, 2910, 2912, 2913, 2937, 2939, 2940, 2946, 2947, 3051, 3052, 3053, 3055, 3056, 3059, 3065, 3066, 3069, 3076, 3078, 3079, 3102, 3103, 3106, 3113, 3115, 3116, 3140, 3142, 3143, 3149, 3150, 3253, 3337, 3457, 3458, 3459, 3461, 3462, 3465, 3471, 3472, 3474, 3475, 3481, 3482, 3484, 3511, 3512, 3518, 3519, 3521, 3543, 3545, 3546, 3548, 3549, 3555, 3556, 3558, 3660, 3661, 3662, 3664, 3665, 3667, 3668, 3674, 3675, 3677, 3678, 3685, 3687, 3714, 3715, 3721, 3722, 3724, 3725, 3748, 3749, 3751, 3752, 3758, 3761, 3862, 4055, 4066, 4067, 4068, 4070, 4071, 4073, 4074, 4080, 4081, 4083, 4084, 4091, 4093, 4120, 4121, 4127, 4128, 4130, 4131, 4154, 4155, 4157, 4158, 4164, 4167, 4258, 4268, 4269, 4270, 4272, 4273, 4275, 4276, 4283, 4284, 4290, 4291, 4293, 4314, 4321, 4343, 4368, 4373, 4380, 4539, 4547, 4571, 4583, 4584, 4585, 4587, 4588, 4591, 4598, 4599, 4605, 4606, 4608, 4629, 4635, 4636, 4658, 4683, 4688] :=
    ⟨Fin 4, «FinitePoly [[3, 2, 0, 1], [2, 3, 1, 0], [0, 1, 2, 3], [0, 1, 2, 3]]», by decideFin!⟩