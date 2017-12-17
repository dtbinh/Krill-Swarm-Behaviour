function [ f ] = flee(P,V,target)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

desiredVelocity = - diffVec( P, target);  
f = steeringForce( V, desiredVelocity);

end

