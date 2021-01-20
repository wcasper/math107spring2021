---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* concatenating matrices
* Import an image in MATLAB as an RGB matrix
* Access elements of an RGB matrix
* plotting images
* resizing and grayscale

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: chapter 2
* When Life is Linear: chapter 2

## Concatenating matrices
Many times, it will be useful to "glue" two matrices $$A$$ and $$B$$ together to form a bigger matrix via a process called **concatenation**.  We can do this either by putting the rows of $$B$$ on the ends of the rows of $$A$$, or by appending the columms of $$B$$ on the ends of the columns of $$A$$.

**Concatenating along rows**
If $$A$$ is an $$m\times n$$ matrix and $$B$$ is an $$m\times \ell$$ matrix (so they have the same number of rows), then we can create a new $$m\times (n+\ell)$$ matrix by taking each row of $$B$$ and tacking it on to the end of the same row of $$A$$.  In MATLAB, this can be done with the following code

```
[A,B]
```

For example

$$A=  \left[\begin{array}{ccc}
1 & 1 & 1\\
1 & 1 & 1\\
\end{array}\right],\quad
B = \left[\begin{array}{cc}
4 & 3\\
2 & 1
\end{array}\right],\quad\text{then}\quad
[A,B] = \left[\begin{array}{ccccc}
1 & 1 & 1 & 4 & 3\\
1 & 1 & 1 & 2 & 1
\end{array}\right]$$

**Concatenating along rows**
If $$A$$ is an $$m\times n$$ matrix and $$B$$ is an $$\ell\times n$$ matrix (so they have the same number of rows), then we can create a new $$(\ell+m)\times n$$ matrix by taking each column of $$B$$ and tacking it on to the end of the same column of $$A$$.  In MATLAB, this can be done with the following code

```
[A;B]
```

Notice the semicolon in place of the comma.  For example

$$A=  \left[\begin{array}{ccc}
2 & 4 & 6\\
\end{array}\right],\quad
B = \left[\begin{array}{cc}
1 & 3 & 1\\
3 & 1 & 3
\end{array}\right],\quad\text{then}\quad
[A;B] = \left[\begin{array}{ccc}
2 & 4 & 6\\
1 & 3 & 1\\
3 & 1 & 3
\end{array}\right]$$

## Image processing

### Loading an image

To load an image as a matrix of RGB values, we can use the imread() function.  

## Additional resources


