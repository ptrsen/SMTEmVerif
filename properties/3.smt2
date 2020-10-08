(assert
  (forall ((x Int))
    (=>
      (and
        (> x 0)
        (<= x edges_size)
      )
      (exists ((y Int))
        (and
          (> y 0)
          (<= y edges_size)
          (= (src (select edges x)) (dst (select edges y)) )
          (= (dst (select edges x)) (src (select edges y)) )
        )
      )
    )
  )
)

(check-sat)
