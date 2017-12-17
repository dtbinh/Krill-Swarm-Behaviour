%% initialize krill

random = RandStream.setGlobalStream(RandStream('mt19937ar','seed',0)); %set random stream

leaders = n * leaders; % compute number of leaders/escapists


R = zeros(T,N); %initialize result matrix for vector closeness
C = zeros(T,N); %initialize result matrix for position closeness


for S = 1:T

%P = dim * rand(n,2);                    % position vector
P = dim * (randn(n,2)/20+.5);      %random position near starting point
P = P - [dim/2-.5,0];                     % starting postition on the left side instead of center 
%V = 2*maxs * rand(n,2) - maxs;          % velocity vector
V = ones(n,1) * [1,0];               %velocity vector
V = truncVec(V + wander(V), maxs);     %randomizes starting velocity

%% initialize grahics
if graphics
    close all;
    config(dim);

    h = scatter( P(:,1), P(:,2), s, 'k', 'filled' );
    i = scatter([], [], 'filled');
end

%% loop
for t = 1:N
    %% compute forces
    F = zeros(n,1);
    F = F + w(1) * cohesion( P, V, r );
    F = F + w(2) * separation( P, V, r/8 );
    F = F + w(3) * alignment( P, V, r );
    F = F + w(4) * wander(V);
    if t >= lactiv
        F = leading(V,F,leaders,targetV);
    end
    T = clickCoordinates();
    if ( ~(T(1)<0 || T(2)<0 || dim<T(1) || dim<T(2)) )
        F = F + 5*seek(P,V,T);
    end
    
    %% compute velocity and positions
    V = truncVec(V + F,maxs);
    P = mod(P + V,dim);
    
    %compute results
    
    [R(S,t),C(S,t)] = compResult(V,P,leaders,targetV);
    
    %% render
    if graphics
        drawPoints(h, P);
        drawPoints(i, T);
        pause(0.01); 
    end;
    


end
%end of 1 simulation
%S %provisional to see advancement of simulations (cuz it takes a while), remove before handing in

end
%end of T simulations
save (resFile, 'R', 'C', 'N','random'); %N saved in order to be able to plot the results easily later

if graphics
    close all; %used if simulation events are showed on plot
end

%plotResults(R,C,N); %plot the results directly





