%k = load('dane-1.txt') - �adujemy dane w macierzy z pliku
function f = zad1lis1(Dane)
f = Dane;
u = f(:,1);%pierwsza kolumna macierzy u
y = f(:,2);%druga kolumna macierzy y
a = regress(y,u);% wyznacza estymaty parametr�w, 
%granice przedzia��w ufnosci dla parametr�w, wektor residu�w 
%a tak�e granice przedzia��w ufnosci dla residu�w
%y - wektor syntetycznych danych pomiarowych,
%u - macierz wej��,
b = robustfit(y,u);%tworzy lini� najlepszego dopasowania
y_m = a*u;%model 1
y_m2 = b(2)*u + b(1);%model 2
plot(u,y,'.'); %rysuje wykres danych u i y w postaci punkt�w oznaczonych '.'
hold on;
plot(u,y_m,'*');%rysuje wykres danych u i y_m w postaci punkt�w oznaczonych '*' model 1
plot(u,y_m2,'+');%rysuje wykres danych u i y_m w postaci punkt�w oznaczonych '+'model 2
plot(u,y_m);%rysuje wykres danych u i y_m w postaci linii ci�g�ej model 1
%plot(u,y_m);%rysuje wykres danych u i y_m w postaci linii ci�g�ej model 1
plot(u,y_m2);%rysuje wykres danych u i y_m w postaci linii ci�g�ej model 2
end