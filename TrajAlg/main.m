clc
mxHabs = 100;
minHrel= 20;
maxPitch = 15;
minPitch = -15;

[Xaxis, Haxis] = GetTraj();

plot(Xaxis,Haxis)
title("Изначальная траектория")

Pitch = GetPitch(Haxis, Xaxis);
points = GetCriticalPoints(Pitch, maxPitch, minPitch);

max = zeros(1,length(Xaxis)) + maxPitch;
min = zeros(1,length(Xaxis)) + minPitch;


figure
plot(Xaxis,Pitch)
title("Тангаж и критические зоны")
hold on
plot(Xaxis,max)
plot(Xaxis,min)
hold off



[newHaxis, points2] = FixCriticalPoints(Haxis,Xaxis,maxPitch,minPitch,points);
points = [points(1,:) points2]
%x1 = find(Xaxis == 183)
%x2 = find(Xaxis == 247)
%x = 369

for p = 1:length(points)
    
newHaxis = FixDirivBezier(Xaxis,newHaxis,points(p));

end


Pitch = GetPitch(newHaxis, Xaxis);



figure
plot(Xaxis, newHaxis)
title("Исправленная траектория")



figure
plot(Xaxis,Pitch)
title("Тангаж и критические зоны на исправленной траектории")
hold on  
plot(Xaxis,max)
plot(Xaxis,min)
hold off

%350 476

