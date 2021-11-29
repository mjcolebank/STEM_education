% Function defining the Huxley, 2-state crossbridge model
% MJC attempt 2
% function n = Huxley_2state(x,v,f1,g1,g2,h)
% 
% n=0;
% 
% phi = (f1+g1).*(h./2);
% F1  = f1./(f1+g1);
% 
% if x<0.0
%     n = F1.*(1.0-exp((g2.*x-phi)./v));
% elseif x<=h
%     n = F1.*(1.0-exp(((x./h).^2 - 1.0).*(phi./v)));
% end 
% 
% 
% end


% MJC attempt 1
function n = Huxley_2state(x,v,f1,g1,g2,h)

n=0;

phi = (f1+g1).*(h./2);
F1  = f1./(f1+g1);

if x<0.0
    n = F1.*(1.0-exp(-phi./v)).*exp(g2.*x./v);
elseif x<=h
    %     n = F1.*(1.0-exp(-phi./v)).*exp((x.^2.*phi)./(h.^2.*v));
    n = F1.*(1.0-exp(((x./h).^2 - 1.0).*(phi./v)));
end


end




%% OLD - from Keener & Sneyd
% function n = Huxley_2state(x,v,f1,g1,g2,h)
% 
% n=0;
% 
% phi = (f1+g1).*(h./2);
% F1  = f1./(f1+g1);
% G2  = g2./(f1+g1);
% 
% if x<0.0
%     n = F1.*(1.0-exp(-phi./v)).*exp((x.*G2.*phi)./(2.*h.*v));
% elseif x<h
%     n=F1.*(1.0-exp(((x./h).^2 - 1.0).*(phi./v)));
% end
% 
% 
% end