function [DCM] = euler2dcm(var1,var2,var3,rot,unit)
%EULER2DCM Converts Euler angle coordinates into DCM
%   First 3 inputs are spin axes in sequence. Fourth input is rotation
%   vector with angles. Fifth input is unit string of deg or rad

%change units to degrees
if unit == 'rad'
    rot = 360*rot/(2*pi);
end

%First Rotation
if var1 == 1
    Ma = [1 0 0;0 cosd(rot(1)) sind(rot(1));0 -sind(rot(1)) cosd(rot(1))];
elseif var1 == 2
    Ma = [cosd(rot(1)) 0 -sind(rot(1));0 1 0;sind(rot(1)) 0 cosd(rot(1))];
elseif var1 == 3
    Ma = [cosd(rot(1)) sind(rot(1)) 0;-sind(rot(1)) cosd(rot(1)) 0;0 0 1];
end
%Second Rotation
if var2 == 1
    Mb = [1 0 0;0 cosd(rot(2)) sind(rot(2));0 -sind(rot(2)) cosd(rot(2))];
elseif var2 == 2
    Mb = [cosd(rot(2)) 0 -sind(rot(2));0 1 0;sind(rot(2)) 0 cosd(rot(2))];
elseif var2 == 3
    Mb = [cosd(rot(2)) sind(rot(2)) 0;-sind(rot(2)) cosd(rot(2)) 0;0 0 1];
end
%Third Rotation
if var3 == 1
    Mc = [1 0 0;0 cosd(rot(3)) sind(rot(3));0 -sind(rot(3)) cosd(rot(3))];
elseif var3 == 2
    Mc = [cosd(rot(3)) 0 -sind(rot(3));0 1 0;sind(rot(3)) 0 cosd(rot(3))];
elseif var3 == 3
    Mc = [cosd(rot(3)) sind(rot(3)) 0;-sind(rot(3)) cosd(rot(3)) 0;0 0 1];
end

%Output
DCM = Ma*Mb*Mc;
end

