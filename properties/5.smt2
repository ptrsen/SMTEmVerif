(declare-fun D () Int) 
(assert (= D 10))

(assert
  (forall ((x Int)) 
    (=>
      (and
        (> x 0)
        (<= x edges_size)
      )
      (<= (delay (select edges x)) D)
    )
  )
)

(check-sat)
