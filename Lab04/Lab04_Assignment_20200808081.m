% CSE 122 Statistics for Engineering
% Lab04 Assignment

%%
% Student No  : 20200808081
% Name        : Emre Eldemir
%%

%Load Data
clear
clc
load count.dat

# Plot Location 1
[n,p] = size(count)
t=1:n;
Loc1=count(:,1);
Loc2=count(:,2);
Loc3=count(:,3);

figure

% Write your code below for Location 1

subplot(3,1,1)

plot(t,Loc1,"color","k")
xlabel('Time')
ylabel('Vehicle count per time')
title('Daily Traffic Data for Location 1')
hold on

[maxLoc1,ImaxLoc1]=max(Loc1)
plot(ImaxLoc1,maxLoc1,'o','color','g')

[minLoc1,IminLoc1]=min(Loc1)
plot(IminLoc1,minLoc1,'o','color','r')

meanLoc1=mean(Loc1)
line([1 n],[meanLoc1 meanLoc1],"linestyle","-.","color","b")

legend("Count","Max","Min","Mean","Location","Northwest")


% Write your code below for Location 2

subplot(3,1,2)

plot(t,Loc2,"color","k")
xlabel('Time')
ylabel('Vehicle count per time')
title('Daily Traffic Data for Location 2')
hold on

[maxLoc2,ImaxLoc2]=max(Loc2)
plot(ImaxLoc2,maxLoc2,'o','color','g')

[minLoc2,IminLoc2]=min(Loc2)
plot(IminLoc2,minLoc2,'o','color','r')

meanLoc2=mean(Loc2)
line([1 n],[meanLoc2 meanLoc2],"linestyle","-.","color","b")

legend("Count","Max","Min","Mean","Location","Northwest")


% Write your code below for Location 3

subplot(3,1,3)

plot(t,Loc3,"color","k")
xlabel('Time')
ylabel('Vehicle count per time')
title('Daily Traffic Data for Location 3')
hold on

[maxLoc3,ImaxLoc3]=max(Loc3)
plot(ImaxLoc3,maxLoc3,'o','color','g')

[minLoc3,IminLoc3]=min(Loc3)
plot(IminLoc3,minLoc3,'o','color','r')

meanLoc3=mean(Loc3)
line([1 n],[meanLoc3 meanLoc3],"linestyle","-.","color","b")

legend("Count","Max","Min","Mean","Location","Northwest")

