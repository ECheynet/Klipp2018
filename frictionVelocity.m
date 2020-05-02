function [u_star] = frictionVelocity(u,v,w,varargin)
% [u_star] = frictionVelocity(u,v,w) computes the friction velocity
%
% Input
% u: [1 x N] vector: Along wind component (m/s)
% v: [1 x N] vector: Across wind component (m/s)
% w: [1 x N] vector: Vertical wind component (m/s)
% 
% Varargin: 'method' is either 'standard' or 'Klipp2018' for the
% alternative method. By default, the value is "standard".
%
% Output
% u_star: [1 x N] vector: friction velocity (m/s)
%
% Author. E. Cheynet - University of Stavanger - last modified 10/02/2018


%% Inputparseer
p = inputParser();
p.CaseSensitive = false;
p.addOptional('method','standard');
p.parse(varargin{:});
%%%%%%%%%%%%%%%%%%%%%%%%%%
method = p.Results.method ;

%%



if strcmpi(method,'standard'),
    
    u = detrend(u);
    v = detrend(v);
    w = detrend(w);
    if license('test', 'statistics_toolbox'),
        uw = nanmean(u(:)'.*w(:)').^2;
        vw = nanmean(v(:)'.*w(:)').^2;
    else
        uw = mean(u(:)'.*w(:)').^2;
        vw = mean(v(:)'.*w(:)').^2;
    end
    u_star = (uw+vw).^(1/4);
    
elseif strcmpi(method,'Klipp2018')
    
    [R] = reynoldsStressTensor(u,v,w);
    [V,eigVal] = svd(R);
    if license('test', 'statistics_toolbox'),
        A = [nanmean(u), nanmean(v), nanmean(w)];
    else
        A = [mean(u),mean(v), mean(w)];
    end
    B = V(:,3);    
    gamma1 = acosd(dot(A,B)./(norm(A,2).*norm(B,2)));
    beta1 = 90-gamma1;
    if beta1>90, beta1 = 180-beta; end
    u_star = sqrt(abs([eigVal(1,1)-eigVal(3,3)].*sind(beta1).*cosd(beta1)));
    
else
    error('the variable ''method'' is undefined');
end

u_star(isinf(u_star))=NaN;
u_star(u_star==0)=NaN;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function [R] = reynoldsStressTensor(u,v,w)
        %         [R] = reynoldsStressTensor(u,v,w) computes the Reynolds stress
        %         matrix
        u = detrend(u);
        v = detrend(v);
        w = detrend(w);
        
        if license('test', 'statistics_toolbox'),
            
            R(1,1) = nanvar(u);
            R(2,2) = nanvar(v);
            R(3,3) = nanvar(w);
            
            R(1,2) = nanmean(u(:)'.*v(:)');
            R(2,3) = nanmean(v(:)'.*w(:)');
            R(1,3) = nanmean(u(:)'.*w(:)');
            
        else
            R(1,1) = var(u);
            R(2,2) = var(v);
            R(3,3) = var(w);
            
            R(1,2) = mean(u(:)'.*v(:)');
            R(2,3) = mean(v(:)'.*w(:)');
            R(1,3) = mean(u(:)'.*w(:)');
        end
        
        R(2,1)=R(1,2);
        R(3,1)=R(1,3);
        R(3,2)=R(2,3);
        
    end
end

