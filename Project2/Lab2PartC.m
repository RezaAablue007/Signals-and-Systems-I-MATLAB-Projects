%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem C.1

% Set up time interval and step size, along with u(t) step function.
t = (-1:0.001:5);
u = @(t) 1.0* (t>=0); 

h1 = @(t) (exp((1/5) .* t)).*(u(t)); % Equation for h1(t) function.

h2 = @(t) 4 .* (exp((-1/5) .* t)).*(u(t)); % Equation for h2(t) function.

h3 = @(t) 4 .* (exp((-1) .* t)).*(u(t)); % Equation for h3(t) function.

h4 = @(t) (exp((-1/5) .* t) - exp((-1).*t)).*(u(t)); % Equation for h4(t) function.

figure (1);

subplot(211);
plot(t,h1(t));
xlabel('t');
ylabel('h1(t)');
title('Graph for h1(t)');
grid;

subplot(212);
plot(t,h2(t));
xlabel('t');
ylabel('h2(t)');
title('Graph for h2(t)');
grid;

figure (2);

subplot(211);
plot(t,h3(t));
xlabel('t');
ylabel('h3(t)');
title('Graph for h3(t)');
grid;

subplot(212);
plot(t,h4(t));
xlabel('t');
ylabel('h4(t)');
title('Graph for h4(t)');
grid;

% Problem C.2
% For h1(t), the eigenvalue is 1/5.
% For h2(t), the eigenvalue is -1/5.
% For h3(t), the eigenvalue is -1.
% For h4(t), the eigenvalues are -1/5 and -1.

% Problem C.3 - Part 1
% h1(t) = e^(t/5)u(t)

figure(3) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) sin(5*t).*(u(t)-u(t-3)); % Assigned x(t) function.
h = @(t) exp(t/5).*(u(t)-u(t-20)); % h1(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = 0:dtau:20; % Time intervals and step size for tau.
ti = 0; tvec = 0:.1:20; % Time intervals and step size for tvec.
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

% Problem C.3 - Part 2
% h2(t) = 4e^(-t/5)u(t)

figure(4) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) sin(5*t).*(u(t)-u(t-3)); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) 4*exp(-t/5).*(u(t)-u(t-20)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = 0:dtau:20; % Time intervals and step size for tau.
ti = 0; tvec = 0:.1:20; % Time intervals and step size for tvec.
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

% Problem C.3 - Part 3
% h3(t) = 4e^(-t)u(t)

figure(5) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) sin(5*t).*(u(t)-u(t-3)); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) 4*exp(-t).*(u(t)-u(t-20)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = 0:dtau:20; % Time intervals and step size for tau.
ti = 0; tvec = 0:.1:20; % Time intervals and step size for tvec.
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

% Problem C.3 - Part 4
% h3(t) = 4(e^(-t/5) - e^(-t))u(t)

figure(6) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) sin(5*t).*(u(t)-u(t-3)); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) 4*(exp(-t/5) - exp(-t)).*(u(t)-u(t-20)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = 0:dtau:20; % Time intervals and step size for tau.
ti = 0; tvec = 0:.1:20; % Time intervals and step size for tvec.
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

% Problem C.3 Explanation: In this question, the convolutions for S2, 
% S3 and S4(t) do resemble the shape of the f(t)=sin(t) function at first,
% before the curves' shapes change dramatically. All three LTI systems 
% among S2, S3 and S4 look fairly similar to each other, with S2 and S3(t)
% having the same convolution graph. S4(t) has a similar shape to S2 and S3(t).