---
layout: post
---

Notes and highlights from lecture

## Today's Objectives

* code blocks and scope
* more loop practice
* common errors in functions and for loops

## Reading assignments

* <a target="_parent" href="../../../extras/textbook.pdf">primary text (link)</a>: section 8.1

## Scope

### What is scope

We can actually define new ariables *inside* a for or while loop.  For example

```Matlab
for k=1:5
 myvar = k;
end
```

When we do this we have a bit of a **Vegas Situation** (what happens in Vegas stays in Vegas).  More accurately, if *myvar* was not defined before the start of the loop, then after the loop is over it will still not be defined.  It is defined only for the duration of the loop.  Thus if then tried to use the code

```Matlab
x = myvar
```

MATLAB would complain and say *myvar* isn't defined!  This idea that variables may be **local** and not seen by the entire MATLAB Workspace is referred to as **scope**.  In particular, the **scope** of a variable is the precisely the part of the code wherein it remains defined.

Scope also exists in functions!  For example, suppose I have a file called *mycoolfunction.m* whose content is

```Matlab
function epicness = mycoolfunction(x)
%USEAGE: epicness = mycoolfunction(x)
%INPUTS: x -- a real number
%OUTPUT: epicness -- the value of this really cool polynomial I made up
%DETAILED DESCRIPTION: Hey all you cool cats and kittens.  While rewatching
%  Tiger King for the seventh time, I thought of this super cool polynomial that I
%  wanted to build a MATLAB function for.  That's what this function returns!

tiger_constant = -4.1;

epicness = 3*x*x*x - x*x + x - tiger_constant;

end
```

When we run this function, it temporarily creates the variable *tiger_constant*, but it is only around while the function is running and then disappears right away!
In fact, even if we had the variable defined already in our code, it would be unaffected by running this function.

```Matlab
y = mycoolfunction(0);  % the value of y is going to be -4.1
tiger_constant = 100;
z = mycoolfunction(0);  % the value of z is still going to be -4.1, even though outside the function tiger_constant =100;
tiger_constant          % the value is still 100, even though we ran the function!
```
### Scope is a good thing!

Initially, you might be unhappy that variables can have different meanings inside and outside of a function.  I get it!  However, this is a **good thing** for important reasons

* It keeps the Workspace unpolluted.

Suppose we are building a very complex code.  We don't want to have to pollute our Workspace with hundreds of different variables that we don't actually care about!

* We get predictable function behavior.

Suppose we want to write a function that anybody can use if they want to.  For example, it could be a function that takes in a temperature in Fahrenheit and converts it to Celsius.  If inside our function we have a variable called *temp*, and somebody trying to use our function also happens to have a variable called *temp* in some other part of their code, we don't want that to change how our function behaves!

## Loop example with local variables

Consider the following piece of MATLAB code.  Analyze it and determine (by hand!) the value of the variables *x1* and *x2* after this code has been run.
Also indicate any variables whose scope is only the loop and which are no longer defined after the loop has run.

```Matlab
x1 = 1;
x2 = 1;

for k=1:5
  tmp = x2;
  x2  = x2 + x1;
  x1  = tmp;
end
```

## Function example with local variables

Suppose that you have a file called *myfunction.m* whose contents are

```Matlab
function z = myfunction(x)
z = 5;

y = x;
z = y;
end
```

Work out (by hand!) the values of $$x$$, $$y$$, and $$z$$ after the following code has run.

```Matlab
x = 1;
y = 2;
z = 3;
x = myfunction(y);
```

## Additional resources
**Worksheet for today:** <a target="_parent" href="https://wcasper.github.io/math107spring2021/worksheets/ws3">common mistakes (link)</a>


**Lecture notes:** <a target="_parent" href="https://wcasper.github.io/math107spring2021/extras/notes/2021-02-22-Note-09-56.pdf">notes for lecture (link)</a>

**Lecture video:** <a target="_parent" href="https://fullerton.zoom.us/rec/share/bejulRHl7binyw-yU5LoDa0StGVay_pEaTxELmNjUA_nHIlRwemSa1UOJrgnC_gw.odjLTm9ilBg-hMlH">recording of lecture (link)</a>

The passcode can be found on the <a target="_parent" href="https://csufullerton.instructure.com/courses/3127326/pages/video-lecture-keys">passcode page (link)</a>


