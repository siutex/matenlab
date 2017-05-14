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
%losuje co k-ty
function Dane2 = funkcja(Dane, k)
N = length(Dane(:,1));
tag = zeros(N,1);
Dane2 = zeros(k,3);
i = 1;
while i < k
n = ceil(rand()*N);
if tag(n, 1) == 0
tag(n, 1) = 1;
Dane2(i,:) = Dane(n,:);
i = i + 1;
end
%
end
[val, ind] = sort(Dane2(:, 3));
Dane2 = Dane2(ind, :);
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
%pobiera co k-ty
function Dane2 = funkcja2(Dane, k)
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
