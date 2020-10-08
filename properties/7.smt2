(declare-fun delta () Real)
(assert (= delta 0.95))

(assert 
   (>=
     (/ 
       (to_real edges_size) 
       (*
         nodes_size
         (-
           nodes_size
           1
         )
       )
     )
     delta
   )
)

(check-sat)
