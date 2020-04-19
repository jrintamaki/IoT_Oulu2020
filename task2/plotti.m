T = readtable('sm_out.csv');
figure;
x = T{:,2};
y = T{:,3};
plot(x(1:5:end),y(1:5:end));
title('Staff Meeting room PIR graph');
xlabel('Timestamp');
ylabel('PIR');


L = get(gca,'XLim');
NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
set(gca,'XTick',linspace(L(1),L(2),NumTicks))

datetick('x','mmm yyyy','keeplimits', 'keepticks')
xtickangle(45)


% T = readtable('bk_out.csv');
% figure;
% x = T{:,2};
% y = T{:,3};
% plot(x(1:30:end),y(1:30:end));
% title('Business Kitchen PIR graph');
% xlabel('Timestamp');
% ylabel('PIR');
% 
% L = get(gca,'XLim');
% NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% 
% datetick('x','mmm yyyy','keeplimits', 'keepticks')
% xtickangle(45)
% 
% 
% T = readtable('cm_out.csv');
% figure;
% x = T{:,2};
% y = T{:,3};
% plot(x(1:30:end),y(1:30:end));
% title('Chill Meeting room PIR graph');
% xlabel('Timestamp');
% ylabel('PIR');
% 
% L = get(gca,'XLim');
% NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% 
% datetick('x','mmm yyyy','keeplimits', 'keepticks')
% xtickangle(45)
% 
% 
% T = readtable('bm_out.csv');
% figure;
% x = T{:,2};
% y = T{:,3};
% plot(x(1:30:end),y(1:30:end));
% title('Brisk Meeting room PIR graph');
% xlabel('Timestamp');
% ylabel('PIR');
% 
% L = get(gca,'XLim');
% NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% 
% datetick('x','mmm yyyy','keeplimits', 'keepticks')
% xtickangle(45)
% 
% 
% T = readtable('am_out.csv');
% figure;
% x = T{:,2};
% y = T{:,3};
% plot(x(1:30:end),y(1:30:end));
% title('Aspire Meeting room PIR graph');
% xlabel('Timestamp');
% ylabel('PIR');
% 
% L = get(gca,'XLim');
% NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% 
% datetick('x','mmm yyyy','keeplimits', 'keepticks')
% xtickangle(45)
% 
% 
% T = readtable('ty_out.csv');
% figure;
% x = T{:,2};
% y = T{:,3};
% plot(x(1:100:end),y(1:100:end));
% title('Tellus public area PIR graph');
% xlabel('Timestamp');
% ylabel('PIR');
% 
% L = get(gca,'XLim');
% NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% 
% datetick('x','mmm yyyy','keeplimits', 'keepticks')
% xtickangle(45)
% 
% 
% 
% T = readtable('sr_out.csv');
% figure;
% x = T{:,2};
% y = T{:,3};
% plot(x(1:5:end),y(1:5:end));
% title('Staff Room PIR graph');
% xlabel('Timestamp');
% ylabel('PIR');
% 
% L = get(gca,'XLim');
% NumTicks = split(between(L(1),L(2),'months'), 'months') + 1;
% set(gca,'XTick',linspace(L(1),L(2),NumTicks))
% 
% datetick('x','mmm yyyy','keeplimits', 'keepticks')
% xtickangle(45)
