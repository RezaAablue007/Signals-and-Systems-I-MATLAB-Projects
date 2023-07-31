%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem C.1
t = (-2:0.01:2); % Time intervals and step sizes.

f = @(t) exp(-2.*t) .* cos(4*pi*t); % Create function f(t).

u = @(t) 1.0 .* (t>=0); % Create unit step function, u(t).

axis([-2 2 -1 1]); % Creating axis boundaries.



g = @(t) f(t).*u(t); % Create g(t) = f(t) * u(t).

subplot (211);

plot (t, g(t)); % Plotting g(t).

xlabel ("time (seconds)"); % Label for x-axis.
ylabel ("Y-values ,g(t)"); % Label for y-axis.

grid(); % Set up grid lines.

% Problem C.2
s = @(t) g(t+1);

subplot (212);

plot(t, s(t));

xlabel ("time (seconds)"); % Label for x-axis.

ylabel ("Y-values ,s(t)"); % Label for y-axis.

grid();

% Problem C.3

matrix = zeros (401, 4); % Create matrix s(t).
s = (0:0.01:4); % Time intervals and step sizes.

figure (2);

for a = 1:2:7  % using alpha values 1, 3, 5 and 7.
    sa = @(t) exp (-2) .* exp(-a.*t) .* cos (4*pi*t) .* u(t); % Create function sa(t) for each alpha value.
    plot (s, sa(s));
    xlabel ("time (seconds)"); % Label for x-axis.
    ylabel ("Y-values, sa(t)"); % Label for y-axis.
    
    hold on; % Retains current plot and axis properties.
    
end

legend ('a=1', 'a=3', 'a=5', 'a=7'); % Legend for each value of alpha.

hold off; % Reset axis properties to default.

% Another approach to graph sa(s) is by plotting the points for sa(s) for
% one alpha value at a time. It is less efficient but a more
% straightforward method. The value of alpha is subsituted into the
% function 4 times separately and 4 different plot() commands are used.

% Problem C.4
% The size of the matrix s(t) in problem C.3 is  401 x 4 => 1604. Matrix
% s(t) has 1604 elements.
