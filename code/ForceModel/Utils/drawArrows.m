function drawArrows(h,A,B)
%drawArrows updates data of h to A and f*B with
%   h = handle to update
%   A = m-by-2 point vector (origins)
%   B = m-by-2 point vector (tips)

set(h, 'XData', A(:,1), 'YData', A(:,2), 'UData', B(:,1), 'VData', B(:,2));

end

