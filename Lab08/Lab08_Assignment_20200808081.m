clear all;
close all;
clc;

pkg load statistics

%Load Dataset
load grades.mat

% Assign Each course to a different variable
course1=grades(:,1);
course2=grades(:,2);
course3=grades(:,3);
course4=grades(:,4);

% set nr of bins as a variable
nrOfBins=15;
% set ylim as a variable
ylims=[0 0.3];

% Create 2 by 2 figure 
figure

% Plot histogram and pdf for Course 1
subplot(2,2,1)

[nn1,xx1] = hist(course1,nrOfBins)

nn1=nn1./sum(nn1)

bar(xx1,nn1,'k')
ylim(ylims);

xlabel('Grades')
ylabel('Probability')
title('Course 1')

course1_pdf=normpdf(xx1,mean(course1),std(course1))
course1_pdf=course1_pdf./sum(course1_pdf)

hold on

plot(xx1,course1_pdf,'r','linewidth',1)
legend('Histogram','PDF')


% Plot histogram and pdf for Course 2
subplot(2,2,2)

[nn2,xx2] = hist(course2,nrOfBins)

nn2=nn2./sum(nn2)

bar(xx2,nn2,'k')
ylim(ylims);

xlabel('Grades')
ylabel('Probability')
title('Course 2')

course2_pdf=normpdf(xx2,mean(course2),std(course2))
course2_pdf=course2_pdf./sum(course2_pdf)

hold on

plot(xx2,course2_pdf,'r','linewidth',1)
legend('Histogram','PDF')

% Plot histogram and pdf for Course 3
subplot(2,2,3)

[nn3,xx3] = hist(course3,nrOfBins)

nn3=nn3./sum(nn3)

bar(xx3,nn3,'k')
ylim(ylims);

xlabel('Grades')
ylabel('Probability')
title('Course 3')

course3_pdf=normpdf(xx3,mean(course3),std(course3))
course3_pdf=course3_pdf./sum(course3_pdf)

hold on

plot(xx3,course3_pdf,'r','linewidth',1)
legend('Histogram','PDF')

% Plot histogram and pdf for Course 4
subplot(2,2,4)

[nn4,xx4] = hist(course4,nrOfBins)

nn4=nn4./sum(nn4)

bar(xx4,nn4,'k')
ylim(ylims);

xlabel('Grades')
ylabel('Probability')
title('Course 4')

course4_pdf=normpdf(xx4,mean(course4),std(course4))
course4_pdf=course4_pdf./sum(course4_pdf)

hold on

plot(xx4,course4_pdf,'r','linewidth',1)
legend('Histogram','PDF')
