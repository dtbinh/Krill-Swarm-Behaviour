function [ f ] = alignment( P, V, r )
% (Position, Velocity, sensing range)
%   
% 

%% compute neighborhood for each P(i,:)
idx = rangesearch( P, P, r, 'Distance', @periodicDist);

%% compute desiredVector
n = size(V,1);
desiredV = zeros(n,2);
for i= 1:n
    j = idx{i,1}(2:end);             % j = neighbors of P(i,:)
    desires = V(j,:);                % desires are neighbors velocities
    desiredV(i,:) = mean(desires,1); % mean of neighbors
end

%% compute steering force
f = steeringForce(V,desiredV);

end

