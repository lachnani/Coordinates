function [beta] = quatadd(q1,q2)
%QUATADD Adds two sets of quaternion coordinates
%   Takes 2 4 element arrays with scalar q0=q4 as fourth value. Outputs a 4
%   element array with scalar as fourth value of the small rotation

%Make q1 a column vector
[r,c] = size(q1);
if r == 1
    q1 = transpose(q1);
end

%Compute addition
beta = [q2(4) -q2(1) -q2(2) -q2(3);q2(1) q2(4) q2(3) -q2(2);q2(2)...
    -q2(3) q2(4) q2(1);q2(3) q2(2) -q2(1) q2(4)]*q1;

%Make small rotation
if beta(4) < 0
    beta = -1*beta;
end
end

