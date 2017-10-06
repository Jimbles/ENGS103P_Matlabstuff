%%
%% Matlab code snippet used for
%% Topic 1 Workshop Sheet, Question 2
%%

% clear all % delete everything in workspace
% close all % close all figures
Fontsize=16; % make size of lables bigger in graphs

Numberofdays=12; % how many days calculated
s=zeros(1,Numberofdays); % initialise 
N=1000; %population
k=0.001; %probability of new infection 
s_0 = 5; %initial number of infections
rip = 0.01; % number of deaths related to disease

Deltas_0=k*(N-s_0)*s_0; %number of new infections for first time step
s(1)=s(1)+Deltas_0; %first time point s(1) already zero 

%run through each day - note using i as counter is bad practice!
for i=1:Numberofdays
  Deltas_i=k*(N-s(i))*s(i); % calculate change from current state
  
  s_new=s(i)+Deltas_i; %give future state of system = current state + change 
  
  if s_new >= N
      s_new = N;
  end
  
  if s_new < 0
      s_new =0;
  end
  
  s(i+1)=s_new;
  
  N = N-s_new*(rip);
  
end

%%
%plot the results
figure
plot(s,'ko-');
grid on
set(gca,'Fontsize',Fontsize); %makes all fonts the same bigger size
xlabel('Day after infection','Fontsize',Fontsize);
ylabel('Number of sick people','Fontsize',Fontsize);
