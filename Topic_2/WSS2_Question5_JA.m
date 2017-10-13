%%
%% Matlab code snippet used for
%% Topic 2 Workshop Sheet, Question 5
%%

clear all
close all
Fontsize=16;


M=0.1; % kg
k=10; %N/m
c=0.2; % kg/(m)
%this function is useful as we can say how many elements we want
t=linspace(0,4,1000);
%creating the array like this means its not obvious how many it is, and
%thus its easy to make them too small or gigantic
% t=0:0.1:4; 

%we dont know x(0), so we plot the ratio of x/x0 instead. This is the same
%as setting x(0) to 1, as changing x(0) does not change the shape of the
%response, it just scales it


exp_decay=exp(-(c/(2*M)*t));
cos_wave=cos( (k/M-(c^2/(4*M^2)))^0.5*t);

xoverx_0 = exp(-(c/(2*M)*t)).*cos( (k/M-(c^2/(4*M^2)))^0.5*t);

hold all
plot(t,xoverx_0,'-','linewidth',2)
plot(t,exp_decay,':','linewidth',1.5);
plot(t,cos_wave,'--','linewidth',1.5)
hold off

grid on
set(gca,'Fontsize',Fontsize);
xlabel('t (s) ','Fontsize',Fontsize);
ylabel('x/x_0','Fontsize',Fontsize);