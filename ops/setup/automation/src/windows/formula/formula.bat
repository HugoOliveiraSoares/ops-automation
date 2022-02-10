@echo off
SETLOCAL

call:%~1
goto exit

:runFormula
  echo Definindo/Atualizando credenciais

  rit set credential --provider="teste" --fields="username,password" --values="%RIT_INPUT_TEXT%,%RIT_INPUT_PASSWORD%" 

  goto exit

:exit
  ENDLOCAL
  exit /b 0
