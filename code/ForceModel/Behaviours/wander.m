function [ f ] = wander(V)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

n = size(V,1);
global maxs;
persistent theta;
if isempty(theta), theta = zeros(n,1); end

wstrength = maxs; rate = pi/2;
wchange =  2*rate * rand(n,1) - rate;
theta = mod(theta + wchange,2*pi);

[X,Y] = pol2cart(theta,0.9*wstrength);
desiredVelocity = wstrength * normalize(V) + [X,Y];
f = steeringForce( V, desiredVelocity);

end

