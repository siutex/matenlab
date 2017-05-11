%--------------------------------------------------------------------------
%------------  Metody Systemowe i Decyzyjne w Informatyce  ----------------
%--------------------------------------------------------------------------
% Zadanie 2: Regresja liniowa
% autorzy: A. Gonczarek, J.M. Tomczak
% 2013
%--------------------------------------------------------------------------

function err = mean_squared_error( x, y, w )
% Funkcja blad pomiedzy rzeczywistymi wyjsciami y oraz wyjsciami uzyskanymi
% z wielomianu o parametrach w dla wejsc x
% x - ciag wejsciowy Nx1
% y - ciag wyjsciowy Nx1
% w - parametry modelu (M+1)x1

err = 0; 

%--------------------------------------------------------------------------
%--------------------- TUTAJ WLASNA IMPLEMENTACJA -------------------------
%--------------------------------------------------------------------------

% Skorzystac z funkcji polynomial(x,w)
for i=1:length(x)
    err=err+(y(i)-polynomial(x(i),w))^2;
end

err=err/length(x);



%--------------------------------------------------------------------------

end