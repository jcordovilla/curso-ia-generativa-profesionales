# Itinerario 1 · Módulo 2  
## Automatización visual con IA: de los datos a un resultado útil

En el módulo anterior aprendiste a reconocer las piezas básicas de un flujo no-code: **entrada → IA → salida**, y a no asustarte cuando la herramienta te pide credenciales o permisos. Ahora vamos a dar el paso que la mayoría quiere ver desde el principio: **hacer un flujo real que procese información con IA y la entregue a tu equipo o a tu sistema**.

Este módulo está pensado en dos capas:
- **Nivel A (obligatorio):** construir el flujo “email → IA resume → Slack/CRM” siguiendo una estructura guiada.
- **Nivel B (opcional):** añadir una condición o una segunda llamada a IA para clasificar o enriquecer.

La idea es que salgas de aquí con **un flujo funcionando** que puedas enseñar.

---

### 1. ¿Qué vamos a hacer exactamente?

1. Recuperar un contenido de entrada (por ejemplo, un email o un formulario).
2. Enviarlo a la IA con un **prompt muy específico** (“resume en 5 líneas para el equipo comercial”).
3. Entregar ese resultado en un canal donde el equipo lo vea (Slack, Teams, CRM, incluso Google Sheets).
4. (Opcional) Decidir con una condición qué hacer con el contenido.

**Idea clave:** la automatización visual no es programar; es **conectar bloques** y decirle a la IA qué quieres que haga con el texto.

---

### 2. ¿Por qué este flujo es tan importante?

Porque es **el patrón más repetido en el trabajo con IA**:
- algo llega,
- la IA lo hace digerible,
- alguien o algún sistema lo recibe.

En la práctica esto significa: **cada vez que tu área recibe información desordenada o larga, puedes poner a la IA a hacer el preprocesado**. No sustituye a la persona, pero sí le entrega el contenido ya masticado.

Ejemplos profesionales:
- Soporte: “nuevo ticket largo” → IA resume → lo ve el responsable.
- Comercial: “petición de propuesta” → IA extrae datos clave → se guarda en CRM.
- Dirección: “newsletter sectorial” → IA extrae riesgos u oportunidades → se envía al grupo directivo.

**Mini-resumen:** dominar este flujo es como aprender los 4 acordes de una canción: luego cambias la entrada o la salida, pero la música es la misma.

---

### 3. Estructura del flujo (Nivel A obligatorio)

Vamos a describirlo en pasos muy concretos. Puedes hacerlo en n8n, Make o una plataforma similar; todas tienen los mismos bloques, solo cambian los nombres.

#### Paso 1: disparador (trigger)
- Puede ser “cuando llega un email”, “cuando se recibe un webhook”, “cuando se crea un registro”.
- Aquí estás diciendo: **“cuando pase esto, arranca el flujo”**.

#### Paso 2: obtener el contenido
- Extraes el **texto que quieres resumir**: cuerpo del email, descripción del ticket, mensaje del formulario.
- Revisa que el campo no venga vacío. Si viene vacío, no tiene sentido llamar a la IA.

#### Paso 3: llamada a la IA
- Usas el bloque “OpenAI” o “LLM” de la plataforma.
- Pegas la **API key** (si no la pegaste antes).
- Escribes un **prompt concreto**, por ejemplo:

  > “Eres un asistente que resume comunicaciones internas. Resume el siguiente texto en 5 viñetas claras, en español neutro, destacando: 1) quién escribe, 2) qué pide, 3) plazos o urgencia. Si no hay alguno de estos datos, indícalo. Texto: {{cuerpo_email}}”

  En la práctica esto significa: **no mandes solo el texto a la IA, dile para qué lo quieres**.

#### Paso 4: salida al equipo
- Bloque “Enviar a Slack/Teams/CRM”.
- Asignas el campo “mensaje” al resultado que te devolvió la IA.
- Si tu organización no usa estas herramientas, puedes mandar el resultado a tu propio email o guardarlo en una hoja de cálculo.

#### Paso 5: prueba
- Ejecutas el flujo con un email de ejemplo.
- Verificas que la IA responde y que el mensaje llega.

**Mini-resumen:** entrada configurada + IA con prompt claro + salida visible = flujo útil.

---

### 4. Buenas prácticas al escribir el prompt en una automatización

Aquí es donde muchos se lían porque vienen del chat “libre” con la IA. En un flujo automatizado **el prompt debe ser más rígido**.

- **Di el rol**: “eres un asistente que resume…”
- **Di el formato**: “en 5 viñetas”, “en 1 párrafo”, “devuelve JSON”.
- **Di el idioma**: “en español”, “en inglés”.
- **Di qué hacer si falta información**: “si no hay fecha, indícalo”.

¿Por qué? Porque el resultado lo va a leer otra persona o lo va a consumir otra herramienta. **No quieres respuestas creativas, quieres respuestas previsibles.**

---

### 5. Nivel B (opcional): añadir lógica

Si ya te funcionó el flujo básico, puedes darle un poco de “inteligencia de negocio”:

1. **Añadir condición por asunto o remitente**

   - Si el email viene de "clientes@…", mándalo al canal del equipo comercial.
   - Si no, mándalo a otro canal.

2. **Segunda IA que clasifica**

   - Primera IA: resume.
   - Segunda IA: "clasifica este contenido como: propuesta, queja, consulta, otra".
   - Según la clasificación, el flujo envía a una persona diferente.

3. **Enriquecer con fecha o autor**

   - Añades campos para que quien lo recibe sepa de dónde viene.

Esto no es obligatorio, pero sí **demuestra que ya controlas la herramienta** y que puedes adaptar el flujo al proceso real de tu organización.

---

### 6. Errores y malentendidos comunes en este módulo

- **“La IA me responde en inglés aunque el texto estaba en español”**  
  → Añade siempre “responde en español” en el prompt.

- **“No me llega nada a Slack”**  
  → La IA sí respondió, pero **no mapeaste el campo de salida**. Revisa que en el bloque final estés usando la variable correcta (a veces se llama `response`, `output`, `choices[0].message.content` según la plataforma).

- **“La plataforma dice que la ejecución falló”**  
  → Muchas veces es por la key de la IA mal pegada o porque la cuenta de Slack/CRM no tiene permiso.

- **“La IA resume cosas muy obvias y no me sirve”**  
  → Tu prompt es demasiado genérico (“resume el texto”). Sé más concreto: **di qué rol del negocio va a leer el resumen** (“resume para un jefe de proyecto”, “resume para el equipo comercial”).

- **“Estoy copiando y pegando el mismo prompt en todos los flujos”**  
  → Está bien al principio, pero luego conviene **guardar una versión estándar de prompt** para tu equipo, para que todos reciban resúmenes con el mismo formato.

---

### 7. Aplicación directa en tu entorno

Piensa en tu contexto real:

- ¿Qué tipo de correos/tickets/documentos recibe tu equipo que son **largos y repetitivos**?
- ¿Quién se beneficia más de recibirlos ya resumidos? ¿Dirección? ¿Comercial? ¿Operaciones?
- ¿En qué herramienta los ven todos? (eso te dice a dónde mandar el resultado).

**Preguntas de autoevaluación:**
- ¿Soy capaz de describir mi flujo en una frase de negocio? (“Cuando llegue un email de X, la IA lo resume y lo manda a Y.”)
- ¿Sé dónde está mi punto débil: en la entrada, en la IA o en la salida?
- ¿Sé qué credenciales necesito para que esto funcione en la cuenta de la empresa?

---

### 8. Cierre y aprendizajes clave

- **Ya no estás viendo la IA como un chatbot aislado, sino como un paso dentro de un proceso.** Esa es la mentalidad que buscamos en el itinerario.
- El flujo “email → IA resume → canal/CRM” es tu **caso de uso mínimo viable**: demuestra valor rápido y es fácil de enseñar.
- La calidad del resultado depende mucho más del **prompt** que de la plataforma.
- Añadir **condiciones o una segunda IA** te permite acercarte a procesos reales sin programar.
- A partir de aquí, el siguiente módulo (chatbots/GPTs con tus documentos) será más fácil porque **ya sabes cómo orquestar datos y salidas**.

**Mini-resumen final:**  
> “Puedo construir un flujo visual que toma una información, la pasa por IA con un prompt claro y la entrega en el canal correcto. Sé dónde suelen fallar estos flujos y cómo explicarlos a mi equipo.”

En el [Módulo 3](modulo-3-asistentes-seguros-con-docs-propias.md) veremos cómo **llevar esta lógica al mundo de los chatbots/GPTs con documentos propios**, añadiendo la capa de seguridad y privacidad que las empresas necesitan.
