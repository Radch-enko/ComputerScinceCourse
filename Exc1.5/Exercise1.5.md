Exercise 1.5: Ben Bitdiddle has invented a test to determine
whether the interpreter he is faced with is using applicative order evaluation or normal-order evaluation. He defines the
following two procedures:
```lisp
(define (p) (p))

(define (test x y)
(if (= x 0) 0 y))
```
Then he evaluates the expression `(test 0 (p))`
What behavior will Ben observe with an interpreter that
uses applicative-order evaluation? What behavior will he
observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation 27
rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines
whether to evaluate the consequent or the alternative expression.)

Answer:
If the expression is executed in an applicative-order evaluation: an interpreter error will occur, because the interpreter will first try to calculate the value of the procedure `p` - recursion will occur. 

If the expression is executed in the normal-order evaluation:  
The call will complete without error, the interpreter will unfold the expression with the parameters substituted , and then perform the reduction