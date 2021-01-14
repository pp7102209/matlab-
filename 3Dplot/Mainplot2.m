clc
clear
%% ��ͼ����
load('Example.mat');
%% ��ͼ1����
ret=inputdlg({'x����������Сֵ','x�����������ֵ','x����������',...
    'y����������Сֵ','y�����������ֵ','y����������',...
    'z����������Сֵ','z�����������ֵ','z����������',...
    'ͼ��(cm)','ͼ��(cm)'},'��ͼ��������');
%% ������ͼ��Ϣ���� Example2
figure;                         %ͼ�δ���
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
% legend('\itu_{\rmmax}','\itu_{\rmmin}');                                   %ͼ��
xlabel('\itx\rm(m)');                                                           %x������
ylabel('\ity\rm(m)');                                                           %y������
zlabel('\itz\rm(m)');                                                           %z������
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.pdf');     %���ͼƬ
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure2.jpg');     %���ͼƬ