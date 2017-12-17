function demo()
clear all;
%% initialize variables
global dim;
global maxs;
global maxf;

dim = 10;
N = 1000;

n = 2;
maxs = 0.08;     % max speed
maxf = 0.01;    % max force


%% initialize krill

P = dim * rand(n,2);  % position vector
V = maxs * rand(n,2); % velocity vector

%% initialize grahics
close all;
config(dim);

h = scatter([],[]);
i = scatter([],[]);
j = quiver([],[],[],[],0);
xlabel(string('Click on the screen!'));

%% loop

for t = 1:N
    
    
    T = clickCoordinates();   % target position
    
    F = zeros(n,2);
    
    if ( ~(T(1)<0 || T(2)<0 || dim<T(1) || dim<T(2)) )
        F(1,:) = F(1,:) + seek(P(1,:),V(1,:),T);        % no1: seek target
    end
    
    F(2,:) = F(2,:) + flee(P(2,:),V(2,:),P(1,:));   % no2: flee no1
    F = F + 0.5*wander(V);                          % both: wander randomly
    
    V = truncVec(V + F,maxs);
    P = mod(P + V,dim);
    
    drawPoints(h,P);
    drawPoints(i,T);
    drawArrows(j, P, 5*V);
    
    pause(0.1);
    
end

end

