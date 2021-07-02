function [ret] = FixDirivBezier(Xaxis,Haxis,FixPoint)

FixSpan = 50;

%k1 = (Haxis(FixPoint-FixSpan+1)-Haxis(FixPoint-FixSpan))/(Xaxis(FixPoint-FixSpan+1)-Xaxis(FixPoint-FixSpan));
%k2 = (Haxis(FixPoint+FixSpan+1)-Haxis(FixPoint+FixSpan))/(Xaxis(FixPoint+FixSpan+1)-Xaxis(FixPoint+FixSpan));
%b1 = Haxis(FixPoint-FixSpan);
%b2 = Haxis(FixPoint+FixSpan);

%x0 = (b2-b1)/(k1-k2);
%h0 = k2*x0 + b2;

P = [Xaxis(FixPoint-FixSpan);Haxis(FixPoint-FixSpan)];
Q = [Xaxis(FixPoint);Haxis(FixPoint)];
%Q = [x0;h0]
R = [Xaxis(FixPoint+FixSpan);Haxis(FixPoint+FixSpan)];

i = FixPoint-FixSpan;
for t = 0:1/(2*FixSpan):1
    
    temp = (1-t)^2 * P + 2*t*(1-t)*Q + R*t^2;
    Xaxis(i) = temp(1);
    Haxis(i) = temp(2);
    i = i + 1;
end

ret = Haxis;

