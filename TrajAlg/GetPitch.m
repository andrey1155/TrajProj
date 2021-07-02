function ret = GetPitch(Haxis, Xaxis)
Paxis = zeros(length(Xaxis),1);

for i = 1:length(Paxis)-1
    Paxis(i) = GetPitch1(Xaxis(i),Haxis(i),Xaxis(i+1),Haxis(i+1));
end

ret = Paxis;
end

function ret = GetPitch1(x1,h1,x2,h2)
dx = x2-x1;
dh = h2-h1;

angle = atan(dh/dx);

ret = rad2deg(angle);
end