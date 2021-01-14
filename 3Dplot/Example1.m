function [x,y,z] = Example1()
x=-10:0.5:10;                   %绘图数据
y=-10:0.5:10;
[X,Y]=meshgrid(x,y);
z=X.^2+Y.^2;
end

