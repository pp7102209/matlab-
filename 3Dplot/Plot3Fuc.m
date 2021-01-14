function [] = Plot3Fuc(ret)
xmin= str2num(ret{1});
xmax= str2num(ret{2});
dx= str2num(ret{3});
ymin= str2num(ret{4});
ymax= str2num(ret{5});
dy= str2num(ret{6});
zmin= str2num(ret{7});
zmax= str2num(ret{8});
dz= str2num(ret{9});

Fig_x_Range= str2num(ret{10});
Fig_y_Range= str2num(ret{11});

set(gca,'xtick',xmin:dx:xmax); 
set(gca,'xTickLabel',num2str(get(gca,'xtick')','%.1f'))
set(gca,'ytick',ymin:dy:ymax);
set(gca,'yTickLabel',num2str(get(gca,'ytick')','%.1f'))
set(gca,'ztick',zmin:dz:zmax);
set(gca,'zTickLabel',num2str(get(gca,'ztick')','%.1f'))
xlim([xmin,xmax]);
ylim([ymin,ymax]);
zlim([zmin,zmax]);

% legend('\itu_{\rm max}','\itu','\itu_{\rm maxt}','fontname', 'times new roman','fontSize',9);
legend('~','fontname','times new roman',...
    'fontSize',10,'FontWeight','bold');
xlabel('times new roman','fontSize',7);
ylabel('times new roman','fontSize',7);
zlabel('times new roman','fontSize',7);


set(gcf,'unit','centimeters','position',[1.5 1.5 Fig_x_Range Fig_y_Range]);  
set(gcf,'color','w')

set(gca,'linewidth',1,'fontsize',7,'fontname','Times');
set(gca,'Position',[0.2 0.2 0.65 0.65]);
view(-37.5, 30);
end