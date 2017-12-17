function [ norm ] = vectorNorm( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

norm = sqrt(sum(A.^2,2));

end

