clear all;
syms t;
syms x;
%t = 0.01;
m = 20.4;
g = 9.81;
d = 7900;
F = 500;
r = 1.5;
r2 = 0.25;
mr = pi * r^2 * t * d;
mr2 = pi * r2^2 * t * d;

% For Y
%----------------------------
%Fg = (mr * g - mr2 * g) + 1000;
%Rg = 500 + 500 + 1000 + (mr * g - mr2 * g);
%My = Fg * 1.5 + 500 * 3 - Rg * 1.25;

Fg = 1000;
Rg = 2000;
My = 500;

% For x < 1.25m
v1 = 500;

Mx = v1 * x;

% For 1.25m < x < 1.5m
v2 = Rg - 500;
Mx2 = (Rg * 1.25 + My) * -1 + v2 * x;

% For 1.5m < x < 3m
v3 = 500;
Mx3 = (Rg * 1.25 + My - Fg * 1.5) - v3 * x;



%y = piecewise((x > 0) & (x < 1.25), Mx, (x > 1.25) & (x < 1.5), Mx2, (x > 1.5) & (x < 3), Mx3);

%[min, max] = minmax(y, [0, 3]);

%fplot(y)

eq = 2 * sqrt((10890000/t^4)+(3240000/t^2)) == 294740000 / 4;
eqn = (1/(115020000))*sqrt((10890000/t^4)+(3240000/t^2)) + (3300/t^2) * (1/394720000) == 1/4;
Y = solve(eq, t);
x = double(Y);