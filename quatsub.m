function [q1] = quatsub(beta,q2)
%QUATSUB Subtracts one set of quaternion coordinates from another
%   Subtracts second input from first input. Both are arrays with scalar
%   q0=q4 as the fourth value. Returns short rotation array with q(0) as first
%   value

%Make q1 a column vector
[r,c] = size(beta);
if r == 1
    beta = transpose(beta);
end

%Compute addition
q1 = transpose([q2(4) -q2(1) -q2(2) -q2(3);q2(1) q2(4) q2(3) -q2(2);q2(2) -q2(3) q2(4) q2(1);q2(3) q2(2) -q2(1) q2(4)])*beta;

%Make small rotation
if q1(4) < 0
    q1 = -1*q1;
end
end