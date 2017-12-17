function [ D2 ] = periodicDist(ZI,ZJ)
%periodicDist returns the pairwise periodic Distance between ZI and ZJ
% ZI is a 1-by-n vector containing a single observation.
% ZJ is an m2-by-n matrix containing multiple observations. 
% distfun must accept a matrix XJ with an arbitrary number of observations.
% D2 is an m2-by-1 vector of distances, and D2(k) is the distance between observations ZI and ZJ(k,:).

delta = diffVec( ZI, ZJ );
D2 = vectorNorm( delta );

end

