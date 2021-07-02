function ret = FindDirivBreak(Haxis)

MaxD2 = 0.27;
CriticalPoints = [];

maxd = 0

for i = 1:length(Haxis)-1
    
if abs(Haxis(i+1) - Haxis(i)) > maxd  
    maxd = abs(Haxis(i+1) - Haxis(i))
end
    
if abs(Haxis(i+1) - Haxis(i)) > MaxD2  
    CriticalPoints = [CriticalPoints, i];
end
end

ret = CriticalPoints;

end