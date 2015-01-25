% Fourth order Runga Kutta Method for IVP
% Inputs:
%	inter - Interval
%	y0 - Initial value
%	n - number of steps
%	f - function
% Outputs:
% 	t - Time steps
%	w - Estimates of f(t)
function [t, w] = final_runga_kutta(inter, y0, n, f)
t(1) = inter(1);
w(1) = y0;
h = (inter(2) - inter(1)) / n;
h2 = h / 2;

for i = 1:n
	s1 = f(t(i), w(i));
	s2 = f(t(i) + h2, w(i) + h2 * s1);
	s3 = f(t(i) + h2, w(i) + h2 * s2);
	s4 = f(t(i) + h, w(i) + h * s3);
	w(i + 1) = w(i) + (h / 6) * (s1 + 2*s2 + 2*s3 + s4);
	t(i + 1) = t(i) + h;
end
