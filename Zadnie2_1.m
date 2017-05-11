%funkcja losuj±ca pomiary
function Dane2 = Zadnie2_1(Dane, k)
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
y = Dane(: