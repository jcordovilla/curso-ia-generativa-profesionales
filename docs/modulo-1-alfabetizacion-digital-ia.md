## Propósito del módulo

Este primer módulo existe para que nadie se quede fuera por “cosas básicas” que casi nunca se explican: qué es una plataforma no-code, por qué me pide una API key, qué diferencia hay entre un trigger y una acción, y cómo probar un flujo sin romper nada de la empresa. Está pensado específicamente para profesionales senior que vienen de negocio, consultoría o dirección y que **sí son competentes digitalmente**, pero **no están acostumbrados a interfaces cambiantes ni a configurar servicios online cada semana**.

La idea es bajar la ansiedad técnica y construir un terreno común antes de pasar a automatizaciones más interesantes.

---

## Resultados de aprendizaje al finalizar el módulo

Al terminar, el participante será capaz de:

1. **Reconocer los componentes básicos de un flujo no-code/low-code**: disparador (trigger), paso de IA, salida.
2. **Conectar una herramienta de uso diario** (p. ej. Google Sheets o Email) a una plataforma de automatización guiándose por la documentación.
3. **Entender qué es una credencial / API key** y cuál es el procedimiento correcto para pedirla o protegerla en su organización.
4. **Probar un flujo con datos de ejemplo** y leer los mensajes de error más frecuentes.
5. **Describir el flujo en lenguaje de negocio**, de forma que un técnico pueda revisarlo o replicarlo.

---

## Enfoque pedagógico específico para perfiles senior

- **Contexto primero, herramienta después**: no vamos a “clicar hasta que funcione”. Primero se explica qué vamos a automatizar y por qué es útil en el trabajo real (ej.: “recibo un correo → quiero un resumen → que se guarde en un docs compartido”).
- **Pasos cortos y repetibles**: la misma secuencia (crear flujo → añadir trigger → añadir acción → probar → guardar) se repetirá dos veces con ejemplos distintos. La repetición ayuda a fijar.
- **Vocabulario estable**: en este módulo elegimos las palabras que usaremos en el resto del itinerario: *flujo, trigger, acción, conector, credencial, ejecución de prueba*.
- **Tolerancia al error guiada**: incluimos una sección “si ves este mensaje, haz esto” porque muchos abandonos se producen justo cuando aparece el primer error.
- **Material descargable**: checklist de “antes de crear un flujo” y otra de “después de crear el flujo”.

---

## Contenidos del módulo

### 1. Qué es un flujo de automatización con IA
- Definición operativa: “una secuencia de pasos que se ejecuta sola cuando pasa algo”.
- Diferencia entre un flujo “puro” (sin IA) y un flujo con IA (hay un paso que llama a un modelo con un prompt).
- Ejemplos del día a día:
  - Cuando llegue un email con informe → pásalo por IA para que lo resuma → envíamelo a Slack.
  - Cuando haya una nueva fila en Sheet de leads → clasifícala con IA → márcala como A/B/C.

### 2. Componentes básicos
- **Trigger (disparador):** recibe el evento. Ej.: “nuevo email”, “nueva fila”, “mensaje de WhatsApp”.
- **Acción / tarea:** lo que hace el flujo. Ej.: “enviar a IA”, “guardar en documento”, “enviar mensaje”.
- **Salida:** dónde quiero ver el resultado. Ej.: email, chat, documento, CRM.
- **Conectores:** piezas ya hechas para hablar con otros servicios (Gmail, Drive, Slack, Notion, etc.).
- **Paso de IA:** nodo o bloque que envía un texto a un modelo y recibe una respuesta.

### 3. Credenciales y seguridad básica
- Qué es una **API key** y por qué la pide la herramienta.
- Diferencia entre credenciales personales y credenciales corporativas.
- Buenas prácticas mínimas:
  - No pegar la API key en documentos compartidos.
  - Guardarla en el almacén seguro de la propia plataforma (n8n, Make, Zapier tienen uno).
  - Si la empresa es estricta, pedir a IT una “cuenta técnica”.
- Mini-guía de cómo pedirlo a IT: “necesito conectar nuestra cuenta de Google a n8n para leer una hoja; el flujo solo leerá, no modificará”.

### 4. Ejecución de prueba y lectura de errores
- Por qué hay un botón de “Run once / Ejecutar una vez”.
- Errores más habituales:
  - “Authentication failed” → credenciales.
  - “Rate limit / demasiadas peticiones” → IA o servicio externo.
  - “Missing field / falta un campo” → el trigger no trae el dato esperado.
- Cómo documentar el error para pedir ayuda (captura + breve descripción).

### 5. Descripción funcional del flujo
- Plantilla corta de documentación:
  - **Nombre del flujo**
  - **Objetivo de negocio**
  - **Trigger**
  - **Acciones**
  - **Salida**
  - **Dependencias / credenciales**
- Esta plantilla es la que luego se incluirá en el repositorio o en la wiki del equipo.

---

## Actividad práctica guiada

**Título:** “Del email al resumen”

1. Crear un flujo nuevo.
2. Añadir un trigger de correo entrante (o, si no se puede, un trigger manual para no depender de permisos).
3. Añadir un paso de IA con un prompt sencillo:
   > “Actúa como asistente de dirección. Resume este mensaje en 5 puntos y añade una acción recomendada.”
4. Añadir una salida (por ejemplo: enviar el resultado por email a uno mismo).
5. Ejecutar una prueba.
6. Documentar el flujo usando la plantilla.

**Variantes para gente con menos confianza técnica:**
- En lugar de correo real, usar un webhook o un “execute manually” y pegar ahí el texto.
- En lugar de enviar email al final, guardar en una nota o en un campo de la propia plataforma.

---

## Material de apoyo recomendado

> Nota: aquí se listan recursos que explican exactamente este tipo de pasos para no-code. En el documento final (o en mkdocs) se pueden convertir en una sección “Recursos”.

- Documentación de inicio rápido de una plataforma de automatización (n8n, Make o Zapier) con ejemplos de un solo flujo.
- Guía de la plataforma sobre **credential management** para usuarios no técnicos.
- Vídeo corto de demostración grabado por el propio formador con la misma versión de la herramienta que verán los participantes (esto es importante porque las interfaces cambian).
- Checklist en formato Markdown:
  - [ ] Tengo claro cuál es mi trigger.
  - [ ] Sé qué datos necesito que salgan.
  - [ ] Tengo o sé cómo pedir las credenciales.
  - [ ] He probado el flujo una vez.
  - [ ] He documentado el flujo.

---

## Cierre del módulo

El módulo se considera completado cuando el participante:
1. Ha creado **al menos un flujo** que se ejecuta sin error.
2. Ha documentado ese flujo en la plantilla.
3. Ha sido capaz de explicar en voz alta qué parte hace la IA y qué parte hace la automatización.
4. Ha guardado sus credenciales de forma segura o ha dejado constancia de que necesita la ayuda de IT.

A partir de aquí, el Módulo 2 podrá centrarse ya en **automatizaciones de negocio más ricas** (ramificaciones, clasificación, envío a CRM) sin tener que volver a explicar qué es un trigger o por qué falló la autenticación.
