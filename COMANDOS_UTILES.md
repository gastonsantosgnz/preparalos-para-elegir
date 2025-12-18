# Comandos Útiles para el Proyecto

## Compilación

### Compilación completa (recomendado)
```bash
# Opción 1: Usando el batch
compilar.bat

# Opción 2: Comandos manuales
pdflatex -interaction=nonstopmode main.tex
biber main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Compilación rápida (sin bibliografía)
```bash
pdflatex -interaction=nonstopmode main.tex
```

### Solo procesar bibliografía
```bash
biber main
```

## Visualización

### Abrir el PDF generado
```bash
# Windows PowerShell
Start-Process main.pdf

# Windows CMD
start main.pdf
```

## Limpieza de archivos auxiliares

### Limpiar archivos temporales (PowerShell)
```powershell
Remove-Item *.aux, *.log, *.out, *.toc, *.bbl, *.bcf, *.blg, *.run.xml -ErrorAction SilentlyContinue
```

### Limpiar TODO excepto el PDF
```powershell
Get-ChildItem -File | Where-Object { $_.Extension -in @('.aux','.log','.out','.toc','.bbl','.bcf','.blg','.xml','.gz') } | Remove-Item
```

## Estructura del Proyecto

### Listar todos los capítulos
```powershell
Get-ChildItem -Directory | Where-Object { $_.Name -like "capitulo*" } | Sort-Object Name
```

### Ver archivos de un capítulo específico
```powershell
Get-ChildItem capitulo1 -Recurse
```

### Contar líneas de todos los archivos .tex
```powershell
Get-ChildItem -Recurse -Filter "*.tex" | ForEach-Object { $lines = (Get-Content $_.FullName).Count; [PSCustomObject]@{File=$_.Name; Lines=$lines} } | Format-Table
```

## Edición

### Crear un nuevo capítulo
```bash
mkdir capitulo8
New-Item -Path "capitulo8\capitulo8.tex" -ItemType File
```

### Buscar texto en todos los capítulos
```powershell
Get-ChildItem -Recurse -Filter "*.tex" | Select-String -Pattern "tu_texto_aqui"
```

## Backup

### Crear un backup del proyecto
```powershell
$fecha = Get-Date -Format "yyyyMMdd_HHmmss"
Compress-Archive -Path *.tex, capitulo*, *.cls, *.bib -DestinationPath "backup_$fecha.zip"
```

### Crear backup solo del PDF
```powershell
$fecha = Get-Date -Format "yyyyMMdd_HHmmss"
Copy-Item main.pdf -Destination "main_backup_$fecha.pdf"
```

## Información del Proyecto

### Ver información del PDF generado
```powershell
Get-Item main.pdf | Select-Object Name, Length, CreationTime, LastWriteTime | Format-List
```

### Convertir tamaño a formato legible
```powershell
$file = Get-Item main.pdf
$size = $file.Length / 1KB
Write-Host "Tamaño: $([math]::Round($size, 2)) KB"
```

## Solución de Problemas

### Si hay errores de compilación
1. Limpia los archivos auxiliares:
```powershell
Remove-Item *.aux, *.log, *.out, *.toc, *.bbl, *.bcf, *.blg, *.run.xml -ErrorAction SilentlyContinue
```

2. Compila de nuevo desde cero:
```bash
compilar.bat
```

### Si Biber da errores
```bash
# Eliminar caché de Biber
Remove-Item -Recurse -Force "$env:TEMP\biber_cache" -ErrorAction SilentlyContinue

# Compilar de nuevo
biber main
```

### Ver los últimos errores del log
```powershell
Get-Content main.log | Select-Object -Last 50
```

## Notas

- Todos estos comandos deben ejecutarse desde la carpeta raíz del proyecto (`C:\Users\LENOVO\Desktop\voc`)
- Los comandos de PowerShell son específicos para Windows
- Si usas Git Bash o WSL, los comandos Unix/Linux estándar también funcionarán

