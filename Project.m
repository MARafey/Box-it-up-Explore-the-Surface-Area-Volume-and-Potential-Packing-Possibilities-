clear all
clc
disp("I21-2544, I21-0705, I21-0520");
disp("Aizex Corporation");
disp("Program Started");
a = 0
b = 0
 f = @(x) ((182.*x) - (x.^3))
 pkg load symbolic
 syms x;
 ff = f(x);
% now calculate the derivative of the function
 ffd = diff(ff, x)
 ffd = ffd ./ (2 .* (sqrt(2) + 2))
g = @(y) ((y^3) + 668.26) ./ (y)
 pkg load symbolic
 syms y;
 gf = g(y);
 % now calculate the derivative of the function
 gfd = diff(gf, y)
 gfd = gfd
dec = input("Enter 1 for Surface area or 2 for Volume --- ")
if(dec == 1)
if(dec == 1)
%optimization of Surface Area. Find Volume
 a = input("Enter surface area in meters : ")
 arr = [a-5:1:a+5]
 dfh = function_handle (ff)
 vol = dfh (arr) ./ (2 .* (sqrt(2) + 2))
 plot(vol);
endi
if(dec == 2)
 %optimization of Volume. Find Surface Area.
 b = input("Enter Volume : ")
 brr = [b-5:1:b+5]
 dgh = function_handle (gf)
 sa = dgh (brr)
 plot(sa);
endif
disp("Now to find estimated cost of 2 million pizza boxes")
surArea = input("Enter surface area")
boxes = (2000000 ./ (surArea.*5))
