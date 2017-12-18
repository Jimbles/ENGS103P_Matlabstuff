%% Example 1
%improved euler

% Solve y'(t)=-2y(t) with y0=3, midpoint method
y0 = 3;                  % Initial Condition
h=0.2;                   % Time step
t = 0:h:2;               % t goes from 0 to 2 seconds.
yexact = 3*exp(-2*t);     % Exact solution (in general we won't know this
ystar = zeros(size(t));  % Preallocate array (good coding practice)

ystar(1) = y0;           % Initial condition gives solution at t=0.
for i=1:(length(t)-1)
  k1 = -2*ystar(i);             % Approx for y gives approx for deriv
  y1 = ystar(i)+k1*h/2;         % Intermediate value
  k2 = -2*y1          ;          % Approx deriv at intermediate value.
  ystar(i+1) = ystar(i) + k2*h; % Approximate solution at next value of y
end
plot(t,yexact,t,ystar);
legend('Exact','Approximate');



%%

%runge kutta 4th



% Solve y'(t)=-2y(t) with y0=3, 4th order Runge Kutta
y0 = 3;                  % Initial Condition
h=0.2;                   % Time step
t = 0:h:2;               % t goes from 0 to 2 seconds.
tt=0:0.001:2;
yexact = 3*exp(-2*tt);     % Exact solution (in general we won't know this
ystar = zeros(size(t));  % Preallocate array (good coding practice)

ystar(1) = y0;           % Initial condition gives solution at t=0.
for i=1:(length(t)-1)
  
  k1 = -2*ystar(i)  % Approx for y gives approx for deriv
  y1 = ystar(i)+k1*h/2;      % Intermediate value (using k1)
  
  k2 = -2*y1        % Approx deriv at intermediate value.
  y2 = ystar(i)+k2*h/2;      % Intermediate value (using k2)
  
  k3 = -2*y2        % Another approx deriv at intermediate value.
  y3 = ystar(i)+k3*h;        % Endpoint value (using k3)
  
  k4 = -2*y3        % Approx deriv at endpoint value.
  
  ystar(i+1) = ystar(i) + (k1+2*k2+2*k3+k4)*h/6; % Approx soln
end
figure
hold on

plot(tt,yexact)
plot(t,ystar,'o-');
legend('Exact','Approximate');


%%

%% Example 3
% Solve y'(t)=y(t)(1-2t) with y0=1
y0 = 1;                  % Initial Condition
h=0.6;                   % Time step
t = 0:h:2;               % t goes from 0 to 2 seconds.
tt=0:0.001:2;
% Exact solution, hard to find in this case (in general we won't have it)
yexact = exp(tt-tt.^2);
ystar = zeros(size(t));  % Preallocate array (good coding practice)

ystar(1) = y0;           % Initial condition gives solution at t=0.
for i=1:(length(t)-1)
  k1 = ystar(i)*(1-2*t(i));     % Approx for y gives approx for deriv
  y1 = ystar(i)+k1*h/2;         % Intermediate value
  k2 = y1*(1-2*(t(i)+h/2));     % Approx deriv at intermediate value.
  ystar(i+1) = ystar(i) + k2*h; % Approximate solution at next value of y
end
hold on
plot(tt,yexact),
plot(t,ystar,'o-');
legend('Exact','Approximate');
