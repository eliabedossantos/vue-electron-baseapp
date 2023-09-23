- Instalar o NSIS (https://nsis.sourceforge.io/Download)

- Altere a versão e o nome do programa no arquivo config.bat

- Altere o nome do Outfile na linha 2 do arquivo installer.nsi

- Altere na linha 20 do arquivo installer.nsi o nome da pasta onde o programa será instalado (InstallDir $PROGRAMFILES\HelloWorld)

- Altere na linha 53 do arquivo installer.nsi o nome do .exe que está o seu projeto Electron (File "hello-world.exe"). Deverá ser o mesmo que foi alterado no arquivo config.bat

- Execute o arquivo create_build.bat, assim será criado a pasta build com o instalador do seu programa electron

- Execute o arquivo create_installer.bat, assim será criado o instalador do programa final.

- Por fim, execute o arquivo .exe gerado no passo anterior e veja se o programa foi instalado corretamente. O arquivo terá o nome que foi alterado no arquivo installer.nsi em Outfile

- Obs: Caso tenha problemas com o installer.nsi altere o seu nome para installer_old.nsi e tente utilizar o installer_without_modernUI.nsi alterando o nome desse arquivo para installer.nsi e execute o create_installer.bat. Ele irá gerar o instalador sem a interface moderna. Lembre-se de fazer o mesmo processo de alteração de nome do arquivo .exe e etc no novo arquivo installer.nsi

