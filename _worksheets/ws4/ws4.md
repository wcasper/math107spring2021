---
layout: page
title: Worksheet 4
permalink: /worksheets/ws4
---

## Directions

This is a self-guided **group worksheet**.  Work with your group members to follow the instructions below and explore!  Note that some of the results will be assessed later, so make sure you do it right!

## Julia Sets

One example of a **dynamical system** is the one defined by starting with a complex number $$z_0= a+ib$$ and then iteratively updating the number via the rule

$$z_{n+1} = z_n^2 + c$$

where here $$c$$ is some fixed complex number.

**Example:** Consider the special case $$c = 0.285 + 0.01i$$ and $$z_0 = 0.1 + 0.2i$$.  Then $$z_1 = 0.255 + 0.05i$$ and $$z_2 = 0.3475 + 0.0355i$$.

We can think of $$z_n$$ as the complex coordinate of a particle at time $$n$$, so that the above describes how the position of the particle changes over time.

For some starting positions in the complex plane, the evolution causes the particle to zoom away from the origin.  Remember, the distance from the origin is given by the modulus $$\lvert z\rvert$$ of a complex number $$z$$.  We can decide how stable an initial point $$z_0$$ is by determining how long $$z_n$$ remains with relatively small magnitude, ie. by determining what the largest value of $$n$$ is satisfying $$\lvert z_n\rvert <2000$$.  By coloring points in the complex plane according to how much time it takes for $$\lvert z\rvert >2000$$, we generate a very beautiful pattern called a **Julia set**.  In this worksheet, we will create some examples of Julia sets.

### Part 1
Let's practice the dynamical system that we've described above.  Suppose that $$z_0 = 1 + i$$ and that $$c = 0.5 + 0.5i$$

**Question:** What is the value of $$z_3$$?  Remember your answer for the self-assessment later!


### Part 2
We will start by creating a $$1000\times 1000$$ matrix of complex numbers $$Z(j,k)$$ such that the values form an evenly spaced grid in the complex plane, with $$-1.5\leq \text{Re}(z)\leq 1.5$$ and $$-1.5\leq \text{Im}(z)\leq 1.5$$.  To do this, we can use the *meshgrid* command.

Let's first consider a smaller example.  Suppose that

```Matplotlib
x = [-1.5 -1.0 -0.5 0.0 0.5 1.0 1.5];
y = [-1.5 -1.0 -0.5 0.0 0.5 1.0 1.5];
```

Then the command

```Matplotlib
[X,Y] = meshgrid(x,y);
```

produces two $$7\times 7$$ matrices, called $$X$$ and $$Y$$ whose values are

$$X = \left[\begin{array}{ccccccc}
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5\\
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5\\
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5\\
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5\\
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5\\
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5\\
-1.5 & -1.0 & -0.5 & 0.0 & 0.5 & 1.0 & 1.5
\end{array}\right]$$

$$Y = \left[\begin{array}{ccccccc}
-1.5 & -1.5 & -1.5 & -1.5 & -1.5 & -1.5 & -1.5\\
-1.0 & -1.0 & -1.0 & -1.0 & -1.0 & -1.0 & -1.0\\
-0.5 & -0.5 & -0.5 & -0.5 & -0.5 & -0.5 & -0.5\\
 0.0 &  0.0 &  0.0 &  0.0 &  0.0 &  0.0 &  0.0\\
 0.5 &  0.5 &  0.5 &  0.5 &  0.5 &  0.5 &  0.5\\
 1.0 &  1.0 &  1.0 &  1.0 &  1.0 &  1.0 &  1.0\\
 1.5 &  1.5 &  1.5 &  1.5 &  1.5 &  1.5 &  1.5
\end{array}\right]$$

Then we can use the command 

```Matlab
Z = X + i*Y;
```

to create the matrix

$$Z = \left[\begin{array}{ccccccc}
-1.5-1.5i  & -1.0-1.5i  & -0.5-1.5i  & 0.0-1.5i  & 0.5-1.5i  & 1.0-1.5i  & 1.5-1.5i\\
-1.5-1.0i  & -1.0-1.0i  & -0.5-1.0i  & 0.0-1.0i  & 0.5-1.0i  & 1.0-1.0i  & 1.5-1.0i\\
-1.5-0.5i  & -1.0-0.5i  & -0.5-0.5i  & 0.0-0.5i  & 0.5-0.5i  & 1.0-0.5i  & 1.5-0.5i\\
+1.5+0.0i  & +1.0+0.0i  & +0.5+0.0i  & 0.0+0.0i  & 0.5+0.0i  & 1.0+0.0i  & 1.5+0.0i\\
-1.5+0.5i  & -1.0+0.5i  & -0.5+0.5i  & 0.0+0.5i  & 0.5+0.5i  & 1.0+0.5i  & 1.5+0.5i\\
-1.5+1.0i  & -1.0+1.0i  & -0.5+1.0i  & 0.0+1.0i  & 0.5+1.0i  & 1.0+1.0i  & 1.5+1.0i\\
-1.5+1.5i  & -1.0+1.5i  & -0.5+1.5i  & 0.0+1.5i  & 0.5+1.5i  & 1.0+1.5i  & 1.5+1.5i
\end{array}\right]$$

Now we want to create a $$1000\times 1000$$ size version of this.  Do so by repeating the commands above but with

```Matlab
x = linspace(-1.5,1.5,1000);
y = linspace(-1.5,1.5,1000);
```

### Part 3

Now for each entry $$Z(i,j)$$ of $$Z$$, we want to see how long the entry remains having norm less than $$2000$$.  We can do this with a *for loop*.  We will again focus on the case when $$c = 0.285 + 0.01i$$ .

```Matlab
stability = zeros(1000,1000);  % Array to keep track of how many iterations it takes
tmax = 200                     % Max time we will run the simulation
c = 0.285 + 0.01i              % constant determining Julia set
maxnorm = 2000;                % maximum norm before we cut off

for t=1:tmax
  % update each point in the matrix Z according to the equation z_(n+1) = z_n^2 + c
  Z = Z.*Z + c;
  % if a point has norm less than maxnorm, increase the time in that entry of the stability matrix
  stability(abs(Z) < maxnorm) = t;
end

```

When this code has finished executing, the matrix *stability* will contain the maximum number of iterations each point remained with small norm less than $$1000$$.  We can visualize this set graphically by running the command

```Matlab
pcolor(stability), shading interp
```

**Questions:**  What is the value of the $$(400,400)$$ entry of *stability* ? Make sure to remember this for the self-assessment later.

**Questions:**  What does the image your graph produced look like.  Do you notice any patterns in particular?

### Part 4

In this part, we will repeat the work from Part 2, but with $$c = -0.835- 0.2321i$$.  You should notice that the picture you generate will change dramatically.

**Questions:**  What is the value of the $$(400,400)$$ entry of *stability* ? Make sure to remember this for the self-assessment later.

**Questions:**  Are there any qualities that this image shares with the previous image?




