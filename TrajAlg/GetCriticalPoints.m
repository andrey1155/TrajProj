function ret = GetCriticalPoints(Paxis, max, min)

CriticalPoints = [];
prev = 0;
for i = 1:length(Paxis)
    
    if (Paxis(i) <= max) && (prev > max)
        CriticalPoints = [CriticalPoints, [i; 1]];
    end
    
    if (Paxis(i) < min) && (prev >= min)
        CriticalPoints = [CriticalPoints, [i; -1]];
    end
    prev = Paxis(i);
end

ret = CriticalPoints;

end