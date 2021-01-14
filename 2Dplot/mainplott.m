clc
clear
%% ��ͼ����
 [x,y,y2] = Example1();
 [xx,yy,cc] = Example2();
 [x3,y3,u3,v3] = Example3();
%% ��ͼ1����
ret=inputdlg({'x����������Сֵ','x�����������ֵ','x����������',...
    'y����������Сֵ','y�����������ֵ','y����������',...
    'ͼ��(cm)','ͼ��(cm)'},'��ͼ��������');
%% ������ͼ��Ϣ���� Example1
figure(1);
plot(x,y,'b');hold on                                                       
plot(x,y2,'r--');
PlotFuc(ret)                                                              
legend('\itu_{\rmmax}','\itu_{\rmmin}');                                  %ͼ��
xlabel('Time(s)');                                                                   %x������
ylabel('\itd_{\rmdive}');                                                               %y������
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.pdf');  %���ͼƬ
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.Jpg');  %���ͼƬ
%% ��ͼ2����
ret=inputdlg({'x����������Сֵ','x�����������ֵ','x����������',...
    'y����������Сֵ','y�����������ֵ','y����������',...
    'ͼ��(cm)','ͼ��(cm)'},'��ͼ��������');
%% ������ͼ��Ϣ���� Example2
scatter(xx,yy,1,cc,'filled')
colormap(jet)
PlotFuc(ret)                                                              
xlabel('Example(s)');                                                      
ylabel('\itk_{\rmave}');                                                
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.pdf');  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.Jpg');  %���ͼƬ
%% ��ͼ3����
ret=inputdlg({'x����������Сֵ','x�����������ֵ','x����������',...
    'y����������Сֵ','y�����������ֵ','y����������',...
    'ͼ��(cm)','ͼ��(cm)'},'��ͼ��������');
%% 基本绘图信息设置 Example3
Q=quiver(x3,y3,u3,v3);
Q.AutoScaleFactor=1.2;
PlotFuc(ret)                                                          
xlabel('\itu_{\rmm}\rm(m/s)');                                                 
ylabel('\itv_{\rmm}\rm(m/s)');                                                  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure3.pdf');  
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure3.Jpg');  %���ͼƬ


