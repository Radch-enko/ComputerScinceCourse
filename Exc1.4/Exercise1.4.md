Exercise 1.4: Observe that our model of evaluation allows
for combinations whose operators are compound expressions. Use this observation to describe the behavior of the
following procedure:

```lisp
(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))
```

Answer: 

Depending on whether `b` is greater than `0` the `if` block will return an operand of addition `+` or subtraction `-`, then the resulting operand will be applied to the operands `a` and `b` 