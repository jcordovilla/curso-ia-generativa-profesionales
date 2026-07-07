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
---

# Glosario

> Los términos que van apareciendo en el curso, explicados en lenguaje llano. No necesitas memorizarlos: vuelve aquí cuando uno se te atragante.

---

## Conceptos de IA

**Modelo (o LLM, modelo de lenguaje).** El motor que genera el texto. Cuando hablas con ChatGPT, Claude o Gemini, hablas con un modelo. Unos son más capaces y caros, otros más rápidos y baratos. Elegir modelo es elegir un compromiso entre calidad, coste y privacidad.

**Modelo local.** Un modelo que se ejecuta en tu propio ordenador en lugar de en los servidores del proveedor. Nada de lo que escribes sale de tu máquina, así que es la opción natural para datos sensibles. Herramientas como Ollama o LM Studio lo ponen al alcance de cualquiera.

**Prompt.** La instrucción que le das al modelo. Un buen prompt dice el papel ("eres un asistente que resume informes"), el formato ("en cinco viñetas"), el idioma y qué hacer si falta información. La calidad del resultado depende más del prompt que del modelo.

**Instrucciones de sistema.** Las normas de comportamiento que le das a un asistente una sola vez y que rigen todas sus respuestas: su papel, su estilo, qué hacer cuando falta información. El prompt es la petición de cada momento; las instrucciones de sistema son el contrato permanente.

**GPT personalizado.** Un asistente que configuras dentro de ChatGPT con tus instrucciones y tus documentos, para reutilizarlo o compartirlo. Claude Projects y Gemini Gems son los equivalentes de los otros proveedores; los tres se aprenden en el módulo 3.

**Token.** La unidad en la que el modelo cuenta el texto, más o menos una sílaba o un trozo de palabra. Importa porque los proveedores cobran por tokens y los modelos tienen un límite de cuántos procesan de una vez.

**Alucinación.** Cuando el modelo se inventa un dato con total seguridad aparente: una cifra, una cita, una cláusula que no existe. Es la razón por la que nunca conviene fiarse de un resultado sin verificarlo.

**Precisión plausible.** El caso de alucinación más peligroso: la IA suelta un dato concreto (cifra, fecha, nombre, sigla) con una seguridad y un formato tan creíbles que no lo cuestionas. Verifica siempre los datos concretos antes de darlos por buenos.

**Multimodal.** Un modelo que no solo entiende texto, sino también imágenes, audio o documentos escaneados. Le pasas la foto de una pizarra y te devuelve las notas ordenadas.

---

## Cuentas y conexiones

**Credencial (o API key).** Un código que autoriza a una herramienta a usar un servicio en tu nombre. Es tu llave. Se pega una vez en la configuración y no se comparte por correo ni por chat. La mayoría de los atascos al empezar son una credencial mal puesta, no un fallo de la IA.

**Opt-out.** La opción de pedirle a un proveedor que no use tus datos para entrenar sus modelos. En unos servicios viene activada por defecto y en otros hay que activarla a mano. Conviene saber cuál es el caso antes de subir nada.

**Webhook.** Un aviso automático que un sistema envía a otro cuando pasa algo ("ha llegado un formulario", "se ha creado una fila"). Sirve para disparar un flujo sin que nadie pulse un botón.

---

## Construir y conectar

**No-code.** Herramientas que permiten montar automatizaciones conectando bloques visuales, sin escribir código. Latenode, n8n y Make son las que verás en este curso.

**Flujo.** Una secuencia de pasos que se ejecuta sola: algo llega (un correo, un formulario), la IA lo procesa y el resultado se entrega donde haga falta. Es la unidad básica de la automatización: si puedes dibujarlo en tres cajas, puedes construirlo.

**Disparador (trigger).** El evento que pone en marcha un flujo: "cuando llegue un correo", "cuando se rellene el formulario", "cada lunes a las ocho". Todo flujo empieza por uno.

**RAG (generación aumentada por recuperación).** La forma de hacer que la IA responda sobre tus documentos: primero busca los fragmentos relevantes en tu material y luego redacta la respuesta con ellos delante. Como un asistente que consulta el archivador antes de contestar.

**Embedding.** La representación numérica de un fragmento de texto que permite buscar por significado y no solo por palabras exactas. Es lo que hace que una búsqueda encuentre "vacaciones" cuando preguntas por "días libres". En el módulo 5 lo llamamos "huella de significado", que es lo mismo dicho en llano.

**Base vectorial.** El almacén donde se guardan esos embeddings para poder buscarlos rápido. FAISS, LanceDB o Chroma son ejemplos. Es la pieza que en el módulo 5 aparece como "índice de significado".

**Agente.** Un modelo con permiso para elegir herramienta según lo que le pidas: buscar en tus documentos, consultar la web, escribir un archivo. Analiza la petición, decide qué usar y lo ejecuta.

**AI coding assistant (asistente de código).** Una herramienta a la que le describes en lenguaje natural lo que necesitas y que escribe, ejecuta y corrige el código por ti. Claude Code y Cursor son los ejemplos más conocidos. Es la pieza que ha desdibujado la frontera entre saber y no saber programar.

**MCP (Model Context Protocol).** Un estándar abierto que conecta los modelos de IA con tus herramientas (correo, documentos, bases de datos) sin programar cada conexión a medida. Como un enchufe universal: un único formato que vale para todo.

---

## El lenguaje de IT

Algunos términos de este bloque pertenecen a los módulos avanzados (5 y 6); si aún no has llegado, no te intimiden: nadie te pedirá usarlos antes de tiempo.

**API.** Una puerta para que un sistema le pida algo a otro. Cuando tu flujo llama a un modelo, usa una API.

**Endpoint.** La dirección concreta de esa puerta, una URL a la que se envían las peticiones.

**Repositorio (repo).** La carpeta donde vive el código de un proyecto, normalmente en GitHub.

**Contenedor (Docker).** Una forma de empaquetar una aplicación con todo lo que necesita para que funcione igual en cualquier ordenador.

**Terminal.** La ventana de texto donde se escriben órdenes directamente al ordenador, sin botones ni menús. Impone la primera vez y se le pierde el miedo pronto: herramientas como Claude Code u Ollama se manejan desde ahí.

**JSON.** Un formato de texto que las máquinas leen sin ambigüedad, con los datos organizados en pares de nombre y valor. Cuando la respuesta de la IA la va a procesar otra herramienta en lugar de leerla una persona, se pide en JSON.

**Python.** El lenguaje de programación más usado en IA y tratamiento de datos. Aparece en este curso porque es el que suelen generar los asistentes de código; te basta con reconocerlo cuando lo veas.

**Framework.** Un conjunto de piezas de código ya construidas que sirve de base para programar más rápido. LangChain es el ejemplo habitual en IA; con los asistentes de código, muchas veces se puede prescindir de él.

**`.env`.** El archivo donde se guardan las credenciales de un proyecto. No se comparte ni se sube a internet.

**Observabilidad.** Montar tus flujos y asistentes de modo que puedas ver qué hacen y enterarte cuando fallan, con un aviso, un correo de error o un registro. Lo contrario es que algo se rompa en silencio y nadie se entere hasta que falta el resultado.

---

> [!tip] Cómo usar este glosario
> Si una palabra te frena la lectura, búscala aquí y sigue. Entender un concepto a fondo viene con la práctica, no con la definición. Lo importante ahora es no perder el hilo.
