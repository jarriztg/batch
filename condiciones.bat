@echo off
title Condiciones
echo Escriba su opci¢n
echo 1) Repetir texto
echo 2) Restar un n£mero
set/P opcion=
if %opcion%==1 (goto mensaje && goto repetidor)
if %opcion%==2 (goto restador)

:mensaje
cls
echo Escribe el texto a copiar

:repetidor
set/P texto=""
echo %texto%
echo.
goto repetidor
exit

:restador
cls
echo ¨Qu‚ n£mero es el primero?
set/P primero=
echo ¨Y el segundo?
set/P segundo=
set/a final=%primero%-%segundo%
echo.
echo El resultado es %final%
echo.
echo Pulse enter para hacer otra resta
pause>null
goto restador
