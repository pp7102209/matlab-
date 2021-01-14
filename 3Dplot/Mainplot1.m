clc
clear
%% ��ͼ����
[x,y,z] = Example1();
%% ��ͼ1����
ret=inputdlg({'x����������Сֵ','x�����������ֵ','x����������',...
    'y����������Сֵ','y�����������ֵ','y����������',...
    'z����������Сֵ','z�����������ֵ','z����������',...
    'ͼ��(cm)','ͼ��(cm)'},'��ͼ��������');
%% ������ͼ��Ϣ���� Example1
figure;                         %ͼ�δ���
mesh(x,y,z);                    %��άͼ�Ļ��ƺ���
colormap('jet');               %������ɫ

Plot3Fuc(ret)    
% legend('\itu_{\rmmax}','\itu_{\rmmin}');                                     %ͼ��
xlabel('Time(s)');                                                           %x������
ylabel('Deep(m^3)');                                                    %y������
zlabel('\itg_{\rmExample}\rm(m^2)');                                                 %z������
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.pdf');     %���ͼƬ
export_fig( gcf , '-r1500' ,'-painters', '-transparent','./Figure1.jpg');     %���ͼƬ