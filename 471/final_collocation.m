% Uses Collocation method to approximate solutions to BVP's
% Input:
%	range - Range of values
%	left - value at left
%	right - value at right
%	f - function to evaluate
%	n - number
% Output:
% 	coeffs - coefficients of interpolating function
function coeffs = final_collocation(range, left, right, f, n)
g = zeros(n, 1);
g(1) = left;
g(n) = right;


A = zeros(n, n);
A(1, 1) = 1;
for i = 1:n
	A(n, i) = range(2) ^ (i-1); % does this need to be something else?
end

for i = 2:n-1
	ti = range(1) + ((i - 1) / (n - 1))*(range(2) - range(1));
	for j = 1:n
		A(i, j) = f(ti, j);
	end
end
coeffs = A\g;


