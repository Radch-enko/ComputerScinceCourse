( define ( square value ) ( * value value ) )
( define ( sum-of-squares a b )  ( + ( square a ) ( square b ) ) )
( define ( sum-largers-squares x y z )
    ( cond 
            
        ( ( not ( or ( > x y) ( > x z ) ) )  ( sum-of-squares y z ) )

        ( ( not ( or ( > y x) ( > y z ) ) )  ( sum-of-squares x z ) )

        ( ( not ( or ( > z x) ( > z y ) ) )  ( sum-of-squares x y ) )
      
    )
)