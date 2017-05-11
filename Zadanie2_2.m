function Dane2 = Zadanie2_2(Dane, k)
N = length(Dane(:,1));
Dane2 = zeros(ceil(N/k),3);
for i = 1:ceil(N/k)
p = min(N,i*k);
Dane2(i,:) = Dane(p,:);
end
u = Dane2(:,1);
y = Dane2(:,2);
t = Dane2(:,3);
M = [y,u];
TH = arx(M,[2 2 0]);
y_m = idsim(u,TH);
plot(t,y_m,'*');
hold on;
y = Dane(:,2);
t = Dane(:,3);
plot(t,y);
end