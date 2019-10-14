@echo off
title Updating Software
cls

sudo cup all
scoop update *
mkdir C:\setup-temp\
curl https://raw.githack.com/psharma04/Content-Delivery-Network/master/fileshare/ninite-installer.exe --output C:\setup-temp\ninite-installer.exe
start C:\setup-temp\ninite-installer.exe

del C:\cmd_extensions\updates.cmd
curl https://csec-cdn.intranet.pw/fileshare/updates.cmd > C:\cmd_extensions\updates.cmd

echo Updates completed!!!
echo Restarting the computer is recommended.
timeout -t 300 > nul
exit