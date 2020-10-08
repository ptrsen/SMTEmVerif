(declare-fun B () Int) 
(assert (= B 10))

(assert
  (forall ((x Int)) 
    (=>
      (and
        (> x 0)
        (<= x edges_size)
      )
      (>= (bandwidth (select edges x)) B)
    )
  )
)

(check-sat)
