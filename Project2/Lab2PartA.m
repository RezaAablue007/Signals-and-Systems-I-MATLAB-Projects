%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem A.1

% Setting component values.
R = [1e4, 1e4, 1e4]; 
C = [1e-6, 1e-6];
% Determining the coefficients for characteristic equation.
A1 = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
% Determining characteristic equation's roots.
lambda = roots(A1);

% The poly command takes the matrix of the roots and return the original
% polynomial equation.
poly(lambda);

% Problem A.2

% Set up time interval and step size, along with u(t) step function.
t = (0:0.0005:0.1);
u = @(t) 1.0* (t>=0); 

h = @(t) (C(1).* exp(lambda(1).* t) + C(2).* exp(lambda(2).*t)).*(u(t)); 
% Case 1 of the 2nd order DE solution applies for our h(t) function.

plot(t,h(t)) % Plots h(t) function.

% Setting up x and y-labels and title for graph.
xlabel('t');
ylabel('h(t)');
title('Impulse Response of the system in problem A');
grid;