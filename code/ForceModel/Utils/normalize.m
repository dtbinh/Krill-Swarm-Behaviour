function [ B ] = normalize(A)
%normalize normalize vectors within A
%   Detailed explanation goes here

norm = vectorNorm(A);
B = A ./ norm;

end

