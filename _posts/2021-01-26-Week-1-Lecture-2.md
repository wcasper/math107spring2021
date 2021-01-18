---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* Create vectors and matrices in MATLAB
* Access elements of matrices and vectors

## Reading assignments

* <a target="_parent" href="../extras/textbook.pdf">primary text (link)</a>: chapter 1
* When Life is Linear: chapter 1

## Matrices

The principal data objects in MATLAB are **matrices**, which are simply $$m\times n$$ arrays of numbers.  Examples of matrices are

$$\left[\begin{array}{ccc}
1 & 1 & 3\\
0 & -1& 4\\
\end{array}\right],\quad
\left[\begin{array}{cc}
4 & 1\\
2 & 3\\
6 & 9
\end{array}\right],\quad
\left[
1 & 1\\\begin{array}{cc}
2 & 3
\end{array}\right]
$$


### Initializing matrices in MATLAB


## Matlab first steps

### Basic commands
Matlab comes with the usual suspects of built-in functions, such as square roots and trigonometric functions
```Matlab
sqrt(20)
sin(pi)
exp(1)
```
Note that by default **all** inputs for trigonnometric functions are in radians instead of degrees, which incidentally is how things should always be once you've taken calculus.

### Variables
We can create variables using the = symbol.
For example, the following code creates a variable $$x$$ and sets it equal to $$1$$
```Matlab
x = 1
```
Variable names don't have to be single letters.  In fact, unlike in calculus, its better behavior when you are programming to use meaningful variable names.  For example, if the current temperature of an object is $$65$$ degrees, we could create a variable $$\text{temp}$$ and set it to $$65$$.
```Matlab
temp = 65
```


## Additional resources

 


