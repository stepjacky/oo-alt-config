@echo off
cls
if "%NODE_HOME%" NEQ "" goto setRunDir
set NODE_HOME=d:\node-v22.20.0
set path=%path%;%NODE_HOME%
:setRunDir
if "%RUN_DIR%" NEQ "" goto setNodeEnv
SET RUN_DIR=%~dp0
:setNodeEnv
if "%NODE_ENV%" NEQ "" goto setConfigDir
SET NODE_ENV=production-windows
:setConfigDir
if "%NODE_CONFIG_DIR%" NEQ "" goto runapp
SET NODE_CONFIG_DIR=%RUN_DIR%Common\config
:runapp
