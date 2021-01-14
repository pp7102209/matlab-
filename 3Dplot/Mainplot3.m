clc
clear
%% 作图数据
load wind
%涡量切片图绘制
%构建颜色图
mycmp=[[ones(20,1),(0.05:0.05:1)',(0.05:0.05:1)'];[(1:-0.05:0.05)',(1:-0.05:0.05)',ones(20,1)]];
cav = curl(x,y,z,u,v,w); %计算旋度
h = slice(x,y,z,cav,[90 134],59,0); %切片
shading interp
daspect([1 1 1]); %坐标轴缩放
axis tight
%% 绘图1参数
ret=inputdlg({'x方向坐标最小值','x方向坐标最大值','x方向坐标间隔',...
    'y方向坐标最小值','y方向坐标最大值','y方向坐标间隔',...
    'z方向坐标最小值','z方向坐标最大值','z方向坐标间隔',...
    '图宽(cm)','图高(cm)'},'绘图参数输入');
%% 基本绘图信息设置 Example3
colormap(mycmp);
caxis([-5,5]) %确定颜色范围，使得颜色图中白色对应0涡量
camlight %设置光照
set([h(1),h(2)],'ambientstrength',.6); %调整局部亮度

Plot3Fuc(ret)
% legend('\itu_{\rmmax}','\itu_{\rmmin}');                                     %图例
xlabel('Time(s)');                                                           %x坐标轴
ylabel('Deep(m^3)');                                                    %y坐标轴
zlabel('\itg_{\rmExample}\rm(m^2)');                                                 %z坐标轴
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure3.pdf');     %输出图片
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure3.jpg');     %输出图片
