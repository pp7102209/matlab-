function [xs,ys,zs] = Obstacles(Rep,robs) %�����е�һ���ϰ���
% ���ϰ���������η���

    ox=Rep(1);
    oy=Rep(2);
    oz=Rep(3);
    %robs=20;        % �ϰ���ĵ�Ч�뾶
    %%% �����ϰ��������Ϣ(xs,ys,zs) %%%%%%%%%%%%%%%%%%
    % ��������������
        [qx,qy,qz]=sphere(50);
    % �����ϵĵ� (xs,ys,zs)
    % ������ĵ� (ox,oy,oz)
    % ��İ뾶 robs
    % ���������ĵ㸳��(xo,yo,zo)
    % ��ı����ϵĵ�
        xs=ox+robs*qx;              % xs Ϊ21x21ά����
        ys=oy+robs*qy;
        zs=oz+robs*qz; 
end

