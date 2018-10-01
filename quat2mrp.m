function [sigma] = quat2mrp(beta)
%QUAT2MRP Converts quaternions into modified Rodrigues parameters
%   Takes 4x1 vector will scalar as fourth value and outputs 3x1 vector

sigma = zeros(3,1);
for i = 1:3
    sigma(i) = beta(i)/(1+beta(4));
end
end

