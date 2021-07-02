function ret = fixDiriv(Haxis, Xaxis, maxInc, I)

dh0 = Haxis(I-2)- Haxis(I-3);
dx = Xaxis(2) - Xaxis(1);
dh_max = tan(deg2rad(maxInc))*dx;
dh = dh0;
fixSpan = 10;

d2h = (dh_max - dh0)/(2*fixSpan);

i = I - fixSpan/dx;

while dh < dh_max
    Haxis(i-1) = Haxis(i)+dh;
    
    dh = dh + d2h;    
    i= i+1;
end


ret = Haxis;
end


