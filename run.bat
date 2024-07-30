
@echo off

REM 声明采用UTF-8编码
chcp 65001

:: 检查是否以管理员权限运行
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 请求管理员权限...
    PowerShell -Command "Start-Process '%~dpnx0' -Verb RunAs"
    exit /b
)

echo 原神 启动
start /d"F:\accelerator\LeiGod_Acc" leigod.exe

timeout /t 6