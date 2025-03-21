import equational_theories.Equations.All
import equational_theories.Magma

private def congr_op {G: Type _} [Magma G] {a b c d: G} (h1: a = b) (h2: c = d): a ◇ c = b ◇ d := by
  rw [h1, h2]
private abbrev T := @Eq.trans
private abbrev S := @Eq.symm
private abbrev R := @Eq.refl
private abbrev M := @Magma.op
private abbrev C := @congr_op

@[equational_result]
theorem Equation978_implies_Equation11 (G: Type _) [Magma G] (h: Equation978 G) : Equation11 G := fun x y =>
  let v0 := M y y
  let v1 := M x v0
  have h2 := h v1 v1 v1
  have h3 := S h2
  let v4 := M v1 v1
  have h5 := h v4 v1 x
  have h6 := S h5
  have h7 := R (M v4 v1)
  have h8 := h (M x x) v1 y
  have h9 := h x v0 x
  have h10 := h x v0 y
  have h11 := S h10
  have h12 := R v1
  have h13 := h v0 v1 y
  have h14 := T (T h13 (C h12 (T h11 h9))) (S h8)
  have h15 := h x v0 v1
  have h16 := C h12 (T (T h11 h15) (C h14 h7))
  have h17 := T (T h13 h16) h6
  have h18 := C h17 h17
  have h19 := h (M v0 v0) v1 y
  have h20 := S h19
  have h21 := h x v0 v0
  have h22 := C h12 (T h11 h21)
  have h23 := T (T (T h13 h22) h20) h18
  have h24 := C h12 h23
  let v25 := M v1 v0
  have h26 := S h13
  have h27 := C h12 (T (S h21) h10)
  have h28 := C h12 (T (S h9) h10)
  have h29 := T (T h8 h28) h26
  have h30 := C h12 (T (T (C h29 h7) (S h15)) h10)
  have h31 := T (T h5 h30) h26
  have h32 := C h31 h31
  let v33 := M v4 v4
  have h34 := R (M v33 v0)
  have h35 := C (T (T (T (T h5 h30) h22) h20) h18) h31
  have h36 := T (T (T (T h32 h19) h27) h16) h6
  have h37 := C h12 (T (T (T h32 h19) h27) h26)
  have h38 := R (M v33 v1)
  T (T (T (T (T (T (T h10 (C h17 (C h23 h12))) (C h31 h38)) (C h14 h38)) (C h29 (C h36 (T (T (T h2 h37) (h v25 v1 x)) (C (T h2 h37) (T (T (T (T (T (T (C (T (T (T h8 h28) h16) h6) (R (M v25 v1))) (C h31 (T (T (T (T (T (T (T (T (T (C (T h24 h3) h12) h5) h30) h22) h20) h18) h35) (C h36 (T (T (T (T h13 h22) h20) h18) h35))) (C h31 h34)) (C h14 h34)))) (S (h v33 v0 x))) h32) h19) h27) h26)))))) (S (h v25 v0 v1))) h24) h3

@[equational_result]
theorem Equation4176_implies_Equation3607 (G: Type _) [Magma G] (h: Equation4176 G) : Equation3607 G := fun x y z =>
  let v0 := M y z
  let v1 := M v0 x
  let v2 := M z v1
  have h3 := R z
  have h4 := h v1 v2 y
  have h5 := R y
  have h6 := h y z v1
  have h7 := h y y z
  have h8 := h x y z
  let v9 := M x y
  have h10 := R x
  have h11 := C (S h8) h10
  have h12 := h y z v0
  have h13 := R v0
  have h14 := h z v0 x
  have h15 := h x x y
  have h16 := T (C (T h15 (C (T (C h8 h10) (S h14)) h5)) h13) (S h12)
  have h17 := h v0 x y
  have h18 := h y v9 v0
  let v19 := M x v1
  have h20 := R v1
  have h21 := h v0 x z
  have h22 := C (S h21) (R v2)
  let v23 := M (M x z) v0
  have h24 := h v2 v23 z
  have h25 := h v23 z v1
  T (T (T (T h8 (C (T (T (T h21 h25) (C (T (T (T (T (T h24 (C h22 h3)) (C (T (h v1 v2 v1) (C (S (h v1 z v1)) h20)) h3)) (S (h v1 v1 z))) (C h21 h20)) (C (T h25 (C (T (T h24 (C (T (T h22 h4) (C (S h6) h5)) h3)) (S h7)) h20)) h20)) h20)) (S (h v1 (M y y) v1))) h3)) (C (C (T (T (T (T (T (T (h v0 x x) (h (M (M x x) v0) x x)) (C (T (C (T (T (T (T (T (h x x v0) (C (T (C (h x v0 x) h10) (S (h x v1 x))) (T h12 (C (T (C (T h14 h11) h5) (S h15)) h13)))) (C (R v19) h16)) (h v19 v0 x)) (C (T (T (T (h v1 v19 v0) (C (S (h v0 x v1)) h13)) (C h17 h13)) (S h18)) h10)) (C (T h18 (C (S h17) h13)) h10)) h16) (S (h x v1 v0))) h10)) (C (T (h x v1 z) (C h11 h3)) h10)) (S (h z v9 x))) (h z v9 z)) (C (T (C (C h8 h3) h3) (S (h z v1 z))) h3)) (T h7 (C (T (C h6 h5) (S h4)) h3))) h3)) (S (h (M (M v1 v2) z) v2 z))) (S (h z v1 v2))

@[equational_result]
theorem Equation2725_implies_Equation31 (G: Type _) [Magma G] (h: Equation2725 G) : Equation31 G := fun x y =>
  let v0 := M y y
  let v1 := M v0 x
  have h2 := h v1 v1 v1
  have h3 := S h2
  have h4 := R v1
  let v5 := M v1 v1
  have h6 := h v5 v1 x
  have h7 := S h6
  have h8 := h (M x x) v1 y
  have h9 := h x v0 x
  have h10 := h x v0 y
  have h11 := S h10
  have h12 := h v0 v1 y
  have h13 := T (T h12 (C (T h11 h9) h4)) (S h8)
  have h14 := R (M v1 v5)
  have h15 := h x v0 v1
  have h16 := C (T (T h11 h15) (C h14 h13)) h4
  have h17 := T (T h12 h16) h7
  have h18 := C h17 h17
  have h19 := h (M v0 v0) v1 y
  have h20 := S h19
  have h21 := h x v0 v0
  have h22 := C (T h11 h21) h4
  have h23 := T (T (T h12 h22) h20) h18
  have h24 := C h23 h4
  let v25 := M v0 v1
  have h26 := S h12
  have h27 := C (T (S h9) h10) h4
  have h28 := T (T h8 h27) h26
  have h29 := C (T (S h21) h10) h4
  have h30 := C (T (T (C h14 h28) (S h15)) h10) h4
  have h31 := T (T h6 h30) h26
  have h32 := C h31 h31
  have h33 := T (T (T (T h32 h19) h29) h16) h7
  have h34 := C (T (T (T h32 h19) h29) h26) h4
  let v35 := M v5 v5
  have h36 := R (M v0 v35)
  have h37 := C h31 (T (T (T (T h6 h30) h22) h20) h18)
  have h38 := R (M v1 v35)
  T (T (T (T (T (T (T h10 (C (C h4 h23) h17)) (C h38 h31)) (C h38 h13)) (C (C (T (T (T h2 h34) (h v25 v1 x)) (C (T (T (T (T (T (T (C (R (M v1 v25)) (T (T (T h8 h27) h16) h7)) (C (T (T (T (T (T (T (T (T (T (C h4 (T h24 h3)) h6) h30) h22) h20) h18) h37) (C (T (T (T (T h12 h22) h20) h18) h37) h33)) (C h36 h31)) (C h36 h13)) h31)) (S (h v35 v0 x))) h32) h19) h29) h26) (T h2 h34))) h33) h28)) (S (h v25 v0 v1))) h24) h3

@[equational_result]
theorem Equation2929_implies_Equation2 (G: Type _) [Magma G] (h: Equation2929 G) : Equation2 G := fun x y =>
  have h0 := h y y x
  have h1 := S h0
  have h2 := R x
  let v3 := M y x
  let v4 := M x v3
  have h5 := h x y x
  let v6 := M y (M x x)
  let v7 := M v6 x
  have h8 := h x x y
  have h9 := S h8
  have h10 := R y
  let v11 := M x y
  let v12 := M x v11
  let v13 := M v12 y
  have h14 := h x y y
  let v15 := M y v11
  let v16 := M v15 y
  have h17 := h y x y
  have h18 := S h17
  have h19 := R v12
  let v20 := M y y
  let v21 := M x v20
  let v22 := M v21 y
  have h23 := h v22 v12 y
  have h24 := h v22 x y
  have h25 := S h24
  have h26 := h y y y
  have h27 := C (C (T (C h2 (S h26)) (C h2 h17)) h10) h10
  let v28 := M y v20
  have h29 := h (M v28 y) x y
  have h30 := S h29
  have h31 := C (C (T (C h2 h18) (C h2 h26)) h10) h10
  T (T (T (T (T (T h8 (C (T (T (T (h v13 y y) (C (C (T (C h10 h9) (C h10 h14)) h10) h10)) (S (h v16 y y))) (C (C h10 (T (T (T (T (C (T h8 (C (C h19 h17) h10)) h10) (S h23)) h24) h31) h30)) h10)) h10)) (C (C (C h10 (T (T h29 h27) h25)) h10) h10)) (S (h v21 y y))) (h v21 y x)) (C (C (C h10 (T (T (C (T (T (T (T (T (h v21 x y) (C (C (C h2 (T (T h24 h31) h30)) h10) h10)) (S (h v28 x y))) (h v28 y x)) (C (C (C h10 (T (T (C (T (T (h v28 y y) (C (C (T (T (T (C h10 (T (T (T (T h29 h27) h25) h23) (C (T (C (C h19 h18) h10) h9) h10))) (h v15 x y)) (C (C (C h2 (T (T (h v16 x y) (C (C (T (C h2 (S h14)) (C h2 h8)) h10) h10)) (S (h v13 x y)))) h10) h10)) (S (h v12 x y))) h10) h10)) h9) h2) (C (T h5 (C (C (R v6) h5) h2)) h2)) (S (h v7 v6 x)))) h2) h2)) (S (h v6 y x))) h2) (h v7 v4 x)) (C (T (C (T (T (T (C (R v4) (S h5)) (h (M v4 x) x x)) (C (C (T (C h2 (S (h y x x))) (C h2 h0)) h2) h2)) (S (h (M (M y v3) x) x x))) h2) h1) h2))) h2) h2)) h1

@[equational_result]
theorem Equation715_implies_Equation2 (G: Type _) [Magma G] (h: Equation715 G) : Equation2 G := fun x y =>
  have h0 := h y x y
  have h1 := S h0
  have h2 := R y
  let v3 := M x y
  have h4 := R x
  let v5 := M v3 x
  have h6 := h x x y
  let v7 := M (M x x) y
  let v8 := M x v7
  have h9 := h x y x
  have h10 := S h9
  let v11 := M y x
  let v12 := M v11 x
  have h13 := h v12 y x
  have h14 := h (M y v12) y x
  have h15 := h x y y
  let v16 := M v11 y
  have h17 := h (M y v16) y x
  have h18 := h v16 y x
  have h19 := R v12
  have h20 := h y y x
  have h21 := S h20
  let v22 := M y y
  let v23 := M v22 x
  let v24 := M y v23
  have h25 := h v24 y v12
  have h26 := h v24 y x
  have h27 := S h26
  have h28 := h y y y
  have h29 := C h2 (C h2 (T (C (S h28) h4) (C h20 h4)))
  let v30 := M v22 y
  have h31 := h (M y v30) y x
  have h32 := S h31
  have h33 := C h2 (C h2 (T (C h21 h4) (C h28 h4)))
  T (T (T (T (T (T h9 (C h2 (C h2 (T (T (T h13 (C h2 (C h2 (C (T (T h14 (C h2 (C h2 (T (C h10 h4) (C h15 h4))))) (S h17)) h4)))) (S h18)) (C (T (T (T (T (C h2 (T h9 (C h2 (C h20 h19)))) (S h25)) h26) h33) h32) h2))))) (C h2 (C h2 (C (T (T h31 h29) h27) h2)))) (S (h v23 y y))) (h v23 x y)) (C h4 (C h4 (C (T (T (C h4 (T (T (T (T (T (h v23 y x) (C h2 (C h2 (C (T (T h26 h33) h32) h4)))) (S (h v30 y x))) (h v30 x y)) (C h4 (C h4 (C (T (T (C h4 (T (T (h v30 y y) (C h2 (C h2 (T (T (T (C (T (T (T (T h31 h29) h27) h25) (C h2 (T (C h2 (C h21 h19)) h10))) h2) h18) (C h2 (C h2 (C (T (T h17 (C h2 (C h2 (T (C (S h15) h4) (C h9 h4))))) (S h14)) h4)))) (S h13))))) h10)) (C h4 (T h6 (C h4 (C h6 (R v7)))))) (S (h v8 x v7))) h2)))) (S (h v7 x y)))) (h v8 x v5)) (C h4 (T (C h4 (T (T (T (C (S h6) (R v5)) (h (M x v5) x x)) (C h4 (C h4 (T (C (S (h y x x)) h4) (C h0 h4))))) (S (h (M x (M v3 y)) x x)))) h1))) h2)))) h1

@[equational_result]
theorem Equation684_implies_Equation759 (G: Type _) [Magma G] (h: Equation684 G) : Equation759 G := fun x y z =>
  let v0 := M y x
  let v1 := M z (M v0 z)
  let v2 := M v1 (M (M v1 x) x)
  let v3 := M y v1
  have h4 := h v3 v1 v2
  have h5 := S h4
  have h6 := R v2
  have h7 := h v1 v1 x
  have h8 := R v3
  have h9 := R v1
  have h10 := C h9 (C h8 (T h7 (C h7 h6)))
  have h11 := S h7
  have h12 := T (C h11 h6) h11
  have h13 := R y
  have h14 := S (h v3 v3 x)
  let v15 := M v3 (M (M v3 x) x)
  have h16 := C h8 (T (T (C h13 (T (C h14 (R v15)) h14)) (C h13 (T h4 (C h9 (C h8 h12))))) (S (h v1 y v1)))
  have h17 := h y v3 v15
  let v18 := M x (M (M x x) x)
  have h19 := R v18
  have h20 := h x x x
  have h21 := T h20 (C h20 h19)
  let v22 := M z (M (M z x) x)
  have h23 := h v0 z v22
  have h24 := S h23
  have h25 := R v22
  have h26 := h z z x
  have h27 := R v0
  have h28 := R z
  have h29 := C h28 (C h27 (T h26 (C h26 h25)))
  have h30 := R x
  let v31 := M v3 v1
  have h32 := R v31
  have h33 := T h17 h16
  have h34 := h x v0 x
  have h35 := S h20
  let v36 := M v0 x
  have h37 := R v36
  have h38 := h v36 x v18
  have h39 := S h26
  T (T (T (T (T h34 (C (T h23 (C h28 (C h27 (T (C h39 h25) h39)))) (T (C h30 (C h37 h21)) (S h38)))) (h (M v1 v36) v1 y)) (C h9 (T (T (T (T (C (T (C (T h29 h24) (T h38 (C h30 (C h37 (T (C h35 h19) h35))))) (S h34)) (T (T (T (C (C h9 h33) h33) (C (T h10 h5) h32)) (C h8 (T (h v31 v1 v2) (C h9 (C h32 h12))))) (S (h v1 v3 v1)))) (C h30 (T (T h29 h24) (C h13 h21)))) (S (h y x v18))) h17) h16))) h10) h5

@[equational_result]
theorem Equation2698_implies_Equation2 (G: Type _) [Magma G] (h: Equation2698 G) : Equation2 G := fun x y =>
  let v0 := M x x
  let v1 := M v0 v0
  have h2 := R y
  let v3 := M y y
  have h4 := R v3
  have h5 := h x v1 v1
  have h6 := S h5
  have h7 := R v1
  have h8 := R v0
  have h9 := h x x x
  have h10 := C (C h9 h8) h7
  have h11 := T h10 h6
  have h12 := C h11 h11
  let v13 := M x v0
  have h14 := R (M v13 v1)
  have h15 := C (C (S h9) h8) h7
  have h16 := T h5 h15
  have h17 := C h16 h14
  have h18 := C h16 h16
  have h19 := h v0 x y
  have h20 := S h19
  have h21 := C h16 h2
  have h22 := C h11 h14
  have h23 := T (C (T (T (T h21 h20) h18) h22) (T (T h21 h20) h18)) (C (T h17 h12) h12)
  have h24 := T h21 h20
  have h25 := R x
  let v26 := M v3 v3
  let v27 := M (M x y) v3
  have h28 := C h11 h2
  have h29 := T (C (T h18 h22) h18) (C (T (T (T h17 h12) h19) h28) (T (T h12 h19) h28))
  have h30 := T h19 h28
  have h31 := C h25 h30
  have h32 := h x v27 v1
  have h33 := h y x x
  have h34 := h x x v1
  have h35 := S h34
  let v36 := M y x
  have h37 := S (h v0 v0 v0)
  T (T (T (T (h x (M v36 v0) v13) (C (T (C (T (S (h x y x)) h34) h8) h37) (T (T h31 (C h34 h24)) h37))) (h v1 v1 y)) (C (T (T (T (T (C (T (T h35 h5) h15) h35) (S (h v0 x x))) (h v0 v0 v36)) (C h35 (T (T (T (T (C h2 h16) (C h2 (T (T (T (T h10 h6) h32) (C (C (S h33) h8) h7)) (C (C h2 h30) h29)))) (C h2 (T (T (T (T (T (C (C h2 h24) h23) (C (C h33 h8) h7)) (S h32)) h5) h15) (C h31 h29)))) (C (T (h y v27 v26) (C (C (S (h y x y)) h4) (R v26))) (T (T (C (C h25 h24) h23) h10) h6))) (S (h v3 y x))))) (C (h x x y) h4)) h2)) (S (h y v1 y))

@[equational_result]
theorem Equation3385_implies_Equation4197 (G: Type _) [Magma G] (h: Equation3385 G) : Equation4197 G := fun x y z =>
  let v0 := M z x
  let v1 := M v0 y
  let v2 := M v1 z
  have h3 := h v1 z v2
  have h4 := S h3
  let v5 := M z v2
  have h6 := R v2
  have h7 := h v0 y z
  have h8 := S h7
  let v9 := M y z
  have h10 := h z (M v0 v9) v2
  have h11 := S h10
  have h12 := h v0 v9 v2
  have h13 := h y z v1
  have h14 := h z v0 y
  have h15 := R v1
  have h16 := R v0
  have h17 := h v0 (M v1 (M z v0)) v2
  have h18 := h v1 z v0
  have h19 := R z
  have h20 := C h6 (C h19 (C (T (T (T h18 h17) (C h6 (C h16 (C (T (C h15 h14) (S h13)) h6)))) (S h12)) h6))
  have h21 := h z v2 v2
  have h22 := h v1 v5 z
  have h23 := S h14
  have h24 := T (T (T h7 h10) (C h6 (C h19 (C (T (T (T h12 (C h6 (C h16 (C (T h13 (C h15 h23)) h6)))) (S h17)) (S h18)) h6)))) (S h21)
  have h25 := T (T (T h21 h20) h11) h8
  have h26 := C h6 (T (C h19 (T (C h24 h6) (C h25 (C h24 h19)))) (S h22))
  have h27 := h z v1 v2
  have h28 := T (T h27 h26) h4
  have h29 := C h19 h28
  have h30 := h z z v1
  have h31 := h z z v2
  have h32 := h z v1 z
  have h33 := S h27
  have h34 := C h6 (T h22 (C h19 (T (C h24 (C h25 h19)) (C h25 h6))))
  have h35 := T (T h3 h34) h33
  have h36 := T (C (R y) h35) h23
  T (T (T (T (h x y v2) (h v2 (M x (M y v2)) v2)) (C h6 (C h6 (C (T (T (T (T (C (R x) h36) (S (h z z x))) h30) (C h15 (T (T (T (T (T (T (T (T (T (T h29 h21) h20) h11) h8) (h v0 y v1)) (h v1 (M v0 (M y v1)) v2)) (C h6 (C h15 (C (T (C h16 (T (h y v1 z) (C h19 h36))) (S (h z z v0))) h6)))) (S (h v1 (M z z) v2))) (C h15 (T h31 (C h35 (T (T (T (S h32) h27) h26) h4))))) (C h15 (T (T (T (C h28 (T (T (T h3 h34) h33) h32)) (S h31)) h30) (C h24 (T (T (T (T h29 h21) h20) h11) h8))))))) (S (h v1 v5 v1))) h6)))) (S (h v2 (M v1 v5) v2))) h4

@[equational_result]
theorem Equation3147_implies_Equation2741 (G: Type _) [Magma G] (h: Equation3147 G) : Equation2741 G := fun x y z =>
  have h0 := R z
  let v1 := M x z
  have h2 := R v1
  let v3 := M y y
  have h4 := h v3 y v1
  have h5 := C (S h4) h2
  have h6 := h v1 v3 v1
  have h7 := h x v3 x
  have h8 := R x
  have h9 := h v3 y x
  have h10 := R v3
  let v11 := M v3 v1
  have h12 := h v3 y v11
  have h13 := S h12
  have h14 := T h6 h5
  have h15 := C (R (M (M v3 v3) v11)) h14
  have h16 := h v3 y v3
  have h17 := C (S h16) h10
  have h18 := h v3 v3 v3
  have h19 := C (T (h v11 v3 v11) (C (T (T h13 h18) h17) (R v11))) h2
  have h20 := C h14 h2
  have h21 := T (T (T h20 h19) h15) h13
  have h22 := S h6
  have h23 := T (C h4 h2) h22
  have h24 := S h18
  have h25 := C (T (C (T (T (C h16 h10) h24) h4) h23) h22) h23
  let v26 := M v11 z
  have h27 := h v3 v1 v26
  have h28 := S h27
  have h29 := R v26
  have h30 := T h12 h25
  have h31 := C h30 h10
  have h32 := h v3 y v26
  have h33 := S h32
  have h34 := h v26 v3 v26
  have h35 := C (T (T (C h21 h29) (C h32 h29)) (S h34)) h29
  have h36 := C (C (T (T (T (C (T (T (T (T h20 h19) h15) h13) h16) h10) h24) h12) h25) h29) h29
  have h37 := C (C (T (T (T (T (T (T h20 h19) h15) h13) h18) h17) h31) h29) h29
  have h38 := C (C h30 h29) h29
  have h39 := C (T h34 (C h33 h29)) h29
  T (h x x z) (C (T (T (C (T (C (T (T (C (T (T h7 (C (T (T (T (S h9) h18) h17) (C (T (T h27 h36) h35) h10)) h8)) (C (C (T (T (T (T (T (T (T (T h39 h38) h37) h28) (h v3 v26 z)) (C (C (T (T (T (T (C (T (T (T (T h39 h38) h37) h28) h16) h10) h24) h27) h36) h35) h0) h0)) (C (C (T (T (T (C (T h34 (C (T (T (T h33 h18) h17) h31) h29)) h29) h28) h12) h25) h0) h0)) (C (C h21 h0) h0)) (C (T (C (h v3 y z) h0) (S (h z v3 z))) h0)) h10) h8)) h8) (S (h v3 z x))) h9) h8) (S h7)) h0) h6) h5) h0)

@[equational_result]
theorem Equation3185_implies_Equation2722 (G: Type _) [Magma G] (h: Equation3185 G) : Equation2722 G := fun x y z =>
  let v0 := M z y
  let v1 := M y x
  let v2 := M v1 v0
  let v3 := M v2 z
  have h4 := R z
  have h5 := R v0
  have h6 := R v3
  have h7 := h z v3 v2
  have h8 := S h7
  have h9 := h v2 v2 z
  have h10 := C h9 h6
  have h11 := h v1 v3 y
  have h12 := R y
  have h13 := R v1
  have h14 := h v3 v1 v2
  have h15 := R v2
  have h16 := h v1 v1 v0
  have h17 := C (S h16) h15
  have h18 := h v0 v2 v1
  have h19 := C (T h10 h8) h12
  have h20 := C h19 h6
  have h21 := h y v2 v3
  have h22 := h y y v1
  have h23 := T (C (T h22 (C (C (C (T (C (T (T h21 (C h20 h15)) (C (C (T h18 h17) h6) h15)) h13) (S h14)) h12) h13) h12)) h6) (S h11)
  have h24 := C h23 h5
  have h25 := S h22
  have h26 := C (S h9) h6
  have h27 := C (T h7 h26) h12
  have h28 := C h27 h6
  have h29 := S h18
  have h30 := C h16 h15
  have h31 := C (C (C (T h14 (C (T (T (C (C (T h30 h29) h6) h15) (C h28 h15)) (S h21)) h13)) h12) h13) h12
  have h32 := T h11 (C (T h31 h25) h6)
  have h33 := C h32 h5
  have h34 := h v2 y v3
  have h35 := C (T (T (T (C (T (T (C (T h28 (C (T (T (T h19 h18) h17) (C h32 h15)) h6)) h12) (S h34)) h33) h6) (C h24 h6)) h10) h8) h5
  have h36 := h y v0 v3
  have h37 := h v1 z v0
  have h38 := h y y v3
  have h39 := h v3 v1 y
  have h40 := S h36
  have h41 := C (T (T (T h7 h26) (C h33 h6)) (C (T (T h24 h34) (C (T (C (T (T (T (C h23 h15) h30) h29) h27) h6) h20) h12)) h6)) h5
  T (T (h x z v0) (C (T (C (T (T (C (T h41 h40) (R x)) h37) (C (C (T (C (T (T (T h41 h40) h38) (C (C (C h23 h12) h6) h12)) h13) (S h39)) h5) h4)) h5) (C (T (T (T (C (C (T h39 (C (T (T (T (C (C (C h32 h12) h6) h12) (S h38)) h36) h35) h13)) h5) h4) (S h37)) h11) (C (T (T (T h31 h25) h36) h35) h6)) h5)) h4)) (S (h v3 z v0))

@[equational_result]
theorem Equation4210_implies_Equation3601 (G: Type _) [Magma G] (h: Equation4210 G) : Equation3601 G := fun x y z =>
  let v0 := M y x
  let v1 := M v0 z
  let v2 := M z v1
  let v3 := M v2 v1
  have h4 := R v2
  have h5 := h v1 v1 z
  have h6 := h z v1 z
  have h7 := h z z v2
  have h8 := R v1
  have h9 := h v0 z v0
  have h10 := C (S h9) h8
  have h11 := h v0 v0 v1
  have h12 := R v0
  have h13 := h y x y
  have h14 := S h13
  have h15 := C h14 h12
  have h16 := h y y v0
  let v17 := M x y
  have h18 := h v17 y x
  have h19 := R x
  have h20 := R v17
  have h21 := h x y x
  have h22 := h x x v17
  let v23 := M v17 v1
  have h24 := T (T (h x x v0) (C (T (T (T (C (T (h v0 x v1) (C (S (h x z v0)) h8)) h19) (S (h v1 z x))) (h v1 z v1)) (C (C (T (T (h v1 z y) (C (T (C (h y z v0) h8) (S (h v0 y v1))) (R y))) h14) h8) h8)) h12)) (S (h v1 v1 v0))
  let v25 := M v2 y
  T (T (T (T (h x y v2) (h (M v25 x) v2 v2)) (C (T (C (T (C h6 h4) (S h7)) (T (T (T (T (T (T (T (h v25 x v2) (C (C (R (M v2 x)) (T (T (T (h v2 y x) (C (T (C (T h21 (C (T (h v17 x x) (C (T (T (T (T (T (C h24 h20) (C (T (T (T (C h9 h8) (S h11)) (C h13 h12)) (S h16)) h20)) (h (M y y) v17 v2)) (C (C (R (M v2 v17)) (T (T (T (T (T (T (T h16 h15) h11) h10) h5) (h v3 z v2)) (C (C (R (M v2 z)) (T (T (T (h v2 v1 x) (C (T (C (h x v1 z) h4) (S (h z x v2))) h19)) (C (T (T (h z x y) (h v1 y v17)) (C (T (C (T (T h18 (C (T (C h21 h20) (S h22)) h19)) (C h24 h19)) h8) (S (h x v1 v1))) h20)) h19)) (S (h v17 v1 x)))) h4)) (S (h v23 z v2)))) h4)) (S (h (M v23 z) v17 v2))) (S (h z v1 v17))) h19)) h19)) h4) (S (h x x v2))) h19)) (C (T h22 (C (S h21) h20)) h19)) (S h18))) h4)) (S (h (M v17 y) x v2))) (S (h y y x))) h16) h15) h11) h10)) (C (T h7 (C (S h6) h4)) h5)) h4)) (S (h (M v3 z) v2 v2))) (S (h z v1 v2))

@[equational_result]
theorem Equation3940_implies_Equation3932 (G: Type _) [Magma G] (h: Equation3940 G) : Equation3932 G := fun x y z =>
  let v0 := M y z
  let v1 := M x v0
  let v2 := M v1 z
  have h3 := h v1 z v2
  have h4 := S h3
  let v5 := M v1 (M v2 z)
  let v6 := M v2 v2
  have h7 := R v1
  have h8 := h x v0 v2
  have h9 := S h8
  let v10 := M x (M v2 v0)
  have h11 := h v10 v2 v5
  have h12 := R v5
  have h13 := R v10
  have h14 := T (T (C (T h8 (C h13 h3)) h12) (S h11)) h9
  let v15 := M v0 z
  let v16 := M y v15
  have h17 := h x v0 v16
  have h18 := S h17
  have h19 := R v16
  have h20 := h y z v0
  have h21 := R x
  have h22 := C (C h21 h20) h19
  have h23 := h y v15 v1
  have h24 := h v1 v15 y
  have h25 := R y
  have h26 := C (C h21 (S h20)) h19
  have h27 := h x z y
  have h28 := S h27
  have h29 := h y y v1
  have h30 := C (T h22 h18) h25
  have h31 := T (T h8 h11) (C (T (C h13 h4) h9) h12)
  let v32 := M z z
  let v33 := M v1 v32
  let v34 := M y v32
  let v35 := M y v0
  let v36 := M v1 v15
  have h37 := R v35
  have h38 := h y z y
  T (T (T (T (T (h x y v35) (C (C h21 (S h38)) h37)) (h v1 v35 v2)) (C (T (T (T (C h31 (T (T (T (T (T (T (T (T (T (C (T (h v1 z v0) (C (R v36) h38)) h37) (S (h v36 y v35))) (C (T (T (T (T h24 h30) h28) (h x z v34)) (C (C h21 (S (h y z z))) (R v34))) h25)) (S (h v1 v32 y))) (h v1 v32 v1)) (C (T (T (T (T (T (C (T h8 (C h13 (h v1 z z))) (R v33)) (S (h v10 z v33))) (h v10 z v1)) (C h9 h7)) (C h31 h7)) (C h14 (T (T h17 h26) (C h7 (T (T h23 (C (T (C h25 (T (T h24 h30) h28)) (C h25 h27)) h7)) (S h29)))))) h7)) (S (h v1 (M y y) v1))) (C h7 (T (T h29 (C (T (C h25 h28) (C h25 (T (T h27 (C (T h17 h26) h25)) (S h24)))) h7)) (S h23)))) h22) h18)) (C h14 h7)) (h v1 v1 v6)) (C (C h7 (S (h v2 z v1))) (R v6))) (R v2))) (S (h v5 v2 v2))) h4

@[equational_result]
theorem Equation3211_implies_Equation759 (G: Type _) [Magma G] (h: Equation3211 G) : Equation759 G := fun x y z =>
  let v0 := M y x
  let v1 := M v0 z
  have h2 := R v1
  have h3 := h z v0 z
  have h4 := C (S h3) h2
  have h5 := h v0 v1 z
  have h6 := T h5 h4
  let v7 := M z v1
  let v8 := M y v7
  have h9 := h y x v8
  have h10 := S h9
  have h11 := R x
  have h12 := R y
  have h13 := R v8
  have h14 := h x y v0
  have h15 := R v0
  have h16 := S h5
  have h17 := C h3 h2
  have h18 := T h17 h16
  have h19 := h y v7 x
  have h20 := R v7
  have h21 := h x y x
  have h22 := h v0 x v7
  have h23 := h v0 y v8
  have h24 := h y v8 v0
  have h25 := h v0 y v7
  have h26 := C (C (C (T (C (T h25 (C (C (C h13 h18) h15) h12)) h13) (S h24)) h13) h13) h15
  have h27 := h v8 v0 v8
  have h28 := h v8 v8 y
  have h29 := S h27
  have h30 := C (C (C (T h24 (C (T (C (C (C h13 h6) h15) h12) (S h25)) h13)) h13) h13) h15
  have h31 := R (M (M y v8) v8)
  have h32 := C (T (T (T (T (C h31 h18) h30) h29) h28) (C (C (T (T (C (T (C (T h27 h26) h12) (S h23)) h12) (C (T h22 (C (C (C (T (C (T h21 (C (C (C h6 h11) h11) h12)) h20) (S h19)) h18) h15) h11)) h12)) (S h14)) h13) h13)) h12
  have h33 := h v7 y v8
  have h34 := h v0 z v1
  have h35 := R z
  have h36 := h v1 v7 x
  T (h x v0 v0) (C (T (C (T (T (T (C (C (T (T h5 h4) (C (T (h z v1 v1) (C (T (T (T (C (T (T (T (C (C (C (T h34 (C (T (C (C (T (T h17 h16) (C (T h9 (C (T (C (T (T (T (T (C (C (T (T h14 (C (T (C (C (C (T h19 (C (T (C (C (C h18 h11) h11) h12) (S h21)) h20)) h6) h15) h11) (S h22)) h12)) (C (T h23 (C (T h30 h29) h12)) h12)) h13) h13) (S h28)) h27) h26) (C h31 h6)) h12) (S h33)) h11)) h11)) h2) h6) (S h36)) h35)) h35) h2) h2) (S (h v1 v1 z))) h36) (C (C (T (T (C (T (C (T h33 h32) h11) h10) h11) h5) h4) h2) h18)) h35) (S h34)) h5) h4) h2)) h2)) h6) h6) (S (h v7 v7 v1))) h33) h32) h11) h10) h6)

@[equational_result]
theorem Equation2094_implies_Equation2 (G: Type _) [Magma G] (h: Equation2094 G) : Equation2 G := fun x y =>
  have h0 := h y x y
  have h1 := S h0
  let v2 := M x y
  let v3 := M v2 y
  let v4 := M (M x v3) v3
  let v5 := M y x
  have h6 := h v5 v4 x
  have h7 := S h6
  let v8 := M x v4
  have h9 := R v8
  have h10 := R v5
  have h11 := h v3 x y
  have h12 := C (T h0 (C h11 h10)) h9
  have h13 := h y x x
  let v14 := M x x
  have h15 := R v14
  have h16 := h v3 x x
  have h17 := C (T (C (S h16) h15) (S h13)) h9
  have h18 := h v14 v4 x
  let v19 := M v8 v4
  have h20 := T h13 (C h16 h15)
  have h21 := R y
  let v22 := M v5 x
  let v23 := M (M y v22) v22
  have h24 := h v2 v23 y
  have h25 := R (M y v23)
  have h26 := R v2
  have h27 := h v22 y x
  have h28 := h x y x
  have h29 := h x y y
  let v30 := M y y
  have h31 := R v30
  have h32 := h v22 y y
  have h33 := h v30 v23 y
  have h34 := C (T (T (T h24 (C (T (C (S h27) h26) (S h28)) h25)) (C (T h29 (C h32 h31)) h25)) (S h33)) h21
  have h35 := R x
  let v36 := M v14 x
  let v37 := M (M x v36) v36
  let v38 := M x v37
  let v39 := M v38 v37
  have h40 := S h18
  have h41 := C h20 h9
  have h42 := C (T (C (S h11) h10) h1) h9
  have h43 := C (T (T (T h6 h42) h41) h40) h35
  T (T (T (T (T (h x x y) (C (T (T (C (T (T (T h18 h17) h12) h7) h35) (h v22 x x)) (C (T (C (C h35 h43) h43) (h v37 x x)) h15)) (T (T (T (T (T h6 h42) h41) h40) (h v14 v37 v38)) (C (T (C (S (h v36 x x)) h15) (S (h x x x))) (R v39))))) (S (h v14 v39 x))) (h v14 v19 y)) (C (T (T (C (T (S (h v4 x x)) (C (C h35 h34) h34)) h15) (S (h (M v30 y) x x))) (C (T (T (T h33 (C (T (C (S h32) h31) (S h29)) h25)) (C (T h28 (C h27 h26)) h25)) (S h24)) h21)) (T (T (T (T (T (C h20 (R v19)) (S (h v14 v4 v8))) h18) h17) h12) h7))) h1

@[equational_result]
theorem Equation1553_implies_Equation2 (G: Type _) [Magma G] (h: Equation1553 G) : Equation2 G := fun x y =>
  have h0 := h y x y
  have h1 := S h0
  let v2 := M x y
  let v3 := M x v2
  let v4 := M v3 (M v3 y)
  let v5 := M v4 x
  let v6 := M y x
  have h7 := h v6 v4 v5
  have h8 := h v3 y x
  have h9 := R v6
  have h10 := h x y x
  have h11 := R (M v4 v5)
  have h12 := h x y y
  have h13 := h v3 y y
  let v14 := M y y
  have h15 := R v14
  have h16 := h v14 v4 v5
  have h17 := R y
  have h18 := R x
  have h19 := C h17 (T (T (T h7 (C h11 (T (C h9 (S h8)) (S h10)))) (C h11 (T h12 (C h15 h13)))) (S h16))
  let v20 := M y v6
  let v21 := M v20 (M v20 x)
  have h22 := h v2 v21 x
  have h23 := S h22
  have h24 := h v20 x y
  have h25 := R v2
  let v26 := M v21 x
  have h27 := R v26
  have h28 := C h27 (T h0 (C h25 h24))
  have h29 := h y x x
  have h30 := h v20 x x
  let v31 := M x x
  have h32 := R v31
  have h33 := C h27 (T (C h32 (S h30)) (S h29))
  have h34 := h v31 v21 x
  have h35 := T (T (T h34 h33) h28) h23
  have h36 := T h29 (C h32 h30)
  let v37 := M v21 v26
  let v38 := M x v31
  let v39 := M v38 (M v38 x)
  let v40 := M v39 x
  let v41 := M v39 v40
  have h42 := S h34
  have h43 := C h27 h36
  have h44 := C h27 (T (C h25 (S h24)) h1)
  have h45 := C h18 (T (T (T h22 h44) h43) h42)
  T (T (T (T (T (h x x y) (C (T (T (T (T (T h22 h44) h43) h42) (h v31 v39 v40)) (C (R v41) (T (C h32 (S (h v38 x x))) (S (h x x x))))) (T (T (C h18 h35) (h v3 x x)) (C h32 (T (C h45 (C h45 h18)) (h v39 x x)))))) (S (h v31 v41 x))) (h v31 v37 y)) (C (T (T (T (T (T (C (R v37) h36) (S (h v31 v21 v26))) h34) h33) h28) h23) (T (T (C h35 (T (S (h v21 x x)) (C h19 (C h19 h18)))) (S (h (M y v14) x y))) (C h17 (T (T (T h16 (C h11 (T (C h15 (S h13)) (S h12)))) (C h11 (T h10 (C h9 h8)))) (S h7)))))) h1

@[equational_result]
theorem Equation3591_implies_Equation4525 (G: Type _) [Magma G] (h: Equation3591 G) : Equation4525 G := fun x y z =>
  let v0 := M y x
  let v1 := M v0 z
  let v2 := M v0 x
  let v3 := M y z
  have h4 := R z
  let v5 := M (M y v0) z
  let v6 := M v0 v0
  let v7 := M v6 v5
  have h8 := h y x x
  have h9 := R v2
  let v10 := M v1 v1
  have h11 := R v1
  have h12 := R v3
  have h13 := h y z x
  have h14 := C h13 h12
  have h15 := h y v3 z
  let v16 := M v3 v1
  let v17 := M (M y v3) z
  let v18 := M (M v3 v3) v17
  have h19 := S h13
  have h20 := h y z v3
  let v21 := M x v3
  have h22 := h y z v21
  have h23 := S h22
  let v24 := M x v21
  let v25 := M v24 v3
  let v26 := M (M y v21) z
  have h27 := h v21 v26 v25
  have h28 := S h27
  have h29 := R v26
  have h30 := h x v3 v21
  have h31 := R v25
  have h32 := C h31 (T h22 (C h30 h29))
  have h33 := h v24 v3 v3
  let v34 := M v21 v1
  T (T (T (T h30 (h v21 v25 v1)) (C h11 (T (T (T (C (R v34) (T (T h33 (C h13 (T (T h32 h28) h23))) (C (h x v1 v3) h12))) (S (h v3 v3 v34))) (h v3 v3 v3)) (C h13 (T (T (T (T (T (T (C (T (T h14 (C h19 (T (T h22 h27) (C h31 (T (C (S h30) h29) h23))))) (S h33)) h12) h32) h28) h23) h20) (C h12 (C (T (T (T (T (T (T (T h15 (C h4 (h v3 v3 v1))) (S (h v0 (M v16 v3) z))) (C (R v0) (T (T (T (T (T (C (R v16) (T (T h20 (h v3 v17 v3)) (C (T (T h13 (h x v1 v1)) (C h11 (C h19 h11))) (R v18)))) (S (h v1 v18 v16))) (C h11 (T (C h14 (C (T h15 (C h4 h14)) h4)) (S (h z z (M (M x v1) v3)))))) (C h11 (T (h z z v10) (C (R v10) (C (S (h v0 v1 z)) h4))))) (S (h v1 (M (M v0 v1) z) v1))) (S (h v0 z v1))))) (h v0 v1 x)) (C (R x) (T (T (T (C h9 (C h8 h4)) (S (h x z v2))) (h x z v6)) (C (R v6) (C (S (h y v0 x)) h4))))) (h x v7 v2)) (C h9 (T (T (C (S h8) (R v7)) (S (h v0 v5 v0))) (S (h y z v0))))) h4))) (S (h v2 z v3))))))) (S (h x (M v2 z) v1))) (S (h v0 z x))

@[equational_result]
theorem Equation2373_implies_Equation1358 (G: Type _) [Magma G] (h: Equation2373 G) : Equation1358 G := fun x y z =>
  let v0 := M z x
  let v1 := M v0 z
  let v2 := M v1 y
  let v3 := M y v2
  have h4 := h v3 v3 v3
  have h5 := R v3
  let v6 := M v3 v3
  have h7 := R x
  have h8 := h v3 v3 v2
  let v9 := M v3 (M v2 (M v3 v2))
  have h10 := h v1 v3 v1
  let v11 := M v0 (M v1 v0)
  have h12 := h v11 z v0
  have h13 := S h12
  have h14 := R z
  have h15 := R v0
  have h16 := h v0 v1 x
  have h17 := S h16
  have h18 := R v1
  let v19 := M v1 (M x (M v0 x))
  have h20 := h v19 v0 v1
  have h21 := h z v0 v3
  have h22 := S h21
  have h23 := C h15 h22
  have h24 := R v19
  let v25 := M v0 (M v3 (M z v3))
  have h26 := h v25 v19 v0
  have h27 := h v25 z v0
  have h28 := S h27
  have h29 := C h15 h21
  have h30 := C (C h14 h29) h14
  have h31 := C (C h14 h23) h14
  have h32 := h x z v0
  have h33 := S h32
  have h34 := R v25
  have h35 := h (M z (M v0 (M x v0))) v25 z
  have h36 := C (T (T h35 (C (T (C h34 (C h14 h33)) h22) (T h27 h31))) (C h14 (T (T (T h30 h28) h26) (C (T (C h24 h23) h17) (T h20 (C (C h15 (C h18 h17)) h15)))))) h14
  have h37 := h x v3 v3
  let v38 := M v3 (M v3 (M x v3))
  T (T (T (T (T h32 h36) h13) (h v11 v3 x)) (C (T (T (T (T (T (T (T (T (T (C h5 (C h7 (C (T (T h12 (C (T (T (C h14 (T (T (T (C (T h16 (C h24 h29)) (T (C (C h15 (C h18 h16)) h15) (S h20))) (S h26)) h27) h31)) (C (T h21 (C h34 (C h14 h32))) (T h30 h28))) (S h35)) h14)) h33) h7))) (h (M v3 (M x (M x x))) x v3)) (C (T (C h7 (C h5 (S (h x v3 x)))) (C h7 (C h5 h37))) h7)) (S (h v38 x v3))) (h v38 v3 v3)) (C (C h5 (T (T (T (T (T (T (C h5 (S h37)) (C h5 (T (T h32 h36) h13))) (h (M v3 v11) x v3)) (C (C h7 (T (C h5 (S (h v1 v3 v0))) (C h5 h10))) h7)) (C (C h7 (T (C h5 (S h10)) (C h5 (h v1 v3 y)))) h7)) (S (h v6 x v3))) (C h5 h8))) h5)) (S (h v9 v3 v3))) (h v9 x v3)) (C (C h7 (T (C h5 (S h8)) (C h5 h4))) h7)) (S (h (M v3 (M v3 v6)) x v3))) h5)) (S h4)
