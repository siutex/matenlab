%--------------------------------------------------------------------------
%------------  Metody Systemowe i Decyzyjne w Informatyce  ----------------
%--------------------------------------------------------------------------
% Zadanie 2: Regresja liniowa
% autorzy: A. Gonczarek, J.M. Tomczak
% 2013
%--------------------------------------------------------------------------

function [w train_err val_err] = model_selection( xTrain, yTrain, xVal, yVal )
% Funkcja wybiera rzad modelu M i zwraca parametry w, dla ktorych model 
% najlepiej generalizuje dane, tj. daje najmniejszy blad na ciagu 
% walidacyjnym, zwraca blad na ciagu treningowym i walidacyjnym.

% xTrain - ciag treningowy wejscia 
% yTrain - ciag treningowy wyjscia 
% xVal - ciag walidacyjny wejscia 
% yVal - ciag walidacyjny wyjscia

w = [];
train_err = inf;
val_err = inf;

for m=0:7
    
%--------------------------------------------------------------------------
%--------------------- TUTAJ WLASNA IMPLEMENTACJA -------------------------
%--------------------------------------------------------------------------

[wW,Ttrain_err]=least_squares( xTrain, yTrain, m );
tvErr = mean_squared_error( xVal, yVal, wW );
if tvErr<val_err
    val_err = tvErr;
    w=wW;
    train_err=Ttrain_err;
end





%--------------------------------------------------------------------------

end
end