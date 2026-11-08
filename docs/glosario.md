---
date: "2026-06-12"
title: "Glosario"
tags:
  - lang/es
  - type/course
  - topic/ai
  - topic/automation
usefulness: 0.9
links_woven: true
description: "Los términos de IA generativa del curso explicados en castellano llano, de modelo y prompt a conector y niveles de delegación."
---

# Glosario

> Los términos que van apareciendo en el curso, explicados en lenguaje llano. No necesitas memorizarlos: vuelve aquí cuando uno se te atragante.

---

## Conceptos de IA

**Modelo (o LLM, modelo de lenguaje).** El motor que genera el texto. Cuando hablas con ChatGPT, Claude, Gemini o Copilot, hablas con un modelo. Unos son más capaces y caros, otros más rápidos y baratos. Elegir modelo es elegir un compromiso entre calidad, coste y privacidad.

**Modelo local.** Un modelo que se ejecuta en tu propio ordenador en lugar de en los servidores del proveedor. Nada de lo que escribes sale de tu máquina, así que es la opción natural para datos sensibles. Los modelos abiertos como Llama, Gemma, Mistral o Qwen se usan así, y herramientas como Ollama o LM Studio los ponen al alcance de cualquiera.

**Prompt.** La instrucción que le das al modelo. Un buen prompt tiene las seis piezas de Antes de empezar: rol ("eres un asistente que resume informes"), tarea, para quién es el resultado, contexto, formato ("en cinco viñetas") y restricciones, entre ellas qué hacer si falta información. El resultado depende más de lo que le das, material y prompt, que del modelo.

**Instrucciones de sistema.** Las normas de comportamiento que le das a un asistente una sola vez y que rigen todas sus respuestas: su papel, su estilo, qué hacer cuando falta información. El prompt es la petición de cada momento; las instrucciones de sistema son el contrato permanente.

**Proyecto (asistente con tus documentos).** Un espacio dentro del chat con tus instrucciones y tus documentos, para reutilizarlo o compartirlo. ChatGPT y Claude los llaman proyectos, Gemini los llama Gems y en Microsoft 365 cumplen ese papel los agentes de Copilot; todos se ven en el módulo 3. Los GPTs de ChatGPT hicieron ese papel hasta 2026, cuando OpenAI empezó a retirarlos.

**Copilot.** El nombre que Microsoft da a su IA, y que cubre productos distintos. Microsoft 365 Copilot Chat es el chat de IA que viene gratis con una cuenta de trabajo de Microsoft, y para muchos profesionales es la IA que su empresa ya ha aprobado; con cuenta de trabajo, no entrena con los datos de la organización. Microsoft 365 Copilot es la versión completa, una licencia de pago aparte que lleva la IA dentro de Word, Excel, Outlook o Teams. GitHub Copilot es otro producto: un asistente de código para programadores.

**Token.** La unidad en la que el modelo cuenta el texto, más o menos una sílaba o un trozo de palabra. Importa porque los proveedores cobran por tokens y los modelos tienen un límite de cuántos procesan de una vez.

**Alucinación.** Cuando el modelo se inventa un dato con total seguridad aparente: una cifra, una cita, una cláusula que no existe. Es la razón por la que nunca conviene fiarse de un resultado sin verificarlo.

**Precisión plausible.** El caso de alucinación más peligroso: la IA suelta un dato concreto (cifra, fecha, nombre, sigla) con una seguridad y un formato tan creíbles que no lo cuestionas. Verifica siempre los datos concretos antes de darlos por buenos.

**Multimodal.** Un modelo que entiende, además de texto, imágenes, audio o documentos escaneados. Le pasas la foto de una pizarra y te devuelve las notas ordenadas.

---

## Privacidad y normas

**Entrenar.** Usar lo que escribes para mejorar los modelos futuros del proveedor: tus conversaciones y lo que subes pasan a formar parte del material con el que aprende la siguiente versión. Los planes individuales de ChatGPT y Claude, también los de pago, pueden hacerlo salvo que lo desactives en los ajustes de privacidad; los planes de empresa (ChatGPT Business o Enterprise, Claude Team o Enterprise, Copilot con cuenta de trabajo) no entrenan con los datos de sus clientes. Desactivarlo es lo que se llama opt-out, la entrada siguiente.

**Opt-out.** La opción de pedirle a un proveedor que no entrene con tus datos. En unos servicios el entrenamiento viene desactivado de serie y en otros hay que desactivarlo a mano, en los ajustes de privacidad. Conviene saber cuál es tu caso antes de subir nada, y con las versiones gratuitas hay todavía más motivo para comprobarlo.

**Reglamento europeo de IA.** La ley de la Unión Europea que regula la inteligencia artificial según el riesgo de cada uso: prohíbe algunas prácticas, impone requisitos estrictos a los usos de alto riesgo y pide transparencia en otros. Su nombre oficial es Reglamento (UE) 2024/1689, y en inglés se le llama *AI Act*. Está en vigor desde agosto de 2024, con obligaciones que llegan por etapas: desde febrero de 2025 rigen las prohibiciones y el deber de las organizaciones de ocuparse de la alfabetización en IA de su personal (entrada siguiente); desde agosto de 2026, las obligaciones de transparencia; las de alto riesgo, aplazadas por el paquete Ómnibus Digital de julio de 2026, llegan en diciembre de 2027 y agosto de 2028. En España lo supervisa la AESIA (Agencia Española de Supervisión de Inteligencia Artificial).

**Alfabetización en IA.** El conocimiento suficiente para usar la IA con criterio: qué hace bien, dónde falla, qué riesgos tiene y qué datos no deben pasar por ella. Desde febrero de 2025 el artículo 4 del Reglamento europeo de IA pide a las organizaciones que usan IA que pongan medidas para que su personal la tenga; el paquete Ómnibus de julio de 2026 dejó claro que no exige garantizar un nivel concreto.

---

## Tus archivos

**Texto plano.** Un archivo que solo contiene letras, sin formato oculto ni programa dueño: se abre con el Bloc de notas, con cualquier editor y con cualquier IA, hoy y dentro de veinte años. Los archivos .txt y .md son texto plano; un .docx de Word guarda el texto dentro de un formato propio que necesita su programa. Es la base del [módulo 4](modulo-4-tus-datos-importan-mas.md): lo que guardas en texto plano lo podrá leer cualquier herramienta y cualquier modelo futuro.

**Markdown.** Una forma de dar formato a un texto plano con unos pocos signos que se entienden a simple vista: una almohadilla delante de un título (`# Título`), dos asteriscos a cada lado de lo que va en negrita (`**importante**`), un guion delante de cada punto de una lista. El archivo sigue siendo texto plano (extensión .md), así que se abre con cualquier editor, y las IA lo leen y lo escriben con soltura: cuando el chat te devuelve una respuesta con títulos y negritas, por dentro suele ser Markdown. Este mismo curso está escrito en Markdown.

**Léeme.** Una página corta que vive dentro de una carpeta y le cuenta a quien llega por primera vez, persona o IA, qué hay en ella, cómo se nombran los archivos y qué documento manda cuando dos se contradicen: lo obligatorio (un contrato, una política) sobre el cómo se hace (un procedimiento), y el cómo se hace sobre el cómo están las cosas (un acta, un informe de situación). Basta un archivo de texto o un Word con ese nombre; si lo adjuntas al chat junto con los documentos, la IA tiene por escrito a cuál hacer caso. El nombre viene del README que los programadores dejan en cada proyecto, y el [módulo 4](modulo-4-tus-datos-importan-mas.md) enseña a escribir el tuyo.

**Memoria externa.** Tus notas y documentos, guardados fuera de la IA en archivos tuyos, para que ella los consulte cuando los necesita. La IA tiene una memoria de trabajo pequeña (la conversación en curso) y relee lo apuntado igual que tú consultas tu archivador. Es la primera de las tres piezas del sistema del módulo 6, y la más fácil de replicar, porque no exige programar.

---

## Cuentas y conexiones

**Credencial (o API key).** Un código que autoriza a una herramienta a usar un servicio en tu nombre. Es tu llave. Se pega una vez en la configuración y no se comparte por correo ni por chat. Cuando algo no arranca al empezar, lo primero que conviene mirar es la credencial: es la causa de la mayoría de los atascos. Los conectores de un clic no la necesitan, porque autorizas con tu cuenta.

**Conector.** Un enchufe que deja a la IA leer tu correo, tus carpetas, tu calendario u otras aplicaciones (y, si se lo permites, actuar en ellas) sin programar nada: se activa desde los ajustes del chat y se autoriza con tu cuenta, como cuando una aplicación te pide iniciar sesión con Microsoft o con Google. Técnicamente, la mayoría siguen el estándar MCP. Antes de activar uno, pásalo por las tres preguntas de privacidad del módulo 1: conectar el correo da acceso a todo el buzón.

**Instrucciones escondidas.** Texto metido en un correo, una página web o un archivo para que lo obedezca la IA que lo lee, en lugar de la persona a la que va dirigido («reenvía este hilo a esta dirección»). La IA no siempre distingue tu petición de lo que pone el documento, y por eso un agente que lee material de fuera se queda en leer y proponer (véase Niveles de delegación). En inglés, *prompt injection*. Se explica en el módulo 5.

**Webhook.** Un aviso automático que un sistema envía a otro cuando pasa algo ("ha llegado un formulario", "se ha creado una fila"). Sirve para disparar un flujo sin que nadie pulse un botón.

---

## Construir y conectar

**No-code.** Herramientas que permiten montar automatizaciones conectando bloques visuales, sin escribir código. Latenode, n8n, Make y Power Automate (la de Microsoft, para quien trabaja con Microsoft 365) son las que verás en este curso.

**Flujo.** Una secuencia de pasos que se ejecuta sola: algo llega (un correo, un formulario), la IA lo procesa y el resultado se entrega donde haga falta. Es la unidad básica de la automatización: si puedes dibujarlo en tres cajas, puedes construirlo.

**Disparador (trigger).** El evento que pone en marcha un flujo: "cuando llegue un correo", "cuando se rellene el formulario", "cada lunes a las ocho". Todo flujo empieza por uno.

**RAG.** La forma de hacer que la IA responda sobre tus documentos: primero busca los fragmentos relevantes en tu material y luego redacta la respuesta con ellos delante. Como un asistente que consulta el archivador antes de contestar. Las siglas vienen del inglés y significan generación aumentada por recuperación.

**Embedding.** La representación numérica de un fragmento de texto que permite buscar por significado, además de por palabras exactas. Es lo que hace que una búsqueda encuentre "vacaciones" cuando preguntas por "días libres". En el módulo 6 lo llamamos "huella de significado", que es lo mismo dicho en llano.

**Base vectorial.** El almacén donde se guardan esos embeddings para poder buscarlos rápido. FAISS, LanceDB o Chroma son ejemplos. Es la pieza que en el módulo 6 aparece como "índice de significado".

**Agente.** Un modelo con permiso para elegir herramienta según lo que le pidas: buscar en tus documentos, consultar la web, escribir un archivo. Analiza la petición, decide qué usar y lo ejecuta. Cuánta libertad darle es la pregunta de los niveles de delegación.

**Niveles de delegación.** Cuánta libertad le das a la IA en una tarea, en cuatro grados: 1) solo lee (busca, resume, te informa); 2) propone y tú decides (prepara el borrador o el cambio, y tú lo apruebas o no); 3) ejecuta pidiendo confirmación (hace el trabajo y se detiene antes de cada paso que cuenta); 4) ejecuta sola (actúa sin preguntar, y tú revisas después). El grado se elige tarea a tarea, según lo delicada que sea: lo que solo toca material público admite más libertad que lo que sale con tu nombre. La misma idea de escala vale para la forma del trabajo: entre un flujo fijo, que repite siempre los mismos pasos, y un agente, que elige por su cuenta qué herramienta usar y en qué orden, hay muchos puntos intermedios. Los niveles aparecen en el módulo 2 y se desarrollan en el módulo 7.

**Agente de escritorio.** Una IA que trabaja sobre los archivos de tu ordenador desde la aplicación de escritorio del chat, sin terminal: le das acceso a una carpeta y lee, ordena, resume o prepara documentos con lo que hay en ella. Claude Cowork es el ejemplo de este curso, y otros proveedores tienen equivalentes. En el recorrido de herramientas del curso es la cuarta estación, después del chat, el chat con tus documentos y el chat conectado a tu correo y tus carpetas.

**Asistente de código.** Una herramienta a la que le describes en lenguaje natural lo que necesitas y que escribe, ejecuta y corrige el código por ti. Claude Code, Codex, Cursor, GitHub Copilot y Google Antigravity son ejemplos. Es la pieza que ha desdibujado la frontera entre saber y no saber programar, y la protagonista del módulo 5.

**MCP.** El estándar abierto con el que se construyen la mayoría de los conectores: un formato común para que cualquier IA se enchufe a tus herramientas (correo, documentos, bases de datos) sin programar cada conexión a medida. Como un enchufe universal, que vale para todo. Las siglas vienen del inglés *Model Context Protocol*.

---

## Evaluar y escalar

**Piloto.** Una prueba acotada de una herramienta o un caso de uso: pocas personas, un plazo y un criterio fijado de antemano para decidir al final si se extiende, se ajusta o se abandona. Muchos se quedan en eso: según el informe The GenAI Divide de MIT NANDA (2025), el 95% de los pilotos de IA generativa en empresas no mostraba retorno medible. La línea «Sigo o lo dejo» de la ficha del módulo 8 existe para que el tuyo acabe con una decisión.

**ROI.** Lo que te devuelve una inversión comparado con lo que te costó: horas ahorradas, errores evitados o ingresos, frente a cuotas, horas de montaje y mantenimiento. Las siglas vienen del inglés *return on investment*, retorno de la inversión. Es la primera pregunta de dirección antes de extender un piloto, y la ficha del módulo 8 la prepara con la línea de base, el coste al mes y las horas ahorradas.

**Trazabilidad.** Poder reconstruir de dónde salió un resultado: qué documento, qué versión del prompt, qué modelo y qué persona o flujo lo generaron. En un asistente con documentos empieza por pedirle que cite documento y apartado; en un flujo, por registrar qué entró y qué salió. Sin trazabilidad no hay forma de comprobar una respuesta ni de explicar un error.

**Prueba de regresión.** Volver a pasar, después de cada cambio (un prompt nuevo, otro documento, otro modelo), los mismos casos cuya respuesta correcta ya conoces, para comprobar que lo que funcionaba sigue funcionando. Se llama así porque busca retrocesos, las regresiones. Un puñado de casos fijos, guardados con su respuesta buena, basta para empezar; la lista de comprobación del módulo 7 es su versión a mano.

**Observabilidad.** Montar tus flujos y asistentes de modo que puedas ver qué hacen y enterarte cuando fallan, con un aviso, un correo de error o un registro. Lo contrario es que algo se rompa en silencio y nadie se entere hasta que falta el resultado.

**Escalar.** En el curso tiene dos sentidos, y por el contexto se distingue cuál es. El primero es extender algo que funciona: pasar de tu flujo personal a una herramienta del equipo, con más usuarios y más casos (el "escalar" del título del módulo 7). El segundo, heredado del lenguaje de soporte, es pasar un problema al nivel superior: escalar a informática cuando el caso pide permisos, volumen o seguridad que no están en tu mano.

---

## El lenguaje de IT

Algunos términos de este bloque pertenecen a los módulos más técnicos (del 5 al 7); si aún no has llegado, no te intimiden: nadie te pedirá usarlos antes de tiempo.

**API.** Una puerta para que un programa le pida algo a otro sin pasar por la pantalla. Cuando un flujo automático llama a un modelo de IA, usa su API, y para eso necesita una credencial propia, que se contrata aparte de tu suscripción de chat. Una duda razonable es si hace falta una API además del chat para conectar la IA con tus cosas, y la respuesta es que muchas veces no: para el correo, las carpetas o el calendario, lo habitual hoy son los conectores y las integraciones de un clic, que autorizas con tu cuenta. La API aparece cuando montas un flujo que corre solo en una plataforma como las del módulo 2. Las siglas vienen del inglés *Application Programming Interface*.

**Endpoint.** La dirección concreta de esa puerta, una URL a la que se envían las peticiones.

**Repositorio (repo).** La carpeta donde vive el código de un proyecto, normalmente en GitHub.

**Contenedor (Docker).** Una forma de empaquetar una aplicación con todo lo que necesita para que funcione igual en cualquier ordenador.

**Terminal.** La ventana de texto donde se escriben órdenes directamente al ordenador, sin botones ni menús. Impone la primera vez y se le pierde el miedo pronto: herramientas como Claude Code u Ollama se manejan desde ahí. A los programas que funcionan así se les llama de línea de comandos; en inglés, CLI (*command-line interface*). En el recorrido de herramientas del curso es la quinta estación, y es opcional.

**JSON.** Un formato de texto que las máquinas leen sin ambigüedad, con los datos organizados en pares de nombre y valor. Cuando la respuesta de la IA la va a procesar otra herramienta en lugar de leerla una persona, se pide en JSON.

**Python.** El lenguaje de programación más usado en IA y tratamiento de datos. Aparece en este curso porque es el que suelen generar los asistentes de código; te basta con reconocerlo cuando lo veas.

**Framework.** Un conjunto de piezas de código ya construidas que sirve de base para programar más rápido. LangChain es el ejemplo habitual en IA; con los asistentes de código, muchas veces se puede prescindir de él.

**`.env`.** El archivo donde se guardan las credenciales de un proyecto. No se comparte ni se sube a internet.

---

> [!tip] Cómo usar este glosario
> Si una palabra te frena la lectura, búscala aquí y sigue: el concepto se entiende a fondo con la práctica, y lo importante ahora es no perder el hilo.
