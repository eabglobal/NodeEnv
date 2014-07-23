@echo off
@SET PATH=%PATH%;%~dp0
node "%~dp0.\node_modules\grunt-cli\bin\grunt" %*
