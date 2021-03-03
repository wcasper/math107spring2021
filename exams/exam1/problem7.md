---
layout: page
title: Practice Exam 1 Problem 7
permalink: /exams/exam1/problem7
---

## Problem 7

a) Determine the final values of the variables *x*, *y*, and *z* after the list of commands are executed in the command window.
You must show your work by hand.

```Matlab
x = 3;
y = 1;
z = 9;
x = y-z;
z = x + 2*y;
y = 2*y-z + x;
```

b) Consider the function defined below.

```Matlab
function [a,b,c] = examFun(x,y)
a = 2*x - y
b = x^2-y
c = a + b
end
```

Determine the final values of the variables *x*, *y*, *z*, *a*, and *b* after running the following lines in the command window.  You must show your work by hand.

```Matlab
a = 1;
b = 4;
x = 2;
y = 3;
z = -1;
[z,y,b] = examFun(x,a)
```

