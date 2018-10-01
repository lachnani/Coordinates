function [q2] = crpsub(q,q1)
%CRPSUB Subtracts two sets of classical Rodrigues parameter sets
%   Subtracts seconds input from first input, both 3x1 

q2 = (q-q1+cross(q,q1))/(1+dot(q,q1));
end

