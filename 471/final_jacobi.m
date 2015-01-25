% Jacobi Method
% Inputs:	full or sparse matrix a
%			b r.h.s 
%			k number of Jacobi iterations
%			tol tolerance
% 			solution vector of the correct solution
% Output: solution x
function [x, j, backwardError] = jacobi (a, b, k, tol, solution)
n = length(b);		% find n
d = diag(a);		% extract diagonal of a
r = a-diag(d);		% r is the remainder
x = zeros(n, 1);		% initialize vector x

for j= 1:k			% loop for Jacobi iteration
	x = (b - r*x)./d;
	if (norm((x - solution), inf) < tol) 
		break;
	end
end					% End of Jacobi iteration loop

backwardError = norm((a * x) - b, inf);

