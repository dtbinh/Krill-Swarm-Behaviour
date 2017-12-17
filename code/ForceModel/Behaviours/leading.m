function [ F ] = leading(V,F,leaders,targetV)
%computes the force applied on the leaders which try to reach targetV
%  
global leadRatio;

A = 0.75*steeringForce(V,targetV); %compute new direction vector, 0.75 factor is an atempt to slow the down


for i = 1:leaders
    F(i,1) = leadRatio*A(i,1)+(1-leadRatio)*F(i,1);
    F(i,2) = leadRatio*A(i,2)+(1-leadRatio)*F(i,1);
end
end

