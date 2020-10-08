(declare-datatypes () ((Edge (mk-edge (src String) (dst String))))) ; to have a type edge to manipulate, Edge is from the record (tuple) theory 
(declare-fun delay ((Edge)) Int) ;a function must be provided or later a restriction that the function must return > 0 
(declare-fun bandwidth ((Edge)) Int)  ; a function must be provided or later a restriction that the function must return > 0 
(declare-const edges (Array Int Edge)) ; an array of edges  
(declare-const nodes (Array Int String)) ; an array of nodes 
(declare-fun edges_size () Int) ; a function must be provided or later a restriction that the function must return > 0 
(declare-fun nodes_size () Int) 
(assert (> edges_size 0) ) ; a restriction on the edge size that must be greater than 0 
(assert (> nodes_size 0) ) 
;; end of initial configuration, starts specific graph configs 
(assert (= (store nodes 1 "n1") nodes))
(assert (= (store nodes 2 "n2") nodes))
(assert (= (store nodes 3 "n3") nodes))
(assert (= (store nodes 4 "n4") nodes))
(assert (= (store nodes 5 "n5") nodes))
(assert (= nodes_size 5)) 
(assert (= (store edges 1 (mk-edge "n3" "n4")) edges)) 
(assert (= 3073243 (bandwidth (select edges 1)) ) )
(assert (= 31 (delay (select edges 1)) ) )
(assert (= (store edges 2 (mk-edge "n3" "n5")) edges)) 
(assert (= 3141438 (bandwidth (select edges 2)) ) )
(assert (= 32 (delay (select edges 2)) ) )
(assert (= (store edges 3 (mk-edge "n4" "n3")) edges)) 
(assert (= 5796915 (bandwidth (select edges 3)) ) )
(assert (= 58 (delay (select edges 3)) ) )
(assert (= (store edges 4 (mk-edge "n4" "n5")) edges)) 
(assert (= 18351106 (bandwidth (select edges 4)) ) )
(assert (= 184 (delay (select edges 4)) ) )
(assert (= (store edges 5 (mk-edge "n5" "n3")) edges)) 
(assert (= 2317919 (bandwidth (select edges 5)) ) )
(assert (= 24 (delay (select edges 5)) ) )
(assert (= (store edges 6 (mk-edge "n5" "n4")) edges)) 
(assert (= 18262814 (bandwidth (select edges 6)) ) )
(assert (= 183 (delay (select edges 6)) ) )
(assert (= edges_size 6)) 
;; end of graph configuration, propery verification starts
