%% Topic 1 Workshop Sheet, regression
%% load the data
% clear all % delete everything in workspace
% close all % close all figures
Fontsize=16; % make size of labels bigger in graphs

% load data in file
AA=dlmread('Tide gauge sea level rise data - Newlyn, Cornwall.txt');

x_all=AA(:,1); %split into x (data)
y_all=AA(:,2); %and y (height)

%% plot the data
figure
plot(x_all,y_all,'k+-'); hold on
set(gca,'Fontsize',Fontsize);
xlabel('Year','Fontsize',Fontsize);
ylabel('height (mm)','Fontsize',Fontsize);

%% Choose data range

%number of points of data
n_all=length(x_all);

%choose data range

% use this to take the full data range

% tstart=min(x_all);
% tend=max(x_all);

% examples of taking a smaller window 
tstart = 1910;
tend = 1920;

%take this range of data to use in the model
x=x_all(x_all > tstart & x_all <tend);
y=y_all(x_all > tstart & x_all <tend);
%% calculate the line of best fit

%number of points taken
n=length(x);
% regression formula
a= (sum(x.^2)*sum(y)-(sum(x)*sum(x.*y)))/( n*sum(x.^2)-(sum(x))^2);
b= (n*sum(x.*y)-(sum(x)*sum(y)))/( n*sum(x.^2)-(sum(x))^2);

XModel=linspace(min(x_all),max(x_all),100);
YModel=a+b*XModel;


%% plot the lines of best fit on top of the existing plot of data
hold all
h1=plot(XModel,YModel,'r-','Linewidth',2);

h2=plot([x(1) x(end)],[y(1) y(end)],'.','markersize',30);
h3=plot(mean(x),mean(y),'o','markersize',20);
h4=plot(mean(XModel),mean(YModel),'x','markersize',20);

legend([h1 h2 h3 h4],'Model','Points chosen','Data Mean','Model Mean','Location','best')
hold off
xlim([min(x_all) max(x_all)]);
title(sprintf('Model of Sea Level rise : a = %.1f b=%.1f',a,b))