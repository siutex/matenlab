function f = funkcja3(Dane)
f = Dane;
u = f(:,1);
y = f(:,2);
a = regress(y,u);
b = robustfit(y,u);
y_m = a*u;
y_m2 = b(2)*u + b(1);
plot(u,y,'.');
hold on;
plot(u,y_m,'*');
plot(u,y_m2,'+');
plot(u,y_m);
plot(u,y_m2);
end