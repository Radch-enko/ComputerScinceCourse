( define ( square value ) ( * value value ) )

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001)
)

( define ( average x y ) ( / ( + x y ) 2 ) )

( define ( improve guess x ) 
    ( average guess ( / x guess ) )
)

( define ( sqrt-iter guess x )
    ( if ( good-enough? guess ( improve guess x ) ) 
            guess
            ( sqrt-iter ( improve guess x ) x )
    )
)

( define ( sqrt x ) 
    ( sqrt-iter 1.0 x )
)

( display ( sqrt 0.00000000123456 ) )