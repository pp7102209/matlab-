clc
clear
%% 作图数据
 [x,y,y2] = Example1();
 [xx,yy,cc] = Example2();
 [x3,y3,u3,v3] = Example3();
%% 绘图1参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 基本绘图信息设置 Example1
figure(1);
plot(x,y,'b');hold on                                                       
plot(x,y2,'r--');
PlotFuc(ret)                                                              
legend('\itu_{\rmmax}','\itu_{\rmmin}');                                  %图例
xlabel('Time(s)');                                                                   %x坐标轴
ylabel('\itd_{\rmdive}');                                                               %y坐标轴
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.pdf');  %输出图片
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.Jpg');  %输出图片
%% 绘图2参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 基本绘图信息设置 Example2
scatter(xx,yy,1,cc,'filled')
colormap(jet)
PlotFuc(ret)                                                              
xlabel('Example(s)');                                                      
ylabel('\itk_{\rmave}');                                                
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.pdf');  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.Jpg');  %输出图片
%% 绘图3参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 鍩烘湰缁樺浘淇℃伅璁剧疆 Example3
Q=quiver(x3,y3,u3,v3);
Q.AutoScaleFactor=1.2;
PlotFuc(ret)                                                          
xlabel('\itu_{\rmm}\rm(m/s)');                                                 
ylabel('\itv_{\rmm}\rm(m/s)');                                                  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure3.pdf');  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure3.Jpg');  %输出图片


