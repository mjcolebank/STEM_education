% Function for the hill model

function dT = hill_model(T,t,pars)

alpha = pars(1);
a     = pars(2);
b     = pars(3);
T0    = pars(4);
t0    = pars(5);

if t<=t0
    dT = 0;
else
    dT = alpha.*(b.*(T0-T))./(T+a);
end


end