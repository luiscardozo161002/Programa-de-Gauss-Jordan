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
disp('--Metodo de Eliminacion de Gauss Jordan--');
%Imprimimos el mensaje de instrucciones
disp('::Ingrese la Matriz Aumentada --- (valore de los coeficientes|valores de los terminos indipendiente)::');
%Ingresamos la matriz aumentada A∗=(A|b) (valore de los coeficientes|valores de los terminos indipendiente)
luis_A=input ('A x=(A|b): ');
%Devuelve la forma escalonada de fila reducida de A usa la eliminación con pivote parcial.
rref(luis_A)

%Ejemplo [1 2 4 5; 4 1 -1 5; 2 5 2 8]
