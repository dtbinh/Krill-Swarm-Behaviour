function [ P ] = clickCoordinates()
%clickCoordinates 
%   return coordinates of most recent click 

% get current point from current axes
P = get(gca, 'CurrentPoint');
P = P(1,1:2);

end

