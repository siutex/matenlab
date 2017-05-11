function Dane2 = Zadanie2lis2(Dane)
Dane2 = Dane;
u = Dane2(:,1);
y = Dane2(:,2);
t = Dane2(:,3);
m = [y,u];
TH = arx(m, [2 2 0]);
y_m = idsim(u,TH);
plot(t,y);
hold on;
plot(t,y_m, '*');
end