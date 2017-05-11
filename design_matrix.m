%--------------------------------------------------------------------------
%------------  Metody Systemowe i Decyzyjne w Informatyce  ----------------
%--------------------------------------------------------------------------
% Zadanie 2: Regresja liniowa
% autorzy: A. Gonczarek, J.M. Tomczak
% 2013
%--------------------------------------------------------------------------

function DesignMatrix = design_matrix( xTrain, M )
% Funkcja wylicza Design Matrix dla wielomianu rzedu M
% xTrain - ciag treningowy Nx1
% M - stopien wielomianu 0,1,2,...

N = size(xTrain,1);
DesignMatrix = zeros(N,M+1); 

%--------------------------------------------------------------------------
%--------------------- TUTAJ WLASNA IMPLEMENTACJA -------------------------
%--------------------------------------------------------------------------
for i=1:size(DesignMatrix,1)
    for j=1:size(DesignMatrix,2)
        if j==1
            DesignMatrix(i,1)=1;
        else
            DesignMatrix(i,j)=(xTrain(i))^(j-1);
        end
    end
end



%--------------------------------------------------------------------------

end