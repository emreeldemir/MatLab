clear
clc
close all

%Load Dataset
load grades.mat

% Assign Each course to a different variable
course1=grades(:,1);
course2=grades(:,2);
course3=grades(:,3);
course4=grades(:,4);

% set nr of bins as a variable
nrOfBins=15;

% Create 2 by 2 figure 
figure

% Draw subplots
% Plot histogram for Course 1
subplot(2,2,1)

[nn1,xx1] = hist(course1,nrOfBins)
bar(xx1,nn1,'k')
ylim([0 25])

xlabel('Grades')
ylabel('Nr Of Students')
title('Grade Histogram for Course 1')
hold on


% Plot histogram for Course 2
subplot(2,2,2)

[nn2,xx2] = hist(course2,nrOfBins)
bar(xx2,nn2,'b')
ylim([0 25])

xlabel('Grades')
ylabel('Nr Of Students')
title('Grade Histogram for Course 2')
hold on


% Plot histogram for Course 3
subplot(2,2,3)

[nn3,xx3] = hist(course3,nrOfBins)
bar(xx3,nn3,'c')
ylim([0 25])

xlabel('Grades')
ylabel('Nr Of Students')
title('Grade Histogram for Course 3')
hold on


% Plot histogram for Course 4
subplot(2,2,4)

[nn4,xx4] = hist(course4,nrOfBins)
bar(xx4,nn4,'m')
ylim([0 25])

xlabel('Grades')
ylabel('Nr Of Students')
title('Grade Histogram for Course 4')
hold on

