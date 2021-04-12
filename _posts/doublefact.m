function value = doublefact(n)
%USEAGE: value = doublefact(n)
%INPUTS: n -- an integer
%OUTPUT: value -- the value of the double factorial n!!
%DETAILED DESCRIPTION: I made a super cool double factorial function

% while loop way
value = 1;

while n > 0
  value = value*n;
  n = n - 2;
end

% for loop way
value = 1;
for k = [2-mod(n,2):2:n]
  value = value*k;
end

end


