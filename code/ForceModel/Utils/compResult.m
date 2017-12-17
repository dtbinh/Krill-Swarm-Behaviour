function [follow, close] = compResult(V,P, leaders, targetV)
%computes result as the number of non-leaders who follow targetV
%   Detailed explanation goes here
global errMargin n closeL;


follow = 0;
close = 0;
for i = leaders+1:n
    
    %compute if krill is swimming in direction of targetV
    diff = norm(normalize(V(i,:))-normalize(targetV));
    if(diff <= errMargin)
        follow = follow+1;
    end
    
    %compute if krill is close to a leading Krill
    
    for j = 1:leaders
        dist = norm(diffVec(P(i,:),P(j,:)));
        if dist <= closeL
            close = close+1;
            break;
        end
    end
end



end

