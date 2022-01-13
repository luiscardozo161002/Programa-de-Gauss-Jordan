% Lenguage       Octave Script
% Title			:Método de Eliminación de Gauss Jordan
% Description   :Script para la solución de un sistema de ecuaciones de 3x4 por eliminación gaussiana   
% Author		:Luis Gerardo Cardozo Carranza(@Rardo_Dev) luiscardozo161002@gmail.com
% Date			:20220113
% Verssion		:1
% Usage			:octave> /path/Gaussiana
% Notes			:Requiere aplicacion octave usar en consola preferentemente

%Limpia pantalla
clc
%Limpia varibles de la pantalla
clear all
%La funcion disp nos permite imprimir el mensaje en el espacio de trabajo, el título del tema 
disp('::Metodo de Eliminacion de Gauss Jordan::');
%Imprimimos el mensaje de instrucciones
disp('::Ingrese la Matriz Aumentada::');
%La funcion input nos permite ingresa la matriz aumentada A∗=(A|b) (valore de los coeficientes|valores de los terminos indipendiente)
luisA=input ('A x=(A|b): ');
%Desarrollo de un ciclo anidado for para trabajar con filas y columnas de la matriz-[nxm]
%Hacemos un for que va desde la casilla 1,1 hasta n,1 
for i=1:length(luisA(:,1)) 
    %Condicionamos sí el pivote es distinto a 1
     if luisA(i,i)~=1 
    %Lo dividimos entre el mismo para obtener el pivote en 1 
        luisA(i,:)= luisA(i,:)./luisA(i,i);
    %Fin del condicional  
     end 
%Hacemos un for anidado desde el (1,1) 
for j=1:length(luisA(:,1)) 
    %Sí j es diferente a i significa que no esta en el pivote
    if j~=i  
    %Hacemos 0 las fila 
      luisA(j,:)=-luisA(j,i).*luisA(i,:)+luisA(j,:);
    %Imprimimos el resultado de la matriz en el espacio de trabajo 
     disp(luisA)
    %Espacio entre resultados de matriz 
     disp('') 
    end %if
end %for anidado
end %for
