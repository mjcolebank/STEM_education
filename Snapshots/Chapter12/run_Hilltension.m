% Script that will run the Hill model for muscle tension changes due to an
% instantaneous change in length
clear; clc; close all;
%% Run the model without the differential equation

vND = @(T,k) (1.0-T)./(1+T./k);
TD  = @(a,b,T0,v) (b.*T0-a.*v)./(v+b);

P1 = @(T,k) T.*vND(T,k);

vspace = linspace(0,1,100);
Tspace = linspace(0,1.0,100);

figure(1); clf; hold on;
yyaxis('left');
plot(vspace,vND(Tspace,0.25),'b','LineWidth',3);
grid on;
ylabel('Force (T/T_0)');
xlabel('Velocity (V/V_0)');

yyaxis('right');
plot(vspace,P1(Tspace,0.25),'r','LineWidth',3);
grid on;
ylabel('Power (Tv/T_0v_0)');
set(gca,'FontSize',20)


%% Try the differential equation?


