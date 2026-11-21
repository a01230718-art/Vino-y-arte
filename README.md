# Landing Page: Experiencias Culturales & Cata de Vinos | Museo Arocena

Esta landing page ha sido desarrollada para validar el interés de mercado en Torreón y la Comarca Lagunera para una propuesta que integra arte, recorridos culturales, catas sensoriales de vino y gastronomía de autor en grupos reducidos (~15 asistentes).

Diseñada bajo los requerimientos del **PRD** y fusionando la dirección visual de **Brand Napa Valley** (elegancia, misticismo vitivinícola, tipografía serif) con **Google Arts & Culture** (narrativa museográfica, tarjetas de exhibición, recorrido curatorial).

---

## 🚀 Cómo ejecutar la página localmente en tu Mac

Tienes varias opciones sumamente sencillas para abrir y ejecutar la página:

### 🌟 Opción 1: Con un solo clic (Recomendada en macOS)
En tu carpeta **Cata**:
1. Busca el archivo **`iniciar_servidor.command`**.
2. Haz **doble clic** sobre él.
3. Se abrirá la Terminal e iniciará automáticamente el servidor local en `http://localhost:8000`, abriendo de inmediato la página en tu navegador predeterminado (Safari, Chrome, etc.).

---

### 💻 Opción 2: Desde la Terminal
Abre tu Terminal, sitúate en la carpeta del proyecto y ejecuta:

```bash
# Con el script de inicio directo:
./start.sh

# O directamente con Ruby (preinstalado en macOS):
ruby ./servidor.rb

# O si tienes Python 3 configurado:
python3 server.py
```

---

### 🌐 Opción 3: Abrir directamente sin servidor
También puedes hacer **doble clic en `index.html`** para abrir el archivo directamente en tu navegador sin necesidad de levantar ningún servicio en segundo plano.

---

## ✨ Características implementadas

- **Diseño Editorial & Responsive (Mobile-First):**
  - Paleta cromática refinada: Borgoña profundo (`#5A1220`), Marfil cálido (`#FAF8F3`), Arena y acentos en Oro envejecido.
  - Tipografía combinada: *Cormorant Garamond* (titulares elegantes) + *Plus Jakarta Sans* (lectura moderna y ágil).
- **Secciones del PRD:**
  1. *Barra superior de aviso:* Aclara que el proyecto está en etapa de validación.
  2. *Header Sticky:* Navegación fluida y botón de llamada a la acción (*CTA*).
  3. *Hero Inmersivo:* Titular contundente («El arte se encuentra con el vino»), subtítulo evocador, métricas clave (cupo de 15 personas).
  4. *Sobre la Experiencia:* Manifiesto cultural y premisa de valor.
  5. *¿Qué vivirás?:* 4 tarjetas estilo Google Arts (Patrimonio, Cata guiada, Maridaje, Convivencia).
  6. *El Recorrido Paso a Paso:* Línea de tiempo visual del itinerario tentativo.
  7. *Formato Exclusivo:* Énfasis en el cupo reducido para una experiencia personalizada.
  8. *Formulario de Registro de Interés (Conversión MVP):*
     - Validación en tiempo real (Nombre, correo, WhatsApp a 10 dígitos, consentimiento legal).
     - Preferencia de contacto (Correo vs. WhatsApp) y temas de interés (precios, fechas, vinos, etc.).
     - Trampa anti-bots (*Honeypot* invisible).
     - Almacenamiento seguro en `localStorage` con detección de duplicados.
  9. *Panel Interno de Leads para el Equipo (RF-10):*
     - Botón accesible en el footer para ver en tiempo real los registros capturados, medir el progreso hacia la meta del PRD (20 registros) y exportar los datos en **CSV** o **JSON**.
  10. *Preguntas Frecuentes (FAQ):* Acordeón interactivo con las dudas estipuladas en el PRD.
  11. *Aviso de Privacidad:* Modal emergente con el texto legal simplificado.

---

## 📁 Estructura de archivos creados

```
Cata/
├── index.html                # Código fuente principal de la Landing Page
├── iniciar_servidor.command  # Lanzador ejecutable con doble clic para Mac
├── servidor.rb               # Servidor web local nativo en Ruby (WEBrick)
├── start.sh                  # Script de inicio para terminal
├── server.py                 # Servidor web local alternativo en Python 3
├── package.json              # Configuración y comandos npm
├── README.md                 # Documentación e instrucciones
├── Brand Napa.md             # Referencia visual 1 (Estilo vitivinícola boutique)
├── Google arts.md            # Referencia visual 2 (Estructura museográfica)
└── PRD_...md                 # Especificaciones y requerimientos del proyecto
```
