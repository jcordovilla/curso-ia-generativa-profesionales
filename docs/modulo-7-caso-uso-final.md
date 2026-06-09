---
date: "2026-02-08"
title: "Módulo 7 - Tu caso de uso"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Módulo 7 - Tu caso de uso

## Diseñar, documentar y ejecutar tu propio proyecto

Este es el módulo de cierre, y es puro trabajo de mesa: una plantilla para que diseñes tu propio caso de uso de principio a fin, con toda la información necesaria para implementarlo tú mismo o entregarlo a un equipo técnico.

---

## 1. Plantilla completa de caso de uso

Copia esta plantilla y rellénala con tu proyecto. No hace falta que esté perfecto al primer intento: es un documento vivo que irás refinando.

---

### Ficha de caso de uso

**Nombre del proyecto:** *(ej: Resumen automático de correos de clientes)*

**Propósito:** ¿Qué problema resuelve? ¿Qué tarea automatiza o mejora?

**Destinatario:** ¿Quién va a usar el resultado? ¿Dirección? ¿Equipo comercial? ¿Operaciones?

**Patrón de IA:** *(elige uno o varios)*
- Resumir
- Clasificar
- Extraer
- Conversar

**Entradas:**
- ¿De dónde vienen los datos? *(correo, CRM, SharePoint, formulario…)*
- ¿Qué formato tienen? *(texto libre, PDF, tabla…)*
- ¿Con qué frecuencia llegan? *(continuo, diario, semanal…)*

**Procesamiento IA:**
- ¿Qué modelo usarás? *(GPT-5.5, Claude Sonnet 4.6, modelo local…)*
- ¿Cuál es el prompt? *(escríbelo completo, con rol, formato, idioma y comportamiento ante información faltante)*
- ¿Necesita acceso a documentos? *(si es así, ¿cuáles?)*

**Salidas:**
- ¿Dónde se entrega el resultado? *(Slack, email, hoja de cálculo, CRM…)*
- ¿En qué formato? *(lista, párrafo, JSON, tabla…)*

**Restricciones:**
- ¿Qué datos NO se pueden compartir con la IA?
- ¿Hay requisitos de idioma o tono?
- ¿Quién puede acceder al resultado?

**Responsable funcional:** *(persona que revisa que siga funcionando)*

**Herramientas necesarias:**
- Plataforma de automatización: *(n8n / Make / Zapier / ninguna)*
- Modelo de IA: *(proveedor y plan)*
- Otros servicios: *(Google Sheets, Slack, CRM…)*

**Credenciales necesarias:**
- API key del modelo de IA
- Conexión al servicio de entrada *(email, CRM…)*
- Conexión al servicio de salida *(Slack, Sheets…)*
- Otras: ___

**Métricas de éxito:**
1. Uso: *(ejecuciones esperadas por semana)*
2. Ahorro estimado: *(horas/semana o euros/mes)*
3. Calidad: *(cómo medirás si el resultado es útil)*
4. Errores aceptables: *(qué tasa de fallo es tolerable)*

---

## 2. Ficha de documentación para IT

Si necesitas que el equipo técnico formalice tu prototipo, entrégales esta ficha junto con la plantilla anterior:

| Campo | Contenido |
|-------|-----------|
| **Objetivo de negocio** | *(qué problema resuelve, en una frase)* |
| **Flujo actual** | *(dónde se ejecuta hoy: n8n, Make, asistente manual…)* |
| **Dolor actual** | *(qué no funciona: credenciales personales, límites de ejecución…)* |
| **Necesidad técnica** | *(qué se necesita: endpoint, despliegue, base de datos, monitorización…)* |
| **Entradas esperadas** | *(formato y origen de los datos)* |
| **Salidas esperadas** | *(formato y destino del resultado)* |
| **Restricciones** | *(privacidad, idioma, normativa)* |
| **Prompt** | *(versión exacta del prompt que se está usando)* |
| **Modelo** | *(proveedor, nombre del modelo, parámetros relevantes)* |

Con esta información, el equipo técnico no tiene que adivinar nada.

---

## 3. Qué viene después

La IA generativa evoluciona rápidamente. Estas son las tendencias que vale la pena seguir:

### Modelos locales cada vez más capaces
Modelos como Llama 4, Gemma 4, Mistral y Qwen 3 ya compiten con los modelos comerciales en muchas tareas, y los más ligeros corren en un portátil reciente. Ejecutarlos en tu máquina da privacidad total y elimina costes de API. La brecha de calidad se reduce cada trimestre.

### Multimodalidad madura
Los modelos ya procesan texto, imágenes, audio y documentos escaneados. La transcripción de reuniones, el análisis de fotos de obra y la extracción de datos de facturas escaneadas son posibilidades reales hoy.

### Agentes autónomos
Sistemas que ejecutan acciones, no solo responden preguntas: reservar una reunión, actualizar un CRM, generar un informe y enviarlo. Ya son una realidad cotidiana, aunque conviene vigilarlos de cerca: cuanta más autonomía les das, más importa el criterio con que defines lo que pueden y no pueden hacer.

### MCP como estándar de hecho
El Model Context Protocol ya es la forma estándar de conectar modelos con herramientas, y lo soportan los principales proveedores. Elegir un asistente de IA empieza a parecerse a elegir un navegador: todos acceden a los mismos servicios, y la diferencia está en cómo los usas.

### Voz como interfaz
La interacción por voz con modelos de IA ya funciona razonablemente. "Oye asistente, resúmeme los correos del proyecto Madrid" será una forma habitual de trabajar.

---

## 4. El toolkit del profesional en 2026

Un resumen de herramientas y cuándo usar cada una:

| Necesidad | Herramienta | Cuándo |
|-----------|-------------|--------|
| Chatear con IA | ChatGPT, Claude, Gemini | Consultas rápidas, brainstorming, redacción |
| Automatizar sin código | n8n, Make, Zapier | Flujos repetitivos entrada → IA → salida |
| Asistente con documentos | GPTs, Claude Projects, Gemini Gems | Consultas sobre procedimientos, FAQ internas |
| Construir herramientas | Claude Code, Cursor | Prototipos, scripts, sistemas personalizados |
| Conectar herramientas con IA | MCP | Integración estándar con correo, documentos, bases de datos |
| IA privada | Ollama, LM Studio | Datos sensibles, sin costes de API |
| Transcripción | Whisper, servicios integrados | Reuniones, notas de voz |
| Buscar en documentos | RAG (propio o vía plataforma) | Cuando tienes más de 10 documentos relevantes |

---

## 5. Lleva un registro de tu propio avance

Una última idea, quizá la más fácil de pasar por alto. Lleva un registro de lo que vas construyendo y aprendiendo: qué probaste, qué funcionó, qué te atascó. No hace falta nada sofisticado, un documento basta.

El salto de "uso ChatGPT" a "tengo un sistema que trabaja conmigo" se ve cuando miras atrás, no mientras ocurre. Y solo puedes mirar atrás si lo has registrado. Yo no me di cuenta de cuánto había avanzado hasta que un día leí mis propias notas de unos meses antes y no reconocí al que las había escrito. Tu propia trayectoria es un activo: trátala como tal.

---

## 6. Cierre del curso

Tres competencias que ya tienes:

1. **Autonomía digital:** sabes usar la IA para resolver problemas reales de tu entorno laboral, elegir las herramientas adecuadas y proteger la información.

2. **Criterio técnico:** entiendes qué te ofrecen los proveedores, cómo evaluar si lo necesitas y cómo hablar con los equipos que implementan.

3. **Capacidad de transferencia:** tienes un caso de uso documentado, listo para compartir, escalar o entregar a IT.

> [!abstract] Cierre
> La IA amplifica tu experiencia profesional. Lo que has aprendido en estos siete módulos es una forma nueva de trabajar que premia a quienes combinan criterio profesional con curiosidad técnica. Y esa combinación la tienes tú. El resto es ponerse: elige una tarea que te duela, móntala y mejórala. Así empezó todo lo que hoy te he contado.

---

> [!info] Para profundizar
> - [The GenAI Divide: State of AI in Business 2025: MIT NANDA](https://nanda.media.mit.edu/ai_report_2025.pdf): Por qué el 95% de las organizaciones no obtienen ROI medible de GenAI.
> - [AI Index Report: Stanford HAI](https://aiindex.stanford.edu/report/): Datos anuales del panorama global de IA.
> - [What We Learned from a Year of Building with LLMs: O'Reilly](https://www.oreilly.com/radar/what-we-learned-from-a-year-of-building-with-llms-part-i/): Lecciones de seis profesionales sobre lo que funciona y lo que no en producción.
> - [Ethan Mollick: One Useful Thing](https://www.oneusefulthing.org/): El blog más accesible y actualizado sobre el impacto real de la IA en el trabajo.
