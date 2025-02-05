# Terraform - Implementación de una Página Web en S3

## Descripción del Proyecto
Este proyecto utiliza **Terraform** para desplegar una página web estática en **S3**. Se crea un bucket de S3 que aloja el sitio web y se genera automáticamente una URL pública para acceder a la página.

---

## Tecnologías Utilizadas
- **Terraform** (para la infraestructura como código)
- **S3** (para alojar la página web estática)

---

## Flujo de Implementación

### 1️⃣ **Configuración de la Región AWS**
El proyecto está configurado para ejecutarse exclusivamente en la región `us-east-1`. Se valida que la región ingresada sea correcta antes de proceder con la creación de recursos.

### 2️⃣ **Creación del Bucket S3**
Terraform define un módulo `s3_website` que crea un bucket de S3 donde se almacena la página web. El bucket es nombrado dinámicamente según el workspace de Terraform.

### 3️⃣ **Carga de la Página Web**
El bucket está configurado para servir archivos estáticos, utilizando `index.html` como página principal.

### 4️⃣ **Generación de Salidas (Outputs)**
Después de la implementación, Terraform muestra las siguientes salidas:
- **ARN del bucket**
- **Nombre del bucket**
- **URL pública del sitio web**
---

## 🎯 Conclusión
Este proyecto automatiza el despliegue de una página web estática en S3 utilizando Terraform. Permite una gestión eficiente de la infraestructura y facilita el acceso público al sitio web sin necesidad de servidores adicionales.

🚀 **Listo para ser desplegado con Terraform!**

