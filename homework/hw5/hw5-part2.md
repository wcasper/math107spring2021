---
layout: page
title: Homework 5 Part 2
permalink: /homework/hw5/hw5-part2
---

## Functions taking in matrices

The following code defines a function which takes in a matrix $$A$$ and computes the sum of all the entries

```Matlab
function total = sum_entries(A)
#USEAGE: total = sum_entries(A)
#INPUTS: A -- input matrix
#OUTPUT: total -- the sum of the entries of the matrix
#DETAILED DESCRIPTION:
#  this function calculates the sum of the entries of the matrix A

[nrows,ncols] = size(A); # get number of rows and columns

  total = 0;   # sum of the entries

  # sum over all rows
  for j=1:nrows
    # sum over all columns
    for k=1:ncols
      total = total + A(j,k);
    end
  end

end
```


**Problem 2:**
Create a function called *num4plus* which takes in a matrix $$A$$ and returns the number of entries of $$A$$ which are greater than or equal to $$4$$. Do not use any built-in functions! Also don't name any variables *sum*.  You might consider taking the function we have above and **modifying it** to calculate what you want.

Be sure to include good documentation in the file, including
* USEAGE:
* INPUTS:
* OUTPUT:
* DETAILED DESCRIPTION:


