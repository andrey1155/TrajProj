function [ret, retPoints]= FixCriticalPoints(Haxis, Xaxis, maxPitch, minPitch, points)

points_len = size(points);
points_len = points_len(2);
retPoints = [];
for j = 1:points_len
    I = points(1,j);
    type = points(2,j);
    
    if type == 1
        [Haxis, p] = FixCriticalInc(Haxis,Xaxis,maxPitch, I);
    else
        [Haxis, p] = FixCriticalDec(Haxis,Xaxis,minPitch, I);
    end
    retPoints = [retPoints, p];
end
ret = Haxis;
end

function [ret, Iret] = FixCriticalInc(Haxis, Xaxis, maxInc, I)
dx = Xaxis(2) - Xaxis(1);

dh = tan(deg2rad(maxInc))*dx;

i = I-1;
H = Haxis(i);
while H>=Haxis(i)
    H = H - dh;
    Haxis(i) = H;
    i = i-1;
end

ret = Haxis;
Iret = i + 1;
end

function [ret, Iret] = FixCriticalDec(Haxis, Xaxis, minInc, I)
dx = Xaxis(2) - Xaxis(1);

dh = tan(deg2rad(minInc))*dx;

i = I+1;
H = Haxis(i);
while H>=Haxis(i)
    H = H + dh;
    Haxis(i) = H;
    i = i+1;
end

ret = Haxis;
Iret = i + 1;
end

