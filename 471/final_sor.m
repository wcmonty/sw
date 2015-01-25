% Inputs:	full or sparse matrix a
%			r.h.s, b
%			number of iterations, k
%			omega
% Output: solution x
function [x, j, backwardError] = final_sor (a, b, k, omega, tol, solution)
n = length(b);			% find n
D = diag(diag(a));		% extract diagonal of a
U = triu(a)-D;			% u is the upper triangle
L = tril(a)-D;			% l is the lower triangle

x = zeros(n, 1);		% initialize vector x
WLD = inv(omega*L + D);
answer = ones(n, 1);
n2 = n /2;

for i = 1:n2
	answer(i * 2) = answer(i * 2) *  -1;
end

for j= 1:k				% loop for  iteration
	x = WLD * (omega * b + ((1-omega)*D*x - omega*U*x));
	if (norm(solution - x, inf) < tol)
		break;
	end
end						% End of Successive Over Relaxation	

backwardError = norm(a * x - b, inf); 
