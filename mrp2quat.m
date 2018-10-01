function [beta] = mrp2quat(sigma)
%MRP2QUAT Converts modified Rodrigues parameters into quaternions
%   Takes a 3x1 MRP vector and outputs a 4x1 with scalar as fourth element

beta = zeros(4,1);
sig = dot(sigma,sigma);
for i = 1:3
    beta(i) = 2*sigma(i)/(1+sig);
end
beta(4) = (1-sig)/(1+sig);
end

