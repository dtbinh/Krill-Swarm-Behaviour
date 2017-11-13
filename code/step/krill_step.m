function [ A ] = krill_step( K )
%boids step - addition of vectors towards neighbours
%   K g^has to be of size 2xn

    sigma = 2; %neighbours range
    mov = zeros(size(K));
    
    for i=1:size(K,2)
        for j=i+1:size(K,2)
            v = [K(1,i) - K(1,j) , K(2,i) - K(2,j)];
            %v is the vector between krill i and neighbor j;
            
            if norm(v) < sigma
                %half of vector v is added to the movement of both krills i
                %and j
                mov(1,i) = mov(1,i) - 0.5*v(1);
                mov(2,i) = mov(2,i) - 0.5*v(2);
                mov(1,j) = mov(1,j) + 0.5*v(1);
                mov(2,j) = mov(2,j) + 0.5*v(2);
            end
        end
    end
    
    %new position is calculated by adding old position to calculated vector
    %mov
    A = K + mov;
end

