---
layout: page
title: Worksheet 4
permalink: /worksheets/ws4
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## Nested loops

In this worksheet we will practice more complicated loop examples involving **nested loops**, meaning loops within loops.

### Part 1

In this part, we will be writing a computer code to calculate the product of matrices using nested loops.
The point is to practice using nested loops, so make sure to follow these instructions instead of using the built-in MATLAB operations here.

Let $$A$$ be an $$m\times n$$ matrix and $$B$$ and $$n\times\ell$$ matrix.
In MATLAB, the $$j$$'th row of $$A$$ is given by

```Matlab
A(j,:)
```

Likewise, the $$k$$'th column of $$B$$ is given by

```Matlab
A(:,k)
```

Remember that the $$(j,k)$$ entry of the matrix product $$AB$$ of $$A$$ and $$B$$ is the dot product of the $$j$$'th row vector of $$A$$ with the $$k$$'th column vector of $$B$$.  Thus in MATLAB, it can be calculated by

```Matlab
dot(A(j,:),A(:,k))
```

* a) Using the above comments, create a function called *matprod* which takes in two matrices $$A$$ and $$B$$ and returns the matrix product $$AB$$ using a nested loop.
* b) Compare the output of your code to the value of the product

```Matlab
A*B
```

for the specific matrices

$$A = \left(\begin{array}{ccc}
2 & 1 & 0\\
3 & -1 & 1
\end{array}\right)$$

$$B = \left(\begin{array}{cc}
1 & 1\\
2 & 3\\
0 & 2\\
\end{array}\right)$$

### Part 2

We can sharpen a blurry image with various tools, such as an **sharpening filter**.
Applying a sharpening filter to an $$m\times n$$ matrix $$A$$ creates a new matrix $$B$$ whose $$(j,k)$$'th entry is obtained by taking differences between adjacent pixels.

For pixels away from the edges of the image, the $$(j,k)$$ entry of $$B$$ is given by the formula

$$B(j,k) = 5A(j,k) - A(j+1,k) - A(j,k+1) - A(j-1,k) - A_{j,k-1}.$$

On the boarders of the image, the formula for the values depends which corner or edge we are on.

The values of the corner pieces are given by

* upper left corner:

$$B(1,1) = 3A(1,1) - A(2,1) - A(1,2),$$

* upper right corner:

$$B(1,n) = 3A(1,n) - A(2,n) - A(1,n-1),$$

* lower left corner:

$$B(m,1) = 3A(m,1) - A(m-1,1) - A(m,2),$$

* lower right corner:

$$B(m,n) = 3A(m,n) - A(m-1,n) - A(m,n-1),$$

Away from the corners, the values of the edges are given by

* left edge:

$$B(j,1) = 4A(j,1) - A(j+1,1) - A(j,2) - A(j-1,1),$$

* right edge:

$$B(j,n) = 4A(j,n) - A(j+1,n) - A(j-1,n) - A(j,n-1),$$

* upper edge:

$$B(1,k) = 4A(1,k) - A(2,k) - A(1,k+1) - A(1,k-1),$$

* lower edge:

$$B(m,k) = 4A(m,k) - A(m,k+1) - A(m-1,k) - A(m,k-1),$$

a) Create a function called *sharpen* which returns the sharpening filtered version $$B$$ of a matrix $$A$$.
b) Download the image *blurry.png* from the link below into the current MATLAB working directory.  Run the following MATLAB command to read in the image as a matrix $$A$$ of black and white pixels.

```Matlab
A = rgb2gray(imread("blurry.png"))

```
c) Use the function you wrote to create a matrix $$B$$ whose value is the sharpened version of the matrix $$A$$

d) Compare the two matrices by using the *imshow* command.  What do you notice as differences between the two matrices.


## Additional resources

**Image file used above:** <a target="_parent" href="https://wcasper.github.io/math107spring2021/worksheets/ws5/blurry.png">blurry.png (link)</a>



