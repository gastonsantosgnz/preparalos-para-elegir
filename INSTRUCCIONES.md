# Instrucciones de Compilación

## Libro: Guía para padres - Ayudando a hijos adolescentes a elegir su carrera universitaria
**Autor:** Gastón G. Santos

## Estructura del Proyecto

El proyecto está organizado en 7 capítulos, cada uno en su propia carpeta:
- `capitulo1/` - Capítulo 1
- `capitulo2/` - Capítulo 2
- `capitulo3/` - Capítulo 3
- `capitulo4/` - Capítulo 4
- `capitulo5/` - Capítulo 5
- `capitulo6/` - Capítulo 6
- `capitulo7/` - Capítulo 7

## Archivos Principales

- `main.tex` - Archivo principal del libro
- `mybook.cls` - Clase personalizada del documento
- `preamble.tex` - Preámbulo con configuraciones
- `copyright-page.tex` - Página de derechos de autor
- `bibl.bib` - Archivo de bibliografía

## Cómo Compilar

### Opción 1: Usar el archivo batch (Windows)
Simplemente haz doble clic en:
```
compilar.bat
```

### Opción 2: Línea de comandos
Ejecuta los siguientes comandos en orden:
```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

### Opción 3: Editor de LaTeX
Si usas un editor como TeXstudio, TeXmaker, o Overleaf:
1. Abre el archivo `main.tex`
2. Configura el compilador a pdfLaTeX
3. Configura la bibliografía a Biber
4. Compila (generalmente F5 o F6)

## Resultado

Después de compilar, obtendrás el archivo:
```
main.pdf
```

## Notas

- El documento usa la fuente EB Garamond
- Está configurado para impresión a doble cara (twoside)
- Incluye tabla de contenidos automática
- La bibliografía se genera automáticamente desde `bibl.bib`

