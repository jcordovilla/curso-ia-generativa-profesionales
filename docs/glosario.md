---
date: "2026-06-09"
title: "Glosario"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Glosario

> Los términos que van apareciendo en el curso, explicados en lenguaje llano. No necesitas memorizarlos: vuelve aquí cuando uno se te atragante.

---

## Conceptos de IA

**Modelo (o LLM, modelo de lenguaje).** El motor que genera el texto. Cuando hablas con ChatGPT, Claude o Gemini, hablas con un modelo. Unos son más capaces y caros, otros más rápidos y baratos. Elegir modelo es elegir un compromiso entre calidad, coste y privacidad.

**Prompt.** La instrucción que le das al modelo. Un buen prompt dice el papel ("eres un asistente que resume informes"), el formato ("en cinco viñetas"), el idioma y qué hacer si falta información. La calidad del resultado depende más del prompt que del modelo.

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

**No-code.** Herramientas que permiten montar automatizaciones conectando bloques visuales, sin escribir código. n8n, Make y Zapier son las más conocidas.

**RAG (generación aumentada por recuperación).** La forma de hacer que la IA responda sobre tus documentos: primero busca los fragmentos relevantes en tu material y luego redacta la respuesta con ellos delante. Como un asistente que consulta el archivador antes de contestar.

**Embedding.** La representación numérica de un fragmento de texto que permite buscar por significado y no solo por palabras exactas. Es lo que hace que una búsqueda encuentre "vacaciones" cuando preguntas por "días libres".

**Base vectorial.** El almacén donde se guardan esos embeddings para poder buscarlos rápido. FAISS, LanceDB o Chroma son ejemplos.

**Agente.** Un modelo con permiso para elegir herramienta según lo que le pidas: buscar en tus documentos, consultar la web, escribir un archivo. Analiza la petición, decide qué usar y lo ejecuta.

**MCP (Model Context Protocol).** Un estándar abierto que conecta los modelos de IA con tus herramientas (correo, documentos, bases de datos) sin programar cada conexión a medida. Como un enchufe universal: un único formato que vale para todo.

---

## El lenguaje de IT

**API.** Una puerta para que un sistema le pida algo a otro. Cuando tu flujo llama a un modelo, usa una API.

**Endpoint.** La dirección concreta de esa puerta, una URL a la que se envían las peticiones.

**Repositorio (repo).** La carpeta donde vive el código de un proyecto, normalmente en GitHub.

**Contenedor (Docker).** Una forma de empaquetar una aplicación con todo lo que necesita para que funcione igual en cualquier ordenador.

**`.env`.** El archivo donde se guardan las credenciales de un proyecto. No se comparte ni se sube a internet.

**Observabilidad.** Montar tus flujos y asistentes de modo que puedas ver qué hacen y enterarte cuando fallan, con un aviso, un correo de error o un registro. Lo contrario es que algo se rompa en silencio y nadie se entere hasta que falta el resultado.

---

> [!tip] Cómo usar este glosario
> Si una palabra te frena la lectura, búscala aquí y sigue. Entender un concepto a fondo viene con la práctica, no con la definición. Lo importante ahora es no perder el hilo.
