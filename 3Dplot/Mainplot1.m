clc
clear
%% 作图数据
[x,y,z] = Example1();
%% 绘图1参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    'z方向坐标最小值','z方向坐标最大值','z方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 基本绘图信息设置 Example1
figure;                         %图形窗口
mesh(x,y,z);                    %三维图的绘制函数
colormap('jet');               %设置颜色

Plot3Fuc(ret)    
% legend('\itu_{\rmmax}','\itu_{\rmmin}');                                     %图例
xlabel('Time(s)');                                                           %x坐标轴
ylabel('Deep(m^3)');                                                    %y坐标轴
zlabel('\itg_{\rmExample}\rm(m^2)');                                                 %z坐标轴
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.pdf');     %输出图片
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.jpg');     %输出图片