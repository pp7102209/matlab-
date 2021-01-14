function [x,y,y2] = Example1()
x = linspace(-10,10,200); 
y = sin(4*x)./exp(x)/10000;
y2 = sin(2*x)./exp(x)/10000;
end

