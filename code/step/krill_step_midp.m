function [ A ] = krill_step_midp (K)
%boids step, goes to average position of neighbors
%   average position is calculated by the addition of de vectors Oi for all
%   neighbours i and dividing the result by i.
%   K has to be of size 2xn

sigma = 2; %neighbours range
A = zeros(size(K));

for i=1:size(K,2)
    x = 0;
    y = 0;
    count = 0;
    
    for j=1:size(K,2)
        v = [K(1,i) - K(1,j) , K(2,i) - K(2,j)];
        %vector between i and j, used to calculate norm
        if (i ~= j) && (norm(v) < sigma)%test if j neighbour of i and i != j
            x = x + K(1,j);
            y = y + K(2,j);
            count = count + 1;
        end
    end
    %doesn't move if no neighbours
    if count == 0
        count = 1;
        x = K(1,i);
        y = K(2,i);
    end
    A(1,i) = x / count;
    A(2,i) = y / count;
end

end