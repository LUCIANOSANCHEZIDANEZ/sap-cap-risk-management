# SAP CAP - Risk Management Application (`RiskManagement16`)

Este repositorio contiene un proyecto práctico de gestión de riesgos desarrollado bajo la arquitectura moderna de **SAP Cloud Application Programming Model (CAP)** en entorno Node.js, siguiendo las directrices oficiales de desarrollo en la nube de SAP.

## 🚀 Tecnologías Utilizadas
* **SAP CAP** (Core Data Services - CDS)
* **Node.js** & Express
* **OData V4** (Capa de Servicios)
* **SQLite** (Base de datos local en memoria/fichero)
* **SAP Fiori Elements** (Visualización e interfaz de usuario)

## 📁 Estructura del Proyecto
El proyecto sigue rigurosamente el patrón de diseño de separación de responsabilidades de CAP:
* `/db`: Definición del modelo de datos conceptual (`schema.cds`) y relaciones.
* `/srv`: Exposición de la capa de servicios OData (`service.cds`).
* `/test/data`: Datos de simulación en formato `.csv` para pruebas locales (*Mock Data*).

## 💡 Características Implementadas
1. **Modelado de Datos Avanzado:** Creación de las entidades `Risk16` y `Mitigation16` utilizando tipos de datos SAP estándar.
2. **Relaciones y Asociaciones:** Implementación de asociaciones administradas *To-One* y *To-Many* con claves administradas automáticamente por el framework.
3. **Auditoría Automática (`managed`):** Incorporación del aspecto nativo `@sap/cds/common` para el rastreo automático de auditoría de registros (`createdAt`, `createdBy`, etc.).
4. **Capa de Servicios y Proyecciones:** Exposición de servicios web mediante proyecciones directas en OData V4 deshabilitando el modo *Draft* de edición.
5. **Configuración de Seguridad:** Gestión de usuarios de prueba integrados en el entorno simulado (*Mocked Auth* con el usuario `alice`).

## 🛠️ Instrucciones para Ejecución Local

1. Clonar el repositorio.
2. Instalar las dependencias de Node.js necesarias:
   ```bash
   npm install
   ```
3. Desplegar los modelos e inicializar las tablas en la base de datos local SQLite:
   ```bash
   cds deploy --to sqlite
   ```
4. Arrancar el servidor de desarrollo local en tiempo real:
   ```bash
   cds watch
   ```
5. Acceder a la página de bienvenida a través de `http://localhost:4004` e iniciar la previsualización en **Fiori Preview** con las credenciales de prueba (`alice` / `alice`).
