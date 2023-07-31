%Rendel Abrasia, Reza Aablue
%500942743,  500966944
%Section 4

%Problem B.1

%Setting up the values for t and p
t = (-1:0.01:2);
p = @(t) 1.0.*((t>=0)&(t<1));

%Allows to separate graphs into multiple windows if more than 1 figure.
figure(1);

%Setting up the graph
subplot(211);
plot(t,p(t));
xlabel('t');
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -.1 1.1]);
title('Figure 1.50: p(t) = u(t)−u(t −1) over (−1 ≤ t ≤ 2)');
grid;

%Problem B.2

%Functions of r(t) and n(t) 
r = @(t)t.*p(t);
n = @(t)r(t) + r(-t+2);

%Second window for Problem B.2
figure(2);

%Setting up the graphs
subplot(211);
plot(t,r(t));
xlabel('t');
ylabel('r(t) = tp(t)');
title('Figure 1.51: r(t) = tp(t) over (−1 ≤ t ≤ 2) ');
axis([-1 2 -.1 1.1]);
grid;

subplot(212);
plot(t,n(t));
xlabel('t');
ylabel('n(t)= r(t) + r(-t+2)');
title('Figure 1.52: n(t) = r(t) + r(-t+2) over (−1 ≤ t ≤ 2)');
axis([-1 2 -.1 1.1]);
grid;

%Problem B.3

%A new range of values for t to satisfy the graph
t = (-1:0.01:5);

%Functions for n1(t) and n2(t)
n1 = @(t)n(0.5*t);
n2 = @(t)n1(t+0.5);

%New window for Problem B.3
figure(3)

%Setting up the graphs
subplot(211);
plot(t,n1(t));
xlabel('t');
ylabel('n1(t)= n(0.5t)');
title('Figure 1.53: n1(t)= n(0.5t) over (−1 ≤ t ≤ 5)');
axis([-1 5 -.1 1.1]);
grid;

subplot(212);
plot(t,n2(t));
xlabel('t');
ylabel('n2(t)= n(1t+0.5)');
title('Figure 1.54: n2(t)= n1(t+0.5) over (−1 ≤ t ≤ 5)');
axis([-1 5 -.1 1.1]);
grid;

%Problem B.4

%Functions for n3(t) and n4(t)
n3 = @(t)n(t+0.25);
n4 = @(t)n3(0.5*t);

%New window for Problem B.4
figure(4)

%Setting up the graphs
subplot(211);
plot(t,n3(t));
xlabel('t');
ylabel('n3(t)= n(t+0.25)');
title('Figure 1.55: n3(t)= n(t+0.25) over (−1 ≤ t ≤ 5)');
axis([-1 5 -.1 1.1]);
grid;

subplot(212);
plot(t,n4(t));
xlabel('t');
ylabel('n4(t)= n3(0.5t)');
title('Figure 1.56: n4(t)= n3(0.5t) over (−1 ≤ t ≤ 5)');
axis([-1 5 -.1 1.1]);
grid;

%Problem B.5

% When comparing the graphs of n2(t) and n4(t) from Figure 1.54 and 1.56,
% It is observed that the graphs are the same.
% A reason why it is the same is due to the methods used in class.
% Two methods are learned which is doing the time shift then time scale which is method 1 and
% time scale then time shift which is method 2. For n2, we used method 1
% to do the timescale first then timeshift. It is being expanded by 2 due
% to the timescale of 0.5. Then it is being shifted to 0.5 units to the
% left thus n2 starting at x-axis of [-0.5,3.5]. For n4, we used method 2
% to show the graph function moving to the left by 0.25 then being expanded
% by 2 due to its timescale of 0.5. Therefore, both functions are the same.