function [c] = crp2dcm(q)
%CRP2DCM Converts classical Rodrigues parameters to Direction cosine matrix
%   Takes 3x1 Rodrigues parameters and outputs 3x3 DCM

c = [1+(q(1)^2)-(q(2)^2)-(q(3)^2) 2*(q(1)*q(2)+q(3)) 2*(q(1)*q(3)-q(2));2*(q(1)*q(2)-q(3))...
    1-(q(1)^2)+(q(2)^2)-(q(3)^2) 2*(q(3)*q(2)+q(1));2*(q(1)*q(3)+q(2)) 2*(q(3)*q(2)-q(1))...
    1-(q(1)^2)-(q(2)^2)+(q(3)^2)]./(1+(transpose(q)*q));
end

