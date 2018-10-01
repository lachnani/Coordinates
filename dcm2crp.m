function [q] = dcm2crp(c)
%DCM2CRP Converts Direction cosine matrix to classical Rodrigues parameters
%   Takes 3x3 DCM and outputs 3 element q array

q = [c(2,3)-c(3,2);c(3,1)-c(1,3);c(1,2)-c(2,1)]/(sqrt(trace(c)+1)^2);
end

