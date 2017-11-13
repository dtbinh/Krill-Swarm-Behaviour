function [ A ] = krill_step_midp (K)
%boids step, goes to average position of neighbors
%   average position is calculated by the addition of de vectors Oi for all
%   neighbours i and dividing the result by i.
%   K has to be of size nx2

sigma = 2; %neighbours range
A = zeros(size(K));

for i=1:size(K,1)
    x = 0;
    y = 0;
    count = 0;
    
    for j=1:size(2,K)
        v = [K(i,1) - K(j,1) , K(i,2) - K(j,2)];
        %vector between i and j, used to calculate norm
        if (i ~= j) && (norm(v) < sigma)%test if j neighbour of i and i != j
            x = x + K(j,1);
            y = y + K(j,2);
            count = count + 1;
        end
    end
    %doesn't move if no neighbours
    if count == 0
        count = 1;
        x = K(i,1);
        y = K(i,2);
    end
    %write new positions
    A(i,1) = x / count;
    A(i,2) = y / count;
end

end