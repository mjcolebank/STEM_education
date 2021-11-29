% Plot hill function Calcium
clear; clc; close all;
%%

FCa = @(Fmax,Ca,n,K) Fmax.*(Ca.^n)./(K+Ca.^n);
FCa2 = @(Fmax,Ca,n,Ca50) Fmax./(1+10.^(n .* (Ca50-Ca)));
Ca_space = linspace(1,100,500)';
%% Define parameters based on work of Kentish et al. 1986

Fvals = [86.3 75.0 69.2 63.2 55.1 46.2];
Ca50  = [3.77 4.36 5.38 6.76 7.71 9.53];
nvals = [4.54 4.50 3.91 3.85 2.82 4.35];
Kconv = 10.^(-Ca50.*nvals);

figure; hold on;
plot(Ca_space,FCa(Fvals,Ca_space,nvals,Kconv));

figure; hold on;
plot(Ca_space,FCa2(Fvals,Ca_space,nvals,Ca50));