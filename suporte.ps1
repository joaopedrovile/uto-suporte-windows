# Script de Suporte Técnico Automatizado
# Autor: João Pedro Vilela

Write-Host "Iniciando manutenção..." -ForegroundColor Cyan

# Limpar arquivos temporários
Write-Host "Limpando arquivos temporários..."
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue

# Liberar e renovar IP
Write-Host "Liberando IP..."
ipconfig /release
Start-Sleep -Seconds 2
Write-Host "Renovando IP..."
ipconfig /renew
Start-Sleep -Seconds 2

# Limpar cache DNS
Write-Host "Limpando cache DNS..."
ipconfig /flushdns

# Testar conectividade com o Google
Write-Host "Testando conexão com o Google..."
Test-Connection www.google.com -Count 2

# Mostrar informações de IP local
Write-Host "Exibindo informações de IP:"
ipconfig

# Abrir ferramentas úteis
Write-Host "Abrindo Painel de Controle..."
Start-Process "control.exe"

Write-Host "Abrindo site do Google DNS..."
Start-Process "https://dns.google"

Write-Host "Finalizado!" -ForegroundColor Green
