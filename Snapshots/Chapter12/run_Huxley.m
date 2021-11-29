% SCript that will plot the solution to the two-state Huxley formulation
% for crossbridge dynamics
clear; clc; close all;
%%
v = 1.20;%10.0;
h=0.1;
f1 = 13;
g1 = 3;
g2 = 3.919*(f1+g1);


N_x = 500;
x = linspace(-1.5.*h,1.*h,N_x);

n = zeros(N_x,1);

for i=1:N_x
   n(i) = Huxley_2state(x(i),v,f1,g1,g2,h);
end

figure(1); clf; hold on;
plot(x./h,n*100,'r','LineWidth',3);
plot(0.*x,linspace(0,100,N_x),'--k');
xlabel('x/h (dimensionless)');
ylabel('n (%)');
title(strcat('v = ',num2str(v),' (cm/s)'));
grid on;
set(gca,'FontSize',20);