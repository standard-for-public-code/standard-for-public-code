# Estándar para el Código Público

IMPORTANTE: Este repositorio cuenta con una traducción al español del Standard for Public Code o Estándar para el Código Abierto. Esta traducción refleja la versión 0.2.1 del Estándar para el Código Abierto. Puede encontrar la última versión actualizada del Estándar en inglés en [el repositorio oficial de dicho documento](https://github.com/publiccodenet/standard).

![version 0.2.1](https://img.shields.io/badge/version-0.2.1-red.svg)

## Contribuye

Creemos que las políticas públicas y el software deben ser inclusivos, utilizables, abiertos, legibles, responsables, accesibles y sostenibles. Esto significa que necesitamos una nueva forma de diseñar, desarrollar y adquirir tanto el código fuente como la documentación de las políticas.

Este estándar establece un nivel de calidad para las codebases que satisface las necesidades de las organizaciones, instituciones y administraciones públicas, así como de otros servicios infraestructurales críticos.

El estándar vive en [standard.publiccode.net](https://standard.publiccode.net/). Echa un vistazo a [`index.md`](index.md) para una idea general del contenido.

[![Thumbnail for the video on the Standard for Public Code: a printed version lying on a table between two hands](https://img.youtube.com/vi/QWt6vB-cipE/mqdefault.jpg)](https://www.youtube.com/watch?v=QWt6vB-cipE)

[Una introducción al Estándar para el Código Abierto - Creative Commons Global Summit 2020 (4:12) en YouTube](https://www.youtube.com/watch?v=QWt6vB-cipE)

## Ayuda a mejorar el estándar

Estamos buscando a personas como tú para [contribuir](CONTRIBUTING.md) a este proyecto a través de la sugerencia de mejoras y soporte en cuanto al desarrollo del mismo. 😊 Puedes comenzar leyendo nuestra [contributors guide](CONTRIBUTING.md). Dado que se trata de un documento clave, aceptaremos contribuciones cuando añadan un valor significativo. Hemos descrito cómo gestionamos la comunidad entorno al estándar en el [governance statement](GOVERNANCE.md).

Por favor ten en cuenta que este proyecto ha sido publicado con un [contributor code of conduct](CODE_OF_CONDUCT.md). Cuando participas en el proyecto aceptas cumplir dichos términos. Por favor, sé amable con el resto de personas implicadas en el proyecto.

## Previsualizar, construir y desplegar

El repositorio se construye en un sitio estático desplegado en [standard.publiccode.net](https://standard.publiccode.net/). Está construido con [GitHub pages](https://pages.github.com) y [Jekyll](https://jekyllrb.com/).

Ve los scripts en la carpeta `script`.

## Generar un PDF del Estándar de Código Abierto

Usando [Weasyprint](https://weasyprint.org/) la carpeta `print.html` puede ser convertida en un PDF decente.

```bash
weasyprint http://localhost:4000/print.html standard.pdf
```

## Licencia

© [Los autores y contribuyentes](AUTHORS.md)

El estándar cuenta con una [licencia](LICENSE.md) CC 0, la cual también se extiende a todas las ilustraciones y la documentación. Esto significa que cualquier persona puede hacer lo que considere con el documento. Si tú contribuyes, también adquieres dichos derechos applies to all illustrations and the documentation. This means anyone can do anything with it. Si contribuyes, también concedes estos derechos a otros. Puedes encontrar más información sobre cómo ayudar en la [contributing guide](CONTRIBUTING.md).
