function f = myfunc(x)
%USEAGE: f = myfunc(x)
%INPUTS: x -- some real value
%OUTPUT: f -- value of f(x) at x
%DETAILED DESCRIPTION: this is some random function for practice!

if x < 0
  y = x;
elseif x >= 0 && x <= 2*pi
  y = x*sin(x);
else
  y = 3;
end

f = y;

% NOE's version:

if x < 0
    y = x;
end
if x >= 0 && x <= 2*pi
    y = x*sin(x);
end
if(x > 2*pi)
  y = 3;
end



end

