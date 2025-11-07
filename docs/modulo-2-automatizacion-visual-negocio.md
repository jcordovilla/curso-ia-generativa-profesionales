## Propósito del módulo

En el Módulo 1 aprendiste a moverte por una plataforma no-code/low-code, a entender qué es un trigger y una acción, y a no asustarte con las credenciales. En este **Módulo 2** vamos a dar el salto lógico: **pasar de un flujo simple a una automatización de negocio con IA**, es decir, algo que ya empiece a parecerse a tus procesos reales (clasificar, enriquecer, mandar a otro canal, registrar).

El objetivo es que al final tengas **un flujo útil de verdad** —por ejemplo, “cuando recibo algo, lo resumo, lo clasifico y lo guardo donde toca”— y que sepas repetir el patrón para otros casos de uso.

---

## Resultados de aprendizaje

Al finalizar este módulo, el participante será capaz de:

1. Diseñar un flujo de negocio con más de dos pasos, incluyendo **al menos un paso de IA** y **al menos una salida hacia otra herramienta**.
2. Usar la IA no solo para “resumir”, sino también para **clasificar, extraer datos y generar respuestas estructuradas**.
3. Configurar condiciones sencillas (ramas tipo “si es categoría A, haz esto; si no, haz lo otro”) sin escribir código.
4. Probar el flujo con varios ejemplos y revisar el historial de ejecuciones.
5. Documentar el flujo con una breve explicación funcional para que un compañero pueda reutilizarlo.

---

## Idea central del módulo

La IA en las automatizaciones **no solo redacta**; puede tomar decisiones si le pedimos que nos devuelva la información en un formato que la herramienta entienda (listas, etiquetas, JSON sencillo). Eso nos permite hacer cosas como:

- “Clasifica este lead como caliente / tibio / frío y pásalo al CRM si es caliente.”
- “Extrae el nombre de la empresa y el idioma del mensaje y mándalo al canal correcto.”
- “Analiza este comentario de cliente y guarda la categoría en un Sheet.”

La clave del módulo es **pedir bien la salida** a la IA para poder encadenar pasos.

---

## Contenidos del módulo

### 1. Recordatorio rápido de la estructura
- Trigger → Paso de IA → Acción de salida.
- Qué cambia ahora: añadimos **más de una acción** y **condiciones**.
- Se introduce el concepto de **“flujo de negocio”:** una automatización que refleja un proceso que alguien del equipo hace hoy a mano.

### 2. Patrones de IA útiles para automatización

1. **Resumen operativo**
   - Prompt tipo: “Resume en 5 puntos claros para dirección”.
   - Uso: adjuntar a un email, enviar a Slack, alimentar una base de conocimiento.

2. **Clasificación**
   - Prompt tipo:  
     > “Clasifica este texto en una de estas categorías: [Novedad cliente], [Incidencia], [Solicitud comercial], [Otro]. Devuelve SOLO el nombre de la categoría.”
   - Uso: decidir por qué rama continúa el flujo.

3. **Extracción de datos**
   - Prompt tipo:  
     > “Del siguiente texto extrae: nombre de la empresa, país, persona de contacto (si aparece). Devuelve un JSON con esas tres claves.”
   - Uso: guardar en Sheet, CRM o enviar a otra API.

4. **Generación de respuesta**
   - Prompt tipo:  
     > “Redacta una respuesta cortés, breve y en español, agradeciendo la información y pidiendo un teléfono de contacto.”
   - Uso: contestar automáticamente o dejar una respuesta sugerida.

Estos cuatro patrones son suficientes para el 80% de los casos de uso de negocio con IA.

---

### 3. Construcción paso a paso del flujo “Clasificar y guardar”

**Escenario:** llegan solicitudes o mensajes (correo, formulario, WhatsApp). Queremos:
1. Capturarlos,
2. Analizarlos con IA para saber de qué van,
3. Guardarlos de forma ordenada (por ejemplo en Google Sheets o Notion),
4. Y avisar a alguien si es “importante”.

**Pasos:**

1. **Trigger**  
   - “Nuevo mensaje” / “Nueva fila” / “Nuevo email”.
   - Si no hay conector directo, se puede usar “Webhook” y dispararlo a mano.

2. **Paso de IA – Clasificación**  
   - Prompt cerrado (como el de arriba).
   - Salida esperada: solo una palabra o etiqueta.

3. **Condición / Rama**  
   - Si categoría == “Solicitud comercial” → enviar notificación.
   - Si categoría == “Incidencia” → registrar en otra hoja o canal.
   - Si categoría == “Otro” → archivar.

4. **Guardar**  
   - Acción de “añadir fila” o “crear página” en la herramienta elegida.
   - Campos: fecha, origen, texto original, categoría.

5. **Notificar**  
   - Acción de email o Slack con la categoría y el resumen.

**Punto importante para perfiles senior:** todo esto se puede montar **a partir de una plantilla del formador**, de forma que solo tengan que cambiar: conector de entrada, prompt y destino.

---

### 4. Condiciones sin miedo

Muchos usuarios se bloquean cuando ven “IF / ELSE”. Aquí lo simplificamos:

- Lo que sale de la IA es **un texto corto**.
- La herramienta solo pregunta: “¿este texto es igual a ‘Solicitud comercial’?”.
- Si sí → sigue por esta rama.
- Si no → sigue por la otra.

No hay que programar; solo hay que poner el nombre de la categoría **exactamente igual** a como la IA la devuelve. Por eso es tan importante que el prompt diga “devuelve SOLO el nombre de la categoría”.

---

### 5. Pruebas con varios ejemplos

Para que el flujo sea creíble y no un “Hello World”, lo probamos con 3–4 casos distintos:

1. Un mensaje claramente comercial.
2. Un mensaje claramente de soporte / incidencia.
3. Un mensaje raro o mixto.
4. Un mensaje en otro idioma.

Se revisa en el historial de ejecuciones cada uno y se corrige el prompt si hace falta (por ejemplo, añadiendo “responde siempre en español” o “si no reconoces la categoría, responde ‘Otro’”).

---

### 6. Documentación funcional del flujo

Se reutiliza la plantilla del módulo 1, pero con más detalle:

- **Nombre del flujo:** Clasificación de mensajes de clientes con IA.
- **Objetivo de negocio:** reducir el tiempo de clasificación manual y asegurarse de que las incidencias se notifican.
- **Trigger:** nuevo mensaje (indicar origen).
- **Pasos de IA:** prompt usado + salida esperada.
- **Ramas / condiciones:** categorías y acción asociada.
- **Salidas:** hoja de cálculo, canal, email.
- **Observaciones:** prompt sensible a idioma / formato.

Esta documentación es clave si más adelante alguien del itinerario intermedio quiere “industrializar” el mismo flujo.

---

## Actividad práctica guiada

**Título:** “Clasifica y avisa”

1. Crear un flujo nuevo.
2. Trigger manual (para no pelear con permisos).
3. Paso de IA con el prompt de clasificación.
4. Rama:
   - Si es “Solicitud comercial” → enviar email al comercial.
   - Si no → guardar en la hoja como registro.
5. Ejecutar 3 pruebas con textos distintos.
6. Ajustar el prompt hasta que la mayor parte de los casos salga bien.
7. Documentar.

**Opcional:** añadir un segundo paso de IA que haga un pequeño resumen del mensaje y lo incluya en el email de aviso (“esto te lo dejo ya mascado”).

---

## Recursos recomendados

- Tutoriales recientes de n8n / Make sobre “AI workflows” (casi todos traen un paso de clasificación y otro de envío).
- Documentación de OpenAI / proveedor usado sobre “structured outputs” o “json mode”, para quien quiera ir un poco más allá con la extracción estructurada.
- Plantilla de prompts de negocio preparada por el formador (clasificar, resumir, extraer, responder).
- Guía breve: “Cómo nombrar las categorías para no romper las condiciones”.

---

## Criterios de finalización del módulo

El módulo se considera superado cuando el participante:

1. Entrega **un flujo con al menos 3 pasos** (trigger, IA, salida) funcionando.
2. Ese flujo tiene **al menos una condición o rama** que dependa de la salida de la IA.
3. Ha probado el flujo con más de un ejemplo y ha corregido el prompt.
4. Ha documentado el flujo en la plantilla.

A partir de este punto, en el **Módulo 3** ya podremos entrar en “cómo crear asistentes/GPTs sobre documentación propia” porque el participante ya sabe capturar datos, pasarlos por IA y enviarlos a algún sitio.