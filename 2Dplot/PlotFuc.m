function [] = PlotFuc(ret)
xmin= str2num(ret{1});
xmax= str2num(ret{2});
dx= str2num(ret{3});
ymin= str2num(ret{4});
ymax= str2num(ret{5});
dy= str2num(ret{6});
Fig_x_Range= str2num(ret{7});
Fig_y_Range= str2num(ret{8});

set(gca,'xtick',xmin:dx:xmax); 
set(gca,'xTickLabel',num2str(get(gca,'xtick')','%.1f'))
set(gca,'ytick',ymin:dy:ymax);
set(gca,'yTickLabel',num2str(get(gca,'ytick')','%.1f'))
xlim([xmin,xmax]);
ylim([ymin,ymax]);

% legend('\itu_{\rm max}','\itu','\itu_{\rm maxt}','fontname', 'times new roman','fontSize',9);
legend('times new roman','fontSize',7,'FontWeight','bold');
xlabel('times new roman','fontSize',7);
ylabel('times new roman','fontSize',7);



set(gcf,'unit','centimeters','position',[1.5 1.5 Fig_x_Range Fig_y_Range]);  
set(gcf,'color','w')

set(gca,'linewidth',1,'fontsize',7,'fontname','Times');
set(gca,'Position',[0.2 0.2 0.75 0.75]);
% set(findobj(get(gca,'Children'),'LineWidth',0.5),'LineWidth',1);
end

