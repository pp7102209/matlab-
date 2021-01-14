clc
clear
%% 作图数据
% [x,y1,y2] = Example1();
[x,y1,y2] = Example2();
%% 绘图1参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    'y2方向坐标最小值','y2方向坐标最大值','y2方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 绘图
global AX H1 H2
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot');
box on
xlabel('Time(s)');                                                         %x坐标轴
set(get(AX(1),'ylabel'),'string', '\itd_{\rmExamlple}\rm(m^2)');
set(get(AX(2),'ylabel'),'string', '\itd_{\rmdive}\rm(m^3)');
legend([H1,H2],{'\itu_{\rmmax}','\itu_{\rmmin}'});
%% 以下内容为图像设置，一般情况无需修改
xmin= str2num(ret{1});
xmax= str2num(ret{2});
dx= str2num(ret{3});
y1min= str2num(ret{4});
y1max= str2num(ret{5});
d1y= str2num(ret{6});
y2min= str2num(ret{7});
y2max= str2num(ret{8});
d2y= str2num(ret{9});
Fig_x_Range= str2num(ret{10});
Fig_y_Range= str2num(ret{11});
set(H1,'LineStyle','--','linewidth',1,'color','k')
set(H2,'LineStyle','-','linewidth',1,'color','r')
set(gca,'linewidth',1,'fontsize',7,'fontname','Times');
set(AX(1),'XColor','k','YColor','k');
set(AX(2),'XColor','k','YColor','r');
set(AX(1),'yTick',y1min:d1y:y1max);
set(AX(2),'yTick',y2min:d2y:y2max);
set(gca,'FontSize',7,'Fontname', 'Times New Roman');
set(AX(2),'FontSize',7,'Fontname', 'Times New Roman');
set(gca,'xTickLabel',num2str(get(gca,'xtick')','%.1f'))
set(gca,'yTickLabel',num2str(get(gca,'yTick')','%.2f'));
set(AX(2),'yTickLabel',num2str(get(AX(2),'yTick')','%.1f'));
set(gcf,'unit','centimeters','position',[1.5 1.5 Fig_x_Range Fig_y_Range]);  
set(gcf,'color','w')
set(gca,'linewidth',1,'fontsize',7,'fontname','Times');
set(AX(2),'linewidth',1,'fontsize',7,'fontname','Times');
set(gca,'Position',[0.10 0.10 0.75 0.75]);

%% 图像输出
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.pdf');  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.Jpg');  %输出图片

