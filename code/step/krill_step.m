function [ A ] = krill_step( K )
%boids step - addition of vectors towards neighbours
%   K g^has to be of size nx2

    sigma = 2; %neighbours range
    mov = zeros(size(K));
    
    for i=1:size(K,1)
        for j=i+1:size(K,1)
            v = [K(i,1) - K(j,1) , K(i,2) - K(j,2)];
            %v is the vector between krill i and neighbor j;
            
            if norm(v) < sigma
                %half of vector v is added to the movement of both krills i
                %and j
                mov(i,1) = mov(i,1) - 0.5*v(1);
                mov(i,2) = mov(i,2) - 0.5*v(2);
                mov(j,1) = mov(j,1) + 0.5*v(1);
                mov(j,2) = mov(j,2) + 0.5*v(2);
            end
        end
    end
    
    %new position is calculated by adding old position to calculated vector
    %mov
    A = K + mov;
end

