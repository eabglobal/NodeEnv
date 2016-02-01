@echo off
@SET PATH=%PATH%;%~dp0
node "%~dp0..\..\packages\nodeenv.1.0.5\npm\bin\npm-cli.js" %*
