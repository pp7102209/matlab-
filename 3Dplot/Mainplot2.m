clc
clear
%% 作图数据
load('Example.mat');
%% 绘图1参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    'z方向坐标最小值','z方向坐标最大值','z方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 基本绘图信息设置 Example2
figure;                         %图形窗口
  for i=1:3
     [xs(i,:,:),ys(i,:,:),zs(i,:,:)] = Obstacles(Rep(i,:),robs(i,:));
     n=i;
     Xs1=xs(i,:,:);
     AXs1 = reshape(Xs1,51,51);
     Ys1=ys(i,:,:);
     AYs1 = reshape(Ys1,51,51);
     Zs1=zs(i,:,:);
     AZs1 = reshape(Zs1,51,51);
     mesh(AXs1,AYs1,AZs1); 
     hold on
  end
plot3(px0,py0,pz0);
 hold on
 plot3(ini_Pos(1),ini_Pos(2),ini_Pos(3),'k*');
 hold on
 plot3(Tar(1),Tar(2),Tar(3),'ro')
 hold on
 
Plot3Fuc(ret)    
% legend('\itu_{\rmmax}','\itu_{\rmmin}');                                   %图例
xlabel('\itx\rm(m)');                                                           %x坐标轴
ylabel('\ity\rm(m)');                                                           %y坐标轴
zlabel('\itz\rm(m)');                                                           %z坐标轴
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.pdf');     %输出图片
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.jpg');     %输出图片