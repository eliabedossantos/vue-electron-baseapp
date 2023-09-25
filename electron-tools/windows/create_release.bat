call config.bat

cd ../..

rmdir /s /q dist_electron

%NODE_PATH% npm run electron:release

pause

