function [DCM] = quat2dcm(q)
%QUAT2DCM Converts quaternion coordinates into DCM
%   Takes a 4 element array with scalar q0=q4 as fourth value. Outputs a 3x3
%   DCM matrix

DCM = [(q(4)^2)+(q(1)^2)-(q(2)^2)-(q(3)^2) 2*(q(1)*q(2)+q(4)*q(3))...
    2*(q(1)*q(3)-q(4)*q(2));2*(q(1)*q(2)-q(4)*q(3)) (q(4)^2)-(q(1)^2)+(q(2)^2)-(q(3)^2)...
    2*(q(2)*q(3)+q(4)*q(1));2*(q(1)*q(3)+q(4)*q(2)) 2*(q(2)*q(3)-q(4)*q(1))...
    (q(4)^2)-(q(1)^2)-(q(2)^2)+(q(3)^2)];
end

