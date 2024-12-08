# WellnessTrack Deployment

## Introducción

Este proyecto utiliza Docker para implementar un sistema compuesto por un backend y un frontend. Proporciona scripts para automatizar la configuración y ejecución de los servicios necesarios, incluyendo la instalación de dependencias como Docker y Docker Compose.

## Tabla de Contenidos

- [Instalación](#instalación)
  - [Opción 1: Instalación con `lanzarDockerProyecto.sh`](#opción-1-instalación-con-lanzardockerproyectossh)
  - [Opción 2: Instalación por paquetes con `instalarRequisitos.sh`](#opción-2-instalación-por-paquetes-con-instalarrequisitoss)
- [Uso](#uso)
- [Características](#características)
- [Requisitos Previos](#requisitos-previos)
- [Contribuidores](#contribuidores)
- [Licencia](#licencia)

## Instalación

### Opción 1: Instalación con `lanzarDockerProyecto.sh`

Este script configura automáticamente dos contenedores Docker: uno para el backend y otro para el frontend.

1. **Ejecute el script**:

   ```
   bash lanzarDockerProyecto.sh
   ```

2. **Resultados**:

   - Un contenedor Docker para el backend estará disponible en [http://localhost:8080](http://localhost:8080).
   - Un contenedor Docker para el frontend estará disponible en [http://localhost:4200](http://localhost:4200).

3. **Servicios adicionales**:
   - PhpMyAdmin: [http://localhost:8080](http://localhost:8080).

### Opción 2: Instalación por paquetes con `instalarRequisitos.sh`

Este método instala los paquetes necesarios para configurar el entorno manualmente antes de lanzar el sistema.

1. **Ejecute el script**:

   ```
   bash instalarRequisitos.sh
   ```

2. **Verifique las instalaciones**:
   El script instalará automáticamente Docker, Docker Compose, Node.js, Angular CLI, Composer y otras dependencias necesarias, verificando que todo esté configurado correctamente.

3. **Ejecución del sistema**:
   Luego, use el script `lanzarSistema.sh` para ejecutar el backend y el frontend:

   ```
   bash lanzarSistema.sh
   ```

4. **Resultados**:
   - El backend estará disponible en [http://localhost:8080](http://localhost:8080).
   - El frontend estará disponible en [http://localhost:4200](http://localhost:4200).

## Uso

### Backend

Acceda al backend en [http://localhost:8080](http://localhost:8080).

### Frontend

Acceda al frontend en [http://localhost:4200](http://localhost:4200).

### PhpMyAdmin

Administre bases de datos en [http://localhost:8080](http://localhost:8080).

## Características

- Automatización de la configuración de contenedores Docker.
- Scripts detallados para facilitar la instalación y configuración.
- Separación clara entre backend y frontend.

## Requisitos Previos

- Sistema operativo basado en Linux.
- Permisos de superusuario (sudo).
- Conexión a internet (para descargar dependencias y contenedores).

## Contribuidores

- **Daniel** - [GitHub](https://github.com/hehedaniel)
