function [q] = crpadd(q1,q2)
%CRPADD Adds two sets of classical Rodrigues parameter sets
%   Adds two 3x1 sets of CRPs

q = (q2+q1-cross(q2,q1))/(1-dot(q2,q1));
end

