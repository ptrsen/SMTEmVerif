(assert
  (forall ((x Int))
    (=>
      (and
        (> x 0)
        (<= x nodes_size)
      )
      (exists ((y Int)(z Int))
        (and
          (> y 0)
          (<= y edges_size)
          (> z 0)
          (<= z edges_size)
          (= (src (select edges y) ) (select nodes x))
          (= (dst (select edges z) ) (select nodes x))
          (not (= y z))
        )
      )
    )
  )
)

(check-sat) 
