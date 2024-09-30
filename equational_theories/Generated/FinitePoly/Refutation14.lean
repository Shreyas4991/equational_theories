
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following refutation as produced by
random generation of polynomials:
'(0 * x**2 + 0 * y**2 + 1 * x + 2 * y + 0 * x * y) % 4' (0, 22, 25, 150, 151, 158, 159, 160, 202, 204, 208, 211, 214, 306, 307, 324, 325, 326, 1425, 1426, 1427, 1428, 1429, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1628, 1629, 1630, 1631, 1632, 1653, 1654, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1831, 1832, 1836, 1837, 1838, 1849, 1850, 1851, 1859, 1860, 1861, 1870, 1871, 1872, 1873, 2237, 2239, 2242, 2245, 2248, 2253, 2256, 2259, 2263, 2266, 2269, 2273, 2277, 2281, 2285, 2440, 2442, 2445, 2448, 2451, 2456, 2459, 2462, 2466, 2469, 2472, 2476, 2480, 2484, 2488, 3049, 3052, 3055, 3057, 3065, 3067, 3074, 3078, 3082, 3090, 3093, 3252, 3253, 3254, 3255, 3256, 3314, 3315, 3316, 3317, 3318, 3319, 3320, 3321, 3322, 3323, 3455, 3456, 3457, 3458, 3459, 3517, 3518, 3519, 3520, 3521, 3522, 3523, 3524, 3525, 3526, 4064, 4067, 4070, 4072, 4117, 4119, 4126, 4130, 4134, 4142, 4145, 4267, 4281, 4313, 4314, 4338, 4356, 4584, 4597, 4655, 4672)
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly x + 2 * y % 4» : Magma (Fin 4) where
  op := memoFinOp fun x y => x + 2 * y

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly x + 2 * y % 4» :
  ∃ (G : Type) (_ : Magma G), Facts G [1, 26, 161, 215, 327, 1453, 1456, 1457, 1458, 1459, 1663, 1874, 2254, 2257, 2264, 2267, 2489, 3053, 3058, 3066, 3075, 3091, 3315, 3318, 3460, 3520, 3523, 3524, 3525, 4073, 4143, 4315, 4339, 4585, 4673] [2, 3, 8, 24, 25, 28, 29, 31, 38, 39, 40, 43, 47, 99, 153, 154, 156, 157, 166, 167, 169, 170, 176, 177, 179, 204, 206, 208, 211, 218, 219, 221, 222, 228, 229, 231, 255, 309, 310, 312, 313, 315, 316, 323, 331, 332, 333, 335, 336, 359, 407, 411, 614, 817, 1020, 1223, 1431, 1432, 1434, 1435, 1441, 1442, 1444, 1445, 1478, 1479, 1481, 1482, 1488, 1489, 1491, 1492, 1515, 1516, 1518, 1519, 1525, 1526, 1528, 1634, 1635, 1637, 1638, 1644, 1645, 1647, 1648, 1681, 1682, 1684, 1685, 1691, 1692, 1694, 1695, 1718, 1719, 1721, 1722, 1728, 1729, 1731, 1834, 1835, 1840, 1841, 1847, 1848, 1857, 1858, 1884, 1885, 1887, 1888, 1894, 1895, 1897, 1898, 1921, 1922, 1924, 1925, 1931, 1932, 1934, 2035, 2239, 2241, 2244, 2247, 2253, 2256, 2263, 2266, 2290, 2291, 2293, 2294, 2300, 2301, 2303, 2304, 2327, 2328, 2330, 2331, 2337, 2338, 2340, 2442, 2444, 2447, 2450, 2456, 2459, 2466, 2469, 2493, 2494, 2496, 2497, 2503, 2504, 2506, 2507, 2530, 2531, 2533, 2534, 2540, 2541, 2543, 2644, 2847, 3051, 3052, 3055, 3059, 3065, 3069, 3076, 3078, 3102, 3103, 3105, 3106, 3112, 3113, 3115, 3116, 3139, 3140, 3142, 3143, 3149, 3150, 3152, 3258, 3259, 3261, 3262, 3268, 3269, 3271, 3272, 3278, 3279, 3281, 3306, 3308, 3309, 3337, 3342, 3343, 3345, 3346, 3352, 3353, 3355, 3461, 3462, 3464, 3465, 3471, 3472, 3474, 3475, 3481, 3482, 3484, 3509, 3511, 3512, 3543, 3545, 3546, 3548, 3549, 3555, 3556, 3558, 3659, 3862, 4055, 4066, 4067, 4070, 4074, 4080, 4081, 4083, 4084, 4090, 4091, 4093, 4121, 4128, 4130, 4154, 4155, 4157, 4158, 4164, 4165, 4167, 4258, 4269, 4270, 4272, 4273, 4275, 4276, 4283, 4284, 4290, 4291, 4293, 4320, 4321, 4343, 4368, 4373, 4380, 4539, 4547, 4571, 4583, 4584, 4587, 4588, 4590, 4591, 4599, 4605, 4606, 4608, 4629, 4635, 4636, 4658, 4683, 4688] :=
    ⟨Fin 4, «FinitePoly x + 2 * y % 4», by decideFin!⟩