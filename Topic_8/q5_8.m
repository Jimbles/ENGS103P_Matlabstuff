%% question 5

h=0.1; %step size
N=60; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=1; %initial conditions y(x=0)=1

%modifyed eulers iterations for equation y'=y
for iStep=1:N-1
    ydashest1=y(iStep); % current value y'=y
    yest=y(iStep)+h*ydashest1; %estimate value first
    ydashest2=yest; %y' using yest y'=yest
    y(iStep+1)=y(iStep)+0.5*h*(ydashest1+ydashest2); % next value taking average of both estimates
end

yactual=exp(x);

figure;
hold all
plot(x,y,'-x')
plot(x,yactual);
hold off


%% question 6

h=0.1; %step size
N=6; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=0.2; %initial conditions y(x=0)=.2

%modifyed eulers iterations for equation y'=y-y^2
for iStep=1:N-1
    ydashest1=y(iStep)-y(iStep)^2; % current value y'=y-y^2
    yest=y(iStep)+h*ydashest1; %estimate value first
    ydashest2=yest-yest^2; %y' using yest y'=yest-yest^2
    y(iStep+1)=y(iStep)+0.5*h*(ydashest1+ydashest2); % next value taking average of both estimates
end
%% question 7

h=0.1; %step size
N=6; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=1; %initial conditions y(x=0)=1

%modifyed eulers iterations for equation y'=xy^2
for iStep=1:N-1
    ydashest1=x(iStep)*(y(iStep)^2); % current value y'=xy^2
    yest=y(iStep)+h*ydashest1; %estimate value first
    ydashest2=x(iStep+1)*(yest^2); %y' using yest y'=xyest^2 NOTE X(n+1)!!!!
    y(iStep+1)=y(iStep)+0.5*h*(ydashest1+ydashest2); % next value taking average of both estimates
end
%% question 8

h=0.1; %step size
N=600; %number of steps

x=0:h:h*(N-1); %x values start at 0

y=zeros(N,1); %initialise

y(1)=0; %initial conditions y(x=0)=0

%modifyed eulers iterations for equation y'=1-0.25y^2
for iStep=1:N-1
    ydashest1=1-0.25*(y(iStep)^2); % current value y'=xy^2
    yest=y(iStep)+h*ydashest1; %estimate value first
    ydashest2=1-0.25*(yest^2); %y' using yest y'=xyest^2 NOTE X(n+1)!!!!
    y(iStep+1)=y(iStep)+0.5*h*(ydashest1+ydashest2); % next value taking average of both estimates
end


figure;
plot(x,y)

