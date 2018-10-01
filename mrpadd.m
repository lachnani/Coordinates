function [sigma] = mrpadd(o1,o2)
%MRPADD Adds two sets of MRP coordinates
%   Checks size of MRP values and adds them such that the resulting
%   rotation is short. Works with 3x1 vectors.

o = zeros(3,1);
if norm(o1) >= 1
   o1 = -1*o1/dot(o1,o1);
end
if norm(o2) >= 1
    o2 = -1*o2/dot(o2,o2);
end
sigma = ((((1-dot(o1,o1))*o2)+(1-dot(o2,o2))*o1)-(2*cross(o2,o1)))/(1+(dot(o1,o1)*dot(o2,o2))-(2*dot(o1,o2)));
end

