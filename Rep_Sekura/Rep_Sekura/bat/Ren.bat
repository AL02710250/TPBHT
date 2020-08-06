@echo off
::set /a mes=(%date:~-7,2%) - 1
::SET FECHA=%date:~-4,4%0%mes%

set fecha=%date:~6,4%%date:~3,2%%date:~0,2%



set rutafa= "D:\Paquetes IS\Rep_Sekura\Rep_Sekura\csv\Download\Descargasapp%Fecha%.csv"
set rutafa_= "D:\Paquetes IS\Rep_Sekura\Rep_Sekura\csv\Download\Descargasapp.csv"
set rutafb= "D:\Paquetes IS\Rep_Sekura\Rep_Sekura\csv\Download\ReporteReferidos%Fecha%.csv"
set rutafb_= "D:\Paquetes IS\Rep_Sekura\Rep_Sekura\csv\Download\ReporteReferidos.csv"

if exist %rutafa_% del %rutafa_%
if exist %rutafb_% del %rutafb_%

ren %rutafa% , Descargasapp.csv
ren %rutafb% , ReporteReferidos.csv

if exist %rutafa% del %rutafa%
if exist %rutafb% del %rutafb%


@echo on