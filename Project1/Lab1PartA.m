%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

%Problem A.1

%Setting up the values for t and s
t = (-2:2);
s = (-2:0.01:2);

%Function of f(t) and e(s)
f = @(t) exp(-t).*cos(2*pi*t);
e = @(s) exp(-s).*cos(2*pi*s);

%Allows to separate graphs into multiple windows if more than 1 figure.
figure(1);

%Setting up the graph
subplot(211);
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
title('Figure 1.46');
grid;

subplot(212);
plot(s,e(s));
xlabel('s');
ylabel('e(s)');
title('Figure 1.47');
grid;

%Problem A.2
%Setting up the values for tt
tt = (-2:2);

%Function for g(tt)
g = @(tt) exp(-t);

%New Window for Problem A.2
figure(2);

subplot(211);
plot(tt,g(tt));
xlabel('tt');
ylabel('g(tt)');
title('Figure 1.48');
grid;

%Problem A.3
% When comparing the graphs of problem A.2 with figure 1.46 of problem A.1,
% It is observed that the graphs are very identical.