; Define o nome do instalador e o diretório de saída
Outfile "HelloWorldInstaller.exe"

; Página de seleção de diretório de instalação
Page Directory
Page InstFiles

; Diretório de saída padrão
InstallDir $PROGRAMFILES\HelloWorld

Section
  ; Verifica se o Chocolatey está instalado
  ClearErrors
  DetailPrint "Verificando a instalação do Chocolatey..."
  ExecWait 'where choco'
  IfErrors InstallChocolatey
  Goto InstallDCMTK

InstallChocolatey:
  ; Instala o Chocolatey usando o comando PowerShell
  DetailPrint "Instalando Chocolatey..."
  ExecWait '"powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString($\'https://chocolatey.org/install.ps1$\'))"'
  Goto InstallDCMTK

InstallDCMTK:
  ; Verifica se o DCMTK está instalado
  DetailPrint "Verificando a instalação do DCMTK..."
  ClearErrors
  ExecWait 'where dcmtk'
  IfErrors InstallDCMTKCommand
  Goto InstallYourApp

InstallDCMTKCommand:
  ; Instala o DCMTK usando o Chocolatey
  DetailPrint "Instalando o DCMTK..."
  ExecWait 'choco install dcmtk -y'
  Goto InstallYourApp

InstallYourApp:
  ; Instala o seu projeto Electron
  DetailPrint "Instalando seu projeto Electron..."
  SetOutPath $INSTDIR
  File "hello-world.exe" ; Substitua pelo caminho real do seu arquivo .exe

  ; Executa o aplicativo após a instalação
  ExecWait '"$INSTDIR\hello-world.exe"'

SectionEnd
