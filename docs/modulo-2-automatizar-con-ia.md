---
date: "2026-02-08"
title: "Módulo 2 – Automatizar con IA"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Módulo 2 – Automatizar con IA

## Tu primer flujo: de los datos a un resultado útil

Ya entiendes qué es la IA generativa, qué modelos existen y qué puedes compartir con ellos. Ahora vamos a dar el paso que la mayoría quiere ver desde el principio: **construir un flujo real que procese información con IA y la entregue a tu equipo o a tu sistema**.

El patrón que aprenderás aquí es el más repetido en el trabajo con IA: **algo llega, la IA lo procesa y alguien o algún sistema lo recibe**. Es la base sobre la que construirás todo lo demás.

---

## 1. El patrón entrada → IA → salida

Casi toda automatización con IA se reduce a tres bloques:

1. **Entrada:** un email, un formulario, un registro en una hoja de cálculo, un webhook.
2. **Procesamiento IA:** el modelo recibe el contenido con un prompt específico y devuelve un resultado.
3. **Salida:** el resultado se envía a un canal (Slack, Teams, email), se guarda en un CRM o se escribe en una hoja de cálculo.

**Si puedes dibujar estos tres bloques para tu caso de uso, puedes construirlo.** Las herramientas visuales como n8n, Make o Zapier te permiten conectar estos bloques sin escribir código.

**Ejemplos por sector:**

- **Consultoría:** email largo del cliente → IA resume en 5 puntos para el director del proyecto → se envía al canal del equipo.
- **Ventas:** formulario de contacto web → IA clasifica si es consulta, presupuesto o queja → se deriva al departamento correcto.
- **Operaciones:** informe mensual de proveedor → IA extrae riesgos y desviaciones → se guarda en la hoja de seguimiento.
- **RRHH:** candidatura recibida → IA extrae experiencia clave y la compara con el perfil buscado → resumen para el responsable.
- **Legal:** notificación regulatoria → IA identifica los puntos que afectan a la empresa → alerta al equipo jurídico.

---

## 2. Práctica guiada: construir el flujo en n8n o Make

Vamos a describir el flujo paso a paso. Puedes hacerlo en n8n, Make o una plataforma similar; todas tienen los mismos bloques con nombres distintos.

### Paso 1: disparador (trigger)

Elige qué activa el flujo: "cuando llega un email", "cuando se crea una fila", "cuando se recibe un webhook". Estás diciendo: **cuando pase esto, arranca el flujo**.

### Paso 2: obtener el contenido

Extraes el texto que quieres procesar: el cuerpo del email, la descripción del ticket, el mensaje del formulario. Verifica que el campo no venga vacío — si no hay contenido, no tiene sentido llamar a la IA.

### Paso 3: llamada a la IA

Usas el bloque "OpenAI", "Claude" o "LLM" de la plataforma. Necesitas:
- Tu **API key** configurada como conexión.
- Un **prompt concreto y estructurado**.

Ejemplo de prompt para automatización:

> "Eres un asistente que resume comunicaciones internas. Resume el siguiente texto en 5 puntos claros, en español, destacando: 1) quién escribe, 2) qué pide, 3) plazos o urgencia. Si no hay alguno de estos datos, indícalo. Texto: {{cuerpo_email}}"

### Paso 4: salida al equipo

Bloque "Enviar a Slack/Teams/CRM". Asignas el resultado de la IA al campo del mensaje. Si tu organización no usa estas herramientas, puedes mandarlo a tu propio email o guardarlo en una hoja de cálculo.

### Paso 5: prueba

Ejecutas el flujo con un caso de ejemplo real. Verificas que la IA responde y que el resultado llega donde debe.

> [!tip] Observación práctica
> La calidad del resultado depende mucho más del prompt que de la plataforma. Un prompt genérico ("resume esto") dará resultados genéricos. Un prompt que dice quién va a leer el resultado, en qué formato y qué información es prioritaria dará resultados útiles.

---

## 3. Prompts para automatización: rígidos, no creativos

Aquí es donde muchos se equivocan porque vienen del chat "libre" con la IA. En un flujo automatizado, **el prompt debe ser predecible**.

Las reglas:
- **Di el rol:** "Eres un asistente que resume informes para dirección."
- **Di el formato:** "En 5 viñetas", "en 1 párrafo", "devuelve JSON".
- **Di el idioma:** "Responde siempre en español."
- **Di qué hacer si falta información:** "Si no hay fecha, indícalo."
- **Di para quién es:** "El resumen lo leerá un jefe de proyecto con 30 segundos."

¿Por qué? Porque el resultado lo va a leer otra persona o lo va a consumir otra herramienta. **No quieres respuestas creativas, quieres respuestas previsibles.**

=== "n8n"
    En n8n, el bloque "AI Agent" o "OpenAI" te permite pegar el prompt directamente. Usa `{{ $json.campo }}` para insertar variables del flujo.

=== "Make"
    En Make, el módulo "OpenAI — Create a Completion" te pide el prompt como texto. Usa los campos dinámicos del escenario para insertar variables.

=== "Zapier"
    En Zapier, el paso "ChatGPT" tiene un campo de instrucciones donde defines el prompt con variables del trigger.

---

## 4. Nivel B (opcional): añadir lógica

Si el flujo básico funciona, puedes darle más inteligencia:

**Condición por remitente o asunto:**
- Si el email viene de "clientes@…", mándalo al canal comercial.
- Si no, mándalo a operaciones.

**Segunda IA que clasifica:**
- Primera IA: resume el contenido.
- Segunda IA: clasifica como "propuesta / queja / consulta / otra".
- Según la clasificación, el flujo envía a una persona diferente.

**Enriquecer con metadatos:**
- Añade fecha, remitente, asunto al resultado para que quien lo reciba tenga contexto completo.

Esto no es obligatorio, pero demuestra que ya controlas la herramienta y puedes adaptarla al proceso real de tu organización.

---

## 5. Errores comunes y cómo resolverlos

- **"La IA me responde en inglés"** → Añade "responde en español" en el prompt. Siempre.
- **"No me llega nada a Slack"** → La IA sí respondió, pero no mapeaste el campo de salida. Revisa la variable que conecta el resultado de la IA con el bloque de envío.
- **"La ejecución falla"** → Casi siempre es la API key mal pegada o la cuenta del servicio de destino sin permisos.
- **"La IA resume cosas muy obvias"** → Tu prompt es demasiado genérico. Di quién va a leer el resultado y qué le importa.
- **"Copio el mismo prompt en todos los flujos"** → Al principio está bien, pero luego conviene guardar una versión estándar para tu equipo, para que todos reciban resultados con el mismo formato.

> [!warning] Alerta de privacidad
> En un flujo automatizado, los datos pasan por la IA sin supervisión humana. Asegúrate de que el disparador no envíe a la IA correos con datos personales sensibles, adjuntos confidenciales o información que no debería salir de tu organización. Configura filtros en la entrada si es necesario.

---

## 6. Qué hacer con el flujo una vez funciona

Un flujo que funciona una vez no es un flujo útil. Para que pase de "mi experimento" a "herramienta del equipo", necesitas:

1. **Documentar el prompt.** Escríbelo en algún sitio compartido (Notion, SharePoint, Obsidian). Si te vas de vacaciones y nadie sabe qué prompt usas, el flujo es frágil.
2. **Centralizar las credenciales.** La API key no debería estar en tu cuenta personal. Pide una cuenta de equipo.
3. **Probar con casos extremos.** ¿Qué pasa si el email viene vacío? ¿Y si tiene adjuntos? ¿Y si está en otro idioma?
4. **Definir un responsable funcional.** Alguien que revise que el resultado sigue siendo útil.

---

## 7. Cierre y aprendizajes clave

- **El patrón entrada → IA → salida es la base de toda automatización con IA.** Si lo dominas, solo cambias las piezas.
- **El prompt es lo que marca la diferencia**, no la plataforma.
- **Un flujo útil necesita un prompt documentado, credenciales centralizadas y un responsable.**
- **Añadir condiciones o una segunda IA** te permite acercarte a procesos reales sin programar.

> [!abstract] Resumen del módulo
> Ya puedes construir un flujo que toma información, la pasa por IA con un prompt estructurado y la entrega donde tu equipo la necesita. Sabes dónde suelen fallar estos flujos y cómo explicarlos a tu organización.

---

> [!info] Para profundizar
> - [What We Learned from a Year of Building with LLMs](https://www.oreilly.com/radar/what-we-learned-from-a-year-of-building-with-llms-part-i/) — Lecciones de O'Reilly sobre prompting y errores en producción.
> - [n8n Documentation](https://docs.n8n.io/) — Plataforma open-source de automatización visual con integraciones de IA.
> - [Make Help Center](https://www.make.com/en/help) — Alternativa visual para flujos de automatización.
> - [Prompt Engineering Guide](https://www.promptingguide.ai/) — Guía completa de DAIR.AI sobre técnicas de prompting.
> - [The ULTIMATE n8n RAG AI Agent Template](https://www.youtube.com/watch?v=T2QWhXpnT5I) — Tutorial paso a paso de un agente RAG en n8n.

---

En el [Módulo 3](modulo-3-asistentes-con-documentos.md) llevaremos esta lógica al siguiente nivel: crear asistentes que responden sobre tus propios documentos internos.
