
# WellnessTrack

Este es el repositorio completo para el proyecto WellnessTrack, cuenta con las diferentes Guías de usuario y Documentación, además de los scripts de automatización.

## Instalación automatizada

Para lanzar el proyecto completo hay dos opciones:

- Opición 1: Instalación desde 0

En esta opcion partimos de que no tenemos nada instalado, como si fuera un sistema recién instalado.

Debemos ejecutar el primer script llamado "instalarRequisitos.sh" para que descargue todas lo que necesita el proyecto para funcionar al completo.

```bash
  chmod +x instalarRequisitos.sh
  ./instalarRequisitos.sh
```

Esto nos descargara todo lo necesario y además nos clonara los repositorios en una carpeta hermana desde la que realizamos esta ejecución, la nueva carpeta se llamara ProyectoWellnessTrack en la que encontraremos los repositorios "WellnessTrack-api" y "WellnessTrack-angular".

- Opición 2: Contamos todo descargado e instalado

Para esta opción debemos tener el siguiente árbol de carpetas.

WellnessTrack-completo (carpeta de este repositorio)

ProyectoWellnessTrack (carpeta hermana con los repositorios WellnessTrack-api y WellnessTrack-angular descargados)

Si ya contamos con todo lo necesario descargad, instalado y listo para funcionar solo tenemos que lanzar nuestro docker, api y Angular.

Debemos encontrarnos en la carpeta WellnessTrack-completo y ejecutar los siguientes comandos

```bash
  chmod +x lanzarSistema.sh
  ./lanzarSistema.sh
```

Este script nos lanzará el docker con Lampp funcionando, la api corriendo y nos abrirá la ventana de nuestro navegador predeterminado con Angular.

## Instalación manual

Para la instalación manual de alguno de los apartados recomendamos dirijirse a README del repositorio de dicho apartado:

- [WellnessTrack - Angular ](https://github.com/hehedaniel/WellnessTrack-angular?tab=readme-ov-file#wellnesstrack---angular)
- [WellnessTrack - api ](https://github.com/hehedaniel/WellnessTrack-api?tab=readme-ov-file#wellnesstrack---api)
