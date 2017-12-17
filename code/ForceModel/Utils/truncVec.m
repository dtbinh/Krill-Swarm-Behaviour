function [B] = truncVec(A,length)
%truncVec truncate vectors to length 'length'
%   Detailed explanation goes here

X = A(:,1); Y = A(:,2);

[ theta, rho ] = cart2pol( X, Y );
rho = min( rho, length );
[ X, Y ] = pol2cart( theta, rho );

B = [X,Y];

end

