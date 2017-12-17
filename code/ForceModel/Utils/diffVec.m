function [ delta ] = diffVec( A, B)
%diffVec Returns difference vector pointing from A to B
%   periodicity 'dim' is optional for periodic boundary conditions

global dim;

delta = B - A;
if (dim > 0), delta = mod(delta + dim/2, dim) - dim/2; end

end

