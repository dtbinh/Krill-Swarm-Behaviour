function drawPoints(h,A)
%drawPoints updates data of h to A
%   h = handle to update 
%   A = m-by-2 point vector

set(h, 'XData', A(:,1), 'YData', A(:,2));

end

