Alyssa P. Hacker doesn’t see why if needs to
be provided as a special form. “Why can’t I just define it as
an ordinary procedure in terms of cond?” she asks. Alyssa’s
friend Eva Lu Ator claims this can indeed be done, and she
defines a new version of if:
```lisp
(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))
```
Eva demonstrates the program for Alyssa:
```lisp
(new-if (= 2 3) 0 5)
5
(new-if (= 1 1) 0 5)
0
```
Delighted, Alyssa uses new-if to rewrite the square-root
program:
```lisp
(define (sqrt-iter guess x)
(new-if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))
```
What happens when Alyssa attempts to use this to compute
square roots? Explain.

Answer:
The difference between the special if form and the new-if procedure is the order in which the arguments are executed. 

The [MIT/GNU Scheme Reference Manual documentation](https://www.gnu.org/software/mit-scheme/documentation/stable/mit-scheme-ref.pdf) states:
> Predicate, consequent, and alternative are expressions. An if expression is evaluated as follows: first, predicate is evaluated. If it yields a true value, then consequent is
evaluated and its value is returned. Otherwise alternative is evaluated and its value is returned. If predicate yields a false value and no alternative is specified, then the result of the expression is unspecified.

It follows that `consequent` and `alternative` will be evaluated only after **predicate** is evaluated. And the default new-if function in the Lisp Scheme will be performed in an applicative way (by default), and the interpreter will try to execute both consequent and alternative by constantly evaluating the `sqrt-item` function. This will cause a stack overflow and an interpreter error  
