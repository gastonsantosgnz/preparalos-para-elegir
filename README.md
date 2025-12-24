# Guía para padres: Ayudando a hijos adolescentes a elegir su carrera universitaria

**Autor:** Gastón Santos G.

## Descripción del Proyecto

Este libro está diseñado para ayudar a los padres de familia de México y Latinoamérica a orientar a sus hijos adolescentes en la importante decisión de elegir una carrera universitaria.

Basado en investigación profunda con métodos, teorías, estadísticas y ejemplos prácticos, el libro aborda temas como:
- La influencia de la familia en la elección de carrera
- Orientación vocacional: métodos, estudios y marcos teóricos
- Presiones sociales, prestigio y factores económicos
- Desarrollo de habilidades y exploración de intereses
- Estrategias prácticas y consejos para padres
- Historias de éxito y fracaso: lecciones de casos reales
- La importancia del acompañamiento en México y Latinoamérica

## Estructura del Libro

El libro está organizado en **7 capítulos**, cada uno en su propia carpeta:

```
voc/
├── capitulo1/         # Capítulo 1
├── capitulo2/         # Capítulo 2
├── capitulo3/         # Capítulo 3
├── capitulo4/         # Capítulo 4
├── capitulo5/         # Capítulo 5
├── capitulo6/         # Capítulo 6
├── capitulo7/         # Capítulo 7
├── main.tex           # Archivo principal
├── mybook.cls         # Clase personalizada
├── preamble.tex       # Configuraciones
├── copyright-page.tex # Página de derechos
├── bibl.bib          # Bibliografía
└── base.txt          # Investigación base
```

## Cómo Compilar el Proyecto

### Opción 1: Usando el archivo batch (Recomendado para Windows)

Simplemente haz doble clic en:
```
compilar.bat
```

### Opción 2: Línea de comandos

Abre PowerShell o CMD en la carpeta del proyecto y ejecuta:

```bash
pdflatex -interaction=nonstopmode main.tex
biber main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

### Opción 3: Editor de LaTeX

Si usas un editor como TeXstudio, TeXmaker, o Overleaf:
1. Abre el archivo `main.tex`
2. Configura el compilador a **pdfLaTeX**
3. Configura la bibliografía a **Biber**
4. Compila (generalmente F5 o F6)

## Resultado

Después de compilar, obtendrás:
```
main.pdf
```

Este es tu libro completo listo para revisar, editar o imprimir.

## Características Técnicas

- **Fuente:** EB Garamond (elegante fuente serif)
- **Formato:** A4, impresión a doble cara
- **Clase:** Basada en `book` de LaTeX con personalización
- **Bibliografía:** Sistema BibLaTeX con Biber
- **Idioma:** Español (configurado para inglés en babel, pero todo el contenido es en español)

## Próximos Pasos

1. ✅ Estructura de 7 capítulos creada
2. ⏳ Asignar nombres a cada capítulo
3. ⏳ Distribuir el contenido de `base.txt` entre los capítulos
4. ⏳ Añadir imágenes (7 por capítulo)
5. ⏳ Completar la bibliografía en `bibl.bib`

## Notas

- Los capítulos actualmente están vacíos (solo tienen el título genérico)
- La plantilla está lista para recibir contenido
- Se eliminó la referencia a imágenes que ya no existen
- El autor está configurado como Gastón Santos G.

## Contacto y Licencia

Este proyecto utiliza una licencia Creative Commons (configurada en la página de copyright).

---

**¡El proyecto está listo para comenzar a trabajar en el contenido!**

