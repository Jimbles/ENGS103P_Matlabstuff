%% question 1

h=0.001; %step size
N=6000; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=1; %initial conditions y(x=0)=1

%eulers iterations for equation y'=y
for iStep=1:N-1
    ydash(iStep)=y(iStep); % current value y'=y
    y(iStep+1)=y(iStep)+h*ydash(iStep); % next value
end

%analytical solution
yactual=exp(x);

figure;
hold all
plot(x,y,'-x')
plot(x,yactual);
hold off
xlabel('x')
ylabel('y')
legend('Euler','Actual')
title(['Step size ' num2str(h)]);




%% question 2

h=0.01; %step size
N=6; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=1; %initial conditions y(x=0)=1

%eulers iterations for equation y'=y
for iStep=1:N-1
    ydash=y(iStep); % current value y'=y
    y(iStep+1)=y(iStep)+h*ydash; % next value
end

%analytical solution
yactual=exp(x);

figure;
hold all
plot(x,y,'-x')
plot(x,yactual);
hold off


%% question 3

h=0.1; %step size
N=6; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=0; %initial conditions y(x=0)=0

%eulers iterations for equation y'=(y-x)^2
for iStep=1:N-1
    ydash=(y(iStep)-x(iStep))^2; % current value y'=(y-x)^2
    y(iStep+1)=y(iStep)+h*ydash; % next value
end

figure;
hold all
plot(x,y,'-x')
% plot(x,yactual);
hold off

%% question 4

h=0.1; %step size
N=6; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise
ydash=y;
hydash=y;

y(1)=0; %initial conditions y(x=0)=0

%eulers iterations for equation y'=(y+x)^2
for iStep=1:N-1
    ydash(iStep)=(y(iStep)+x(iStep))^2; % current value y'=(y+x)^2
    hydash(iStep)=+h*ydash(iStep); 
    y(iStep+1)=y(iStep)+ hydash(iStep);% next value
end

figure;
hold all
plot(x,y,'-x')
% plot(x,yactual);
hold off
