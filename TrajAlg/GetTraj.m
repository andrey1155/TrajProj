function [X,H] = GetTraj()

Xlen = 500;
t0 = [24, 25, 27, 30, 33, 32, 25, 26, 27, 39, 50, 52, 53, 41, 36, 30, 28, 27, 26, 28];
t0x=0:Xlen/length(t0):Xlen-1;

Xaxis = 0:0.5:Xlen-5;
Haxis = interp1(t0x,t0,Xaxis, 'v5cubic');



X = Xaxis;
H = Haxis;

end