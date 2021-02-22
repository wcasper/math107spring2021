---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* more function practice
* for loops and while loops

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: section 8.1

## Loops

### for loops

A **for loop** allows us to tell the computer to execute a block of code many times.  The syntax for this is

```Matlab
for var = some_array
 (do something)
end
```

For example the following code prints "ho ho ho" to the screen

```Matlab
for i = 1:3
  display("ho")
end
```

As another example, the following code adds up the first ten positive integers

```Matlab
total = 0;
for k = 1:10
  total = total + k;
end
```

Here by the end of the for loop

$$total = 1 + 2 + 3 + \dots + 9 + 10 = 55.$$

### while loops

A **while loop** executes a particular command until a certain condition is satisfied.  The syntax for this is

```Matlab
while some_condition
 (do something)
end
```

For example, the following while loop finds the largest power of two that divides $$240$$.

```Matlab
x = 1
while mod(240,x) == 0
  x = x*2;
end
```

At the end of the loop, $$x = 2^5=32.$$

As a more complicated example, the following code uses Newton's method to calculate $$\sqrt{2}$$ accurate to at least $$7$$ decimal places

```Matlab
error = 1;
x0 = 1;
while(error > 1e-7)
  x1 = x0 - (x0*x0-2)/(2*x0);
  error = abs(x1-x0);
  x0 = x1;
end

```

Unlike for loops, while loops never have to terminate!
```Matlab
x = 1
while(x > 0):
  display("This is the song that never ends...")
end

```


### When to use for vs. while loops

As a rule of thumb
* use for loops when you can determine before hand how many iterations are necessary, in particular when iteration occurs over a vector or matrix
* use while loops when you don't know how many iterations you may need before hand, in particular when you need to run until a condition holds

**Good practice tip:** You should try to avoid while loops whenever possible, since they can fail to terminate leaving your program to run forever

## Additional resources

**Lecture notes:** <a target="_parent" href="https://wcasper.github.io/math107spring2021/extras/notes/2021-02-17-Note-10-12.pdf">notes for lecture (link)</a>

**Lecture video:** <a target="_parent" href="https://fullerton.zoom.us/rec/share/va-Hxuap6WKvX3VbGJnWPrUzVd_MBrWoAfsnBUS-AUjytIpmQG3s3gVeHyqaBBlF.kuIZNi9vfav_ewjv">recording of lecture (link)</a>

The passcode can be found on the <a target="_parent" href="https://csufullerton.instructure.com/courses/3127326/pages/video-lecture-keys">passcode page (link)</a>

