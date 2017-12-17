function [ f ] = steeringForce(currentV,desiredV)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

global maxs maxf;

 % desiredV = truncVec( desiredV, maxs );
  desiredV = maxs * normalize(desiredV);

f = desiredV - currentV; 
f = truncVec(f, maxf);


f(isnan(f)) = 0;


end

