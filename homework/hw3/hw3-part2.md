---
layout: page
title: Homework 3 Part 2
permalink: /homework/hw3/hw3-part2
---

## Functions and loops

**Problem 2:**

As we found out back in calculus, some functions are really very hard to integrate!  A really good example of this is the gaussian function

$$f(x) = e^{-x^2}$$

In this problem, we will numerically approximate integrals of this function.

### Riemann sums

Let $$f(x)$$ be a continuous function.  The simplest way to approximate an integral

$$\int_a^b f(x)dx$$

is to understand that this is the area under the curve defined by $$f(x)$$ and can be approximated as a sum of rectangles, or more formally in terms of a Riemann sum.  Remember, the right Riemann sum of a function $$f(x)$$ on an interval $$[a,b]$$ is given by

$$\sum_{k=1}^n f(x_k)\Delta x,\quad\text{where}\ \Delta x= \frac{b-a}{n},\ x_k = k\Delta x + a$$

Write a function called gaussian_area(a,b,n) which takes in the endpoints of the interval of integration $$[a,b]$$ and the number of rectangles to be used and returns the corresponding right Riemann sum with $$n$$ rectangles.

