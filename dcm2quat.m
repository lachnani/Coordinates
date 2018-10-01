function [beta] = dcm2quat(c)
%DCM2QUAT Converts DCM coordinates to quaternions
%   Takes 3x3 DCM matrix and outputs 4x1 quaternion array with scalar as
%   fourth value. Conversion using Sheppard's method.

%Establish first q value
tr = trace(c);
qpick = .25*[1+(2*c(1,1))-tr 1+(2*c(2,2))-tr 1+(2*c(3,3))-tr 1+tr];
[qm,I] = max(qpick);
beta = zeros(4,1);
beta(I) = sqrt(qm);

%Calculate other q values
if I == 4
    beta(1) = (c(2,3)-c(3,2))/(4*beta(I));
    beta(2) = (c(3,1)-c(1,3))/(4*beta(I));
    beta(3) = (c(1,2)-c(2,1))/(4*beta(I));
elseif I == 1
    beta(4) = (c(2,3)-c(3,2))/(4*beta(I));
    beta(2) = (c(1,2)+c(2,1))/(4*beta(I));
    beta(3) = (c(3,1)+c(1,3))/(4*beta(I));
elseif I == 2
    beta(4) = (c(3,1)-c(1,3))/(4*beta(I));
    beta(1) = (c(1,2)+c(2,1))/(4*beta(I));
    beta(3) = (c(2,3)+c(3,2))/(4*beta(I));
else
    beta(4) = (c(1,2)-c(2,1))/(4*beta(I));
    beta(1) = (c(3,1)+c(1,3))/(4*beta(I));
    beta(2) = (c(2,3)+c(3,2))/(4*beta(I));
end

%Make short rotation
if beta(4) < 0
    beta = -1*beta;
end
end

