@echo off
title BTax — Servidor de Desenvolvimento
echo =======================================================================
echo   BTax — O sistema tributario brasileiro, sem complicacao.
echo   Projeto Academico — Ciencia da Computacao UNAMA
echo =======================================================================
echo.
echo Local do codigo: C:\Users\ticoa\.gemini\antigravity\scratch\btax
echo.
echo Abrindo o navegador em http://localhost:5173 ...
cd /d "C:\Users\ticoa\.gemini\antigravity\scratch\btax"
start http://localhost:5173
call npm.cmd run dev
pause