function [beta] = crp2quat(q)
%CRP2QUAT Converts classical Rodrigues parameters
%   Takes a 3 element array and outputs a 4 element array with q0=q4 as the
%   fourth element

beta = zeros(4,1);
beta(4) = 1/sqrt(1+(transpose(q)*q));
for n = 1:3
    beta(n) = q(n)/sqrt(1+(transpose(q)*q));
end
end

