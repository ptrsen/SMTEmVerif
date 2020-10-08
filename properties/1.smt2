(assert
  (forall ((x Int))
    (=>
      (and
        (> x 0)
        (<= x edges_size)
      )
      (>= (bandwidth (select edges x)) 0)
      (>= (delay (select edges x)) 0)
    )
  )
)

(check-sat)
