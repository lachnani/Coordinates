function [q] = quat2crp(beta)
%QUAT2CRP Converts quaternions to classical Rodrigues parameters
%   Takes a 4 element array with scalar as the fourth element.

q = [beta(1);beta(2);beta(3)]./beta(4);
end

