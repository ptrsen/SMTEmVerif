(assert
  (forall ((i Int)) 
    (=>
      (and
        (> i 0)
        (<= i edges_size)
      )
      (exists ((j Int) (k Int))
        (and
          (= (src (select edges i)) (select nodes k) )
          (= (dst (select edges i)) (select nodes j) )
          (not (= k j)) 
        )
      )
      
    )
  )
)

(check-sat)
