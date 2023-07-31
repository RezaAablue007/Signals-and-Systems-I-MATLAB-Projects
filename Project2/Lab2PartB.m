%Rendel Abrasia, Reza Aablue
%500942743, 500966944
%Section 4

% Problem B.1
figure(1) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) 1.5*sin(pi*t).*(u(t)-u(t-1)); % Assigned x(t) function.
h = @(t) 1.5*(u(t)-u(t-1.5))-u(t-2)+u(t-2.5); % h(t).
dtau = 0.005; tau = -1:dtau:4; % Time intervals and step size for tau.
ti = 0; tvec = -.25:.1:2.25; % Time intervals and step size for tvec.
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

% Problem B.2
% x(t) = u(t) - u(t-2)
% h(t) = (t+1)(u(t+1)-u(t))
% y(t) = x(t)*h(t) (Convolution)

figure(2) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) u(t)-u(t-2); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) (t+1).*(u(t+1)-u(t)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = -1:dtau:4; % Time intervals and step size for tau.
ti = 0; tvec = -1.0:.1:2.25; % Time intervals and step size for tvec.
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

% Problem B.3 - part 1 (Assume A=1, B=2)
% x1(t) = x(t) = u(t-4)-u(t-6)
% x2(t) = h(t) = (2)(u(t+5)-u(t+4))
% y(t) = x(t)*h(t)

figure(3) % Create figure window and make visible on screen
A = 1.0; B = 2.0; % Assumptions for A and B values.
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) A*(u(t-4)-u(t-6)); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) B*(u(t+5)-u(t+4)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = -6:dtau:2.5; % Time intervals and step size for tau.
ti = 0; tvec = -5.0:.1:5; % Time intervals and step size for tvec.
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

% Problem B.3 - part 2 (Assume A=1, B=2)
% x1(t) = x(t) = u(t-3)-u(t-5)
% x2(t) = h(t) = (2)(u(t+5)-u(t+3))
% y(t) = x(t)*h(t)

figure(4) % Create figure window and make visible on screen
A = 1.0; B = 2.0; % Assumptions for A and B values.
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) A*(u(t-3)-u(t-5)); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) B*(u(t+5)-u(t+3)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = -6:dtau:2.5; % Time intervals and step size for tau.
ti = 0; tvec = -5.0:.1:5; % Time intervals and step size for tvec.
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
axis([tau(1) tau(end) -1.0 4.0]); grid;
drawnow;
end

% Problem B.3 - part 3
% x1(t) = x(t) = e^t(u(t+2)-u(t))
% x2(t) = h(t) = e^(-2t)(u(t)-u(t-1))
% y(t) = x(t)*h(t)

figure(5) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0); % u(t) step function.
x = @(t) exp(t).*(u(t+2)-u(t)); % Assigned x(t) function (Figure 2.4-28 (a)).
h = @(t) exp(-2*t).*(u(t)-u(t-1)); % h(t) = (t+1)(u(t+1)-u(t)).
dtau = 0.005; tau = -6:dtau:2.5; % Time intervals and step size for tau.
ti = 0; tvec = -5.0:.1:5; % Time intervals and step size for tvec.
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