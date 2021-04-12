function B = transp(A)
%USEAGE: B = transp(A)
%INPUTS: A -- some matrix
%OUTPUT: B -- the transpose of A
%DETAILED DESCRIPTION: the transpose of a matrix is already implemented in
%MATLAB using the transpose(A) function, but I made my own to practice
%nested for loops.

[m,n] = size(A);

B = zeros(n,m);

for j = 1:n
  for k = 1:m
    B(j,k) = A(k,j);
  end
end


end

