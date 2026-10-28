# Blog del Reto 2 (Econometría II, EAFIT)

Página única, creativa y hecha para que cualquiera la entienda: pregunta, datos, modelo "sin fórmulas", gráficos animados, un simulador interactivo, pruebas de robustez, voces de los hogares encuestados, política pública y glosario. Descargas: informe PDF, código .qmd, base de datos final, resultados y encuesta de campo.

## Estructura
- `index.qmd` + `_pagina.html`: el contenido de la página.
- `descargas/`: los 6 archivos que se ofrecen en el blog (PDF, QMD y 4 tablas en Excel; las tablas también están en CSV).
- `img/`: foto del equipo, foto y video de campo.
- `docs/`: el sitio ya construido (lo que se publica).
- `scripts/exportar_base_y_resultados.R`: genera los CSV desde el informe y la ECV (requiere `full.R`, el código del informe extraído con `knitr::purl`, y `ECV_2025.xlsx`).

## Publicar en línea (elijan UNA opción)

**Opción A: GitHub Pages (no necesita terminal).**
1. Entren a github.com con una cuenta (o creen una gratis) y creen un repositorio **público**, por ejemplo `blog-robledo-reto2`.
2. Pulsen *Add file → Upload files* y arrastren **todo el contenido de esta carpeta** (incluida la carpeta `docs`). Pulsen *Commit changes*.
3. Entren a *Settings → Pages*. En *Branch* elijan `main` y la carpeta **/docs**, y guarden.
4. En 1-2 minutos el sitio queda en `https://TU-USUARIO.github.io/blog-robledo-reto2/`.

**Opción B: Quarto Pub (la que usa el ejemplo de la Candelaria).**
1. Cuenta gratuita en quartopub.com.
2. En esta carpeta: `quarto publish quarto-pub` e inicien sesión cuando se abra el navegador.
3. El enlace queda como `https://USUARIO.quarto.pub/NOMBRE/`.

## Después de publicar
- Abran el enlace en el computador y en el celular. Comprueben que se animan las gráficas, que funciona el simulador y que descargan los 6 archivos.
- Las fotos y el video del trabajo de campo están en `img/` y se muestran en "Voces de Robledo" (`_pagina.html`). Para cambiarlos: reemplacen el archivo y ejecuten `quarto render`.
- Compartan el enlace con el profesor y difúndanlo: el bono depende de las visitas.

## Editar y reconstruir
Cambien `_pagina.html` y ejecuten `quarto render` (necesita Quarto; no usa R en la página, todo está en el HTML).

## Datos
La ECV completa la publica la Alcaldía de Medellín y no se redistribuye aquí; los archivos de datos contienen solo las variables usadas para los 276 hogares.
