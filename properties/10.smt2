(define-fun-rec bw ((edges (Array Int Edge)) (pos Int) ) Int
  (ite (<= pos 0)
    0 
    (+ (bandwidth (select edges pos)) (bw edges (- pos 1) ))
  )
)

(declare-fun B () Int) 
(assert (= B 100000000))

(assert
  (<= (bw edges edges_size) B)
)

(check-sat)
