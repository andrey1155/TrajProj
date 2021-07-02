function ret = FixCriticalInc(Haxis, Xaxis, maxInc, I)
dx = Xaxis(2) - Xaxis(1);

dh = tan(deg2rad(maxInc))*dx;

i = I-1;
H = Haxis(i);
while H>=Haxis(i)
    H = H - dh;
    Haxis(i) = H;
    i = i-1;
end

i
ret = Haxis;
end


