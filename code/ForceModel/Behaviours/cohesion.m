function [ f ] = cohesion( P, V, r )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

%% compute neighborhood for each P(i,:)
idx = rangesearch( P, P, r, 'Distance', @periodicDist);

%% compute desiredVector
n = size(P,1);
desiredV = zeros(n,2);
for i= 1:n
    j = idx{i,1}(2:end);             % j = neighbors of P(i,:)
    desires = diffVec( P(i,:), P(j,:) ); % desires towards neighbors
    desiredV(i,:) = mean(desires,1);     % mean of desires
end

%% compute steering force
f = steeringForce(V,desiredV);

end

