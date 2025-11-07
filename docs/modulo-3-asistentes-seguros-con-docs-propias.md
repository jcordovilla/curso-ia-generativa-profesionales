## Propósito del módulo

En los módulos anteriores aprendiste a:
1. Moverte en una plataforma no-code/low-code.
2. Encadenar pasos con IA para automatizar una tarea de negocio.

En este **Módulo 3** vamos a cubrir una necesidad distinta pero muy habitual en perfiles senior: **“quiero un asistente propio que conozca mis documentos y responda como yo / como mi empresa”**. Es decir, no solo usar el chat general, sino **crear un asistente (GPT, bot, copiloto interno)** que:
- tenga instrucciones estables,
- se alimente de documentación propia,
- y sobre todo, **no comprometa información sensible**.

Este módulo está diseñado para que puedas crear ese asistente **sin escribir código** y con criterios claros de seguridad.

---

## Resultados de aprendizaje

Al finalizar este módulo, el participante será capaz de:

1. Explicar qué es un asistente/GPT “configurado” frente a un chat genérico.
2. Crear un asistente con instrucciones, tono y formato de respuesta coherentes con su organización.
3. Incorporar documentación propia (PDF, FAQs, procedimientos) como “conocimiento adicional” del asistente.
4. Aplicar **reglas de seguridad básicas** sobre qué documentos sí y cuáles no deben subirse.
5. Probar el asistente con casos reales (preguntas de negocio, soporte, productos) y ajustar el comportamiento.
6. Documentar el asistente para que otros lo usen sin romper la configuración.

---

## Idea central del módulo

Crear un asistente no es “subir documentos y ya está”. Es **diseñar una conversación controlada** en la que:
- el asistente sabe quién es,
- sabe qué fuentes puede usar,
- responde en un formato concreto,
- y conoce sus límites.

Si se hace así, el asistente es útil. Si no, se convierte en otro chat impredecible.

---

## Contenidos del módulo

### 1. Conceptos clave

- **Asistente / GPT / Bot / Copiloto** (en este contexto): una instancia de un modelo LLM con instrucciones y con acceso a una o varias fuentes de información.
- **Instrucciones del sistema**: texto que le dice al asistente “quién es”, “para quién responde” y “cómo responde”.
- **Conocimiento / archivos / contexto**: documentos que el asistente puede usar para fundamentar su respuesta.
- **Herramienta de acción** (opcional): cosas extra que el asistente puede hacer (navegar, llamar a otra API, crear algo).

Para este módulo nos centraremos en las dos primeras: instrucciones + documentos.

---

### 2. Diseño de las instrucciones

Un buen asistente empieza con un buen bloque de instrucciones. Proponemos una plantilla sencilla, fácil de entender por cualquier miembro del equipo:

> **Rol:** Eres un asistente de [área/empresa] que responde consultas sobre [tema].
>
> **Audiencia:** Profesionales de la empresa, no técnicos.
>
> **Tarea:** Responde siempre basándote en los documentos proporcionados. Si la información no está en los documentos, dilo claramente y sugiere el documento correcto.
>
> **Estilo:** Breve, claro, en español, con viñetas si hay más de 3 puntos.
>
> **Formato:**  
> 1. Resumen (2–3 frases)  
> 2. Detalle con viñetas  
> 3. Fuente usada (nombre del documento)

Esta plantilla se puede pegar tal cual en la herramienta que se esté usando (GPT builder, asistente interno, etc.).

---

### 3. Incorporación de documentación propia

Aquí es donde suelen aparecer las dudas en perfiles senior. Lo descomponemos:

1. **Elegir los documentos adecuados**
   - Empezar por documentos públicos internos o de baja sensibilidad (manuales de producto, FAQs, procedimientos de uso, condiciones comerciales estándar).
   - Evitar documentos con datos personales, sueldos, contratos específicos de clientes, información clasificada.
   - Si el asistente va a ser compartido, asumir que **todo lo que subas podría ser visto o usado fuera de tu control** (principio de prudencia).

2. **Preparar el documento**
   - Revisar que el PDF o el doc tengan un índice o al menos títulos claros.
   - Quitar la portada o páginas que no aportan (a veces confunden al modelo).
   - Si el documento es muy largo, dividir en 2–3 partes más pequeñas.

3. **Subirlo / enlazarlo**
   - Usar el mecanismo que ofrezca la plataforma (subir archivo, conectar drive interno, pegar texto).
   - Comprobar que el asistente identifica el nombre del documento (esto es útil para citar la fuente en la respuesta).

4. **Decirle al asistente que use los documentos**
   - Añadir a las instrucciones: “da prioridad a la información de los documentos adjuntos”.

---

### 4. Seguridad y buenas prácticas

Para que este módulo sea viable en organizaciones reales, añadimos cuatro reglas de oro:

1. **Regla 1 – Clasificar antes de subir:** si no sabes si un documento es sensible, no lo subas en un asistente público. Pídele a IT o al responsable de datos.
2. **Regla 2 – Limitar el alcance:** configura el asistente para un tema concreto (p. ej. “política de viajes”), no para “todo lo que haya en la empresa”. Menos superficie, menos riesgo.
3. **Regla 3 – Transparencia en la respuesta:** pide siempre que cite la fuente para que el usuario pueda comprobarla.
4. **Regla 4 – No clientes reales:** no subir contratos con datos identificables de clientes sin anonimizar.

Estas 4 reglas se pueden dejar escritas en el propio markdown del repositorio para que todos las tengan presentes.

---

### 5. Prueba y ajuste del asistente

Una vez creado el asistente:

1. **Probar con 5–6 preguntas reales** que vengan del trabajo diario (preguntas que sí te hacen). Ej.: “¿Qué condiciones tienen los proyectos AgentOps?”, “¿Cuál es el proceso de alta?”, “¿Qué hago si el cliente pide X?”.
2. **Ver qué documento usó**: si no lo cita o si responde de memoria, reforzar las instrucciones.
3. **Afinar el estilo**: si responde demasiado largo, añadir a las instrucciones “máximo 200 palabras”, o “responde con viñetas”.
4. **Probar con alguien más** del equipo: que otro miembro haga 2–3 preguntas y vea si entiende la respuesta.

---

### 6. Documentación del asistente

Para que otros lo usen sin romperlo, se documenta con esta plantilla:

- **Nombre del asistente:** p. ej. “Asistente de Procedimientos AgentOps”.
- **Propósito:** responder dudas internas sobre procedimientos y documentación.
- **Instrucciones base:** (pegar las instrucciones que pusimos).
- **Documentos cargados:** lista con nombre y fecha.
- **Limitaciones conocidas:** “no responderá sobre casos específicos de cliente”, “no tiene acceso al ERP”.
- **Propietario / responsable:** quién lo creó y quién lo mantiene.

Esta información se puede guardar en el mismo vault de Obsidian que el resto de módulos.

---

## Actividad práctica guiada

**Título:** “Mi asistente de documentación interna”

1. Crear un nuevo asistente / GPT / bot en la plataforma disponible.
2. Pegar la plantilla de instrucciones del apartado 2.
3. Subir 1–2 documentos de referencia de la organización (no sensibles).
4. Hacer 3 preguntas de prueba relacionadas con esos documentos.
5. Ajustar el estilo y el formato.
6. Documentar el asistente con la plantilla del apartado 6.

**Variante seniores con poco tiempo:** el formador entrega ya un asistente preconfigurado y el participante solo cambia las instrucciones y sube sus documentos.

---

## Recursos recomendados

- Plantilla de instrucciones para asistentes (el formador la entrega en markdown).
- Guía interna de la organización sobre clasificación de documentos (si existe).
- Tutorial de la plataforma específica que se vaya a usar (OpenAI GPTs, asistente de la suite corporativa, etc.).
- Lista de “preguntas frecuentes para probar tu asistente” que el grupo pueda reutilizar.
- Hoja de “qué no subir” para recordar las reglas de seguridad.

---

## Criterios de finalización del módulo

El módulo se considera completado cuando el participante:

1. Ha creado un asistente con instrucciones claras.
2. Ha añadido al menos un documento propio.
3. Ha probado el asistente con varias preguntas reales.
4. Ha documentado el asistente para compartirlo con el resto del equipo.

A partir de aquí, el **Módulo 4** podrá introducir la parte “puente hacia lo técnico” (qué es una API, qué es un endpoint, cómo se integraría este asistente en un flujo), sabiendo que ya existe un asistente funcional.