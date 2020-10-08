(declare-fun C () Int) 
(assert (= C 1))
(define-fun-rec in-bw ((node String) (edges (Array Int Edge)) (pos Int) ) Int
  (ite (<= pos 0)
    0
    (ite (= (dst (select edges pos)) node) 
      (+ (bandwidth (select edges pos)) (in-bw node edges (- pos 1) ))
      (in-bw node edges (- pos 1) )
    )
  )
)

(define-fun-rec out-bw ((node String) (edges (Array Int Edge)) (pos Int) ) Int
  (ite (<= pos 0)
    0
    (ite (= (src (select edges pos)) node) 
      (+ (bandwidth (select edges pos)) (out-bw node edges (- pos 1) ))
      (out-bw node edges (- pos 1) )
    )
  )
)

(assert
  (forall ((x Int))
    (=>
      (and
        (> x 0)
        (<= x nodes_size)
      )
      (<=
        (in-bw (select nodes x) edges edges_size )
        (* C (out-bw (select nodes x) edges edges_size ))
      )
    )
  )
)

(check-sat)
