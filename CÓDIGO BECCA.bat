@echo off
cls
:menu
cls
color 05

date /t

echo Computador: %computername%        Usuario: %username%
echo.    
echo         .                .                    
echo         :"-.          .-";                    
echo         ^|:`.`.__..__.'.';^|                    
echo         ^|^| :-"      "-; ^|^|                    
echo         :;              :;                    
echo         /  .==.    .==.  \                    
echo        :      _.--._      ;                   
echo        ; .--.' `--' `.--. :                   
echo       :   __;`      ':__   ;      hehehehehe...            
echo       ;  '  '-._:;_.-'  '  :                  
echo       '.       `--'       .'                  
echo        ."-._          _.-".                   
echo      .'     ""------""     `.                 
echo     /`-                    -'\                
echo    /`-                      -'\               
echo   :`-   .'              `.   -';              
echo   ;    /                  \    :              
echo  :    :                    ;    ;             
echo  ;    ;                    :    :             
echo  ':_:.'                    '.;_;'             
echo     :_                      _;                
echo     ; "-._                -" :`-.     _.._    
echo     :_          ()          _;   "--::__. `.  
echo      \"-                  -"/`._           :  
echo     .-"-.                 -"-.  ""--..____.'  
echo    /         .__  __.         \               
echo   : / ,       / "" \       . \ ;           
echo    "-:___..--"      "--..___;-"   
echo.
echo            BECCA SUPPORT
echo  ==================================
echo * 1.Verificar integridade          * 
echo * 2.Verificar Updates              *
echo * 3.Criar plano de perfomance      *
echo * 4.Esvaziar Lixeira               *
echo * 5.Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao4
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao1
cls
sfc /scannow
echo ==================================
echo *     integridade Verificada      *
echo ==================================
pause
goto menu

:opcao3
cls
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo ==================================
echo *     Plano de Energia Criado     *
echo ==================================
pause
goto menu

:opcao2
cls
echo ==================================
echo *     Verificando atualizações   *
echo ==================================
wuauclt.exe /updatenow
pause
goto menu

:opcao5
cls
exit