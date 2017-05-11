%--------------------------------------------------------------------------
%------------  Metody Systemowe i Decyzyjne w Informatyce  ----------------
%--------------------------------------------------------------------------
% Zadanie 2: Regresja liniowa
% autorzy: A. Gonczarek, J.M. Tomczak
% 2013
%--------------------------------------------------------------------------

function [w train_err val_err lambda] = regularized_model_selection( xTrain, yTrain, xVal, yVal, M )
% Funkcja wybiera dla wielomianu rzedu M wybiera parametr regularyzacji 
% i zwraca parametry w, dla ktorych model najlepiej
% generalizuje dane, tj. daje najmniejszy blad na ciagu walidacyjnym,
% zwraca blad na ciagu treningowym i walidacyjnym i wartosc lambda.

% xTrain - ciag treningowy wejscia 
% yTrain - ciag treningowy wyjscia 
% xVal - ciag walidacyjny wejscia 
% yVal - ciag walidacyjny wyjscia
% M - rzad wielomianu

w = [];
train_err = inf;
val_err = inf;
lambda = 0;

for temp_lambda = [0.001 0.003 0.01 0.03 0.1 0.3 1 3 10 30 100 300]
    
%--------------------------------------------------------------------------
%--------------------- TUTAJ WLASNA IMPLEMENTACJA -------------------------
%--------------------------------------------------------------------------
i=1;
[wW,Ttrain_err]=regularized_least_squares( xTrain, yTrain, M, temp_lambda(i));
tvErr = mean_squared_error( xVal, yVal, wW );
if tvErr<val_err
    val_err = tvErr;
    w=wW;
    train_err=Ttrain_err;
    lambda=temp_lambda(i);
end
i=i+1;



%--------------------------------------------------------------------------

end
end