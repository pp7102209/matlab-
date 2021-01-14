function [xs,ys,zs] = Obstacles(Rep,robs) %对其中的一个障碍物
% 对障碍物进行球形泛化

    ox=Rep(1);
    oy=Rep(2);
    oz=Rep(3);
    %robs=20;        % 障碍物的等效半径
    %%% 球体障碍物表面信息(xs,ys,zs) %%%%%%%%%%%%%%%%%%
    % 生成球表面的数据
        [qx,qy,qz]=sphere(50);
    % 球面上的点 (xs,ys,zs)
    % 球的中心点 (ox,oy,oz)
    % 球的半径 robs
    % 将离的最近的点赋给(xo,yo,zo)
    % 球的表面上的点
        xs=ox+robs*qx;              % xs 为21x21维矩阵
        ys=oy+robs*qy;
        zs=oz+robs*qz; 
end

