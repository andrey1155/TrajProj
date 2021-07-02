
Xlen = 500;

test = zeros(1,50)+5;
t2 = 5:0.1:10 ;

test = [test, t2];
testX=0:Xlen/length(test):Xlen-1;

plot(testX,test);


FixSpan = 10;
FixPoint = 51;

dec0 = 0;
dec1 =  (test(53)-test(52))/(testX(2)-testX(1))
dx = testX(2)-testX(1);


t = 0;
P = [testX(FixPoint-FixSpan);5];
Q = [testX(FixPoint);5];
R = [testX(FixPoint+FixSpan);test(FixPoint+FixSpan)];

F = (1-t)^2 * P + 2*t*(1-t)*Q + R*t^2;

new_testY = zeros(1,3);
new_testX = zeros(1,3);

i = FixPoint-FixSpan;
for t = 0:1/(2*FixSpan):1
    
    temp = (1-t)^2 * P + 2*t*(1-t)*Q + R*t^2;
    testX(i) = temp(1);
    test(i) = temp(2);
    i = i + 1;
end

plot(testX, test)
