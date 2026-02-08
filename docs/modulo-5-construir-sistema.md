---
date: "2026-02-08"
title: "Módulo 5 – Construir tu sistema"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Módulo 5 – Construir tu sistema

## RAG, agentes y APIs: la capa técnica para quienes quieran ir más allá

> [!note] Este módulo es una profundización opcional
> Todo lo que necesitas para usar IA de forma profesional ya lo cubrieron los módulos 1 a 4. Este módulo es para quienes quieran entender — y eventualmente construir — la infraestructura técnica que hay detrás de los asistentes y los flujos automáticos. Lo presentamos a través del prisma de AI-assisted development: no se escribe código a mano, se le describe al asistente lo que se necesita.

---

## 1. RAG: hacer que la IA lea TUS documentos

En el módulo 3 creaste un asistente con documentos usando plataformas como GPTs o Claude Projects. Eso funciona, pero tiene limitaciones: dependes del proveedor, no controlas cómo se indexa la información y no puedes conectarlo con tus propios sistemas.

Un **RAG** (*Retrieval-Augmented Generation*) es la forma profesional de resolver esto. El concepto es sencillo:

1. **Ingesta:** tomas tus documentos (PDFs, Word, emails) y los divides en fragmentos.
2. **Indexación:** cada fragmento se convierte en una representación numérica (embedding) y se guarda en una base de datos vectorial.
3. **Consulta:** cuando haces una pregunta, se buscan los fragmentos más relevantes.
4. **Generación:** esos fragmentos se envían al modelo junto con tu pregunta, para que responda basándose en ellos.

Es como tener un asistente que **primero busca en tu archivador y luego te responde con lo que encontró**.

> [!tip] Observación práctica
> Lo que distingue un RAG útil de un RAG frustrante es la calidad de la indexación, no la potencia del modelo. Si los fragmentos están mal cortados o los documentos son demasiado genéricos, la búsqueda devuelve ruido. Empieza con documentos bien estructurados y fragmentos pequeños (300-500 palabras).

> [!example]- Profundiza: ejemplo de flujo RAG
> Con un AI coding assistant como Claude Code, puedes describir:
>
> "Quiero un sistema que lea todos los PDFs de la carpeta `informes/`, los indexe en una base vectorial local y me permita hacerles preguntas en lenguaje natural."
>
> El asistente generará el código necesario: carga de documentos, division en fragmentos, generación de embeddings (con OpenAI o con un modelo local), almacenamiento en una base como FAISS o LanceDB, y una interfaz de consulta.
>
> Tecnologías habituales:
> - **Embeddings:** OpenAI, Ollama (local), Sentence Transformers
> - **Base vectorial:** FAISS, LanceDB, Chroma, Pinecone
> - **Frameworks:** LangChain, LlamaIndex (opcionales — con AI coding assistants muchas veces es más directo ir sin framework)

---

## 2. Agentes: IA que decide qué herramienta usar

Un **agente** no es un modelo más inteligente. Es un modelo con **permiso para actuar**: puede elegir entre varias herramientas según lo que le pidas.

**Ejemplo:**
- Le preguntas: "¿Qué dice el contrato sobre las penalizaciones?"
  → El agente decide usar la herramienta "buscar en documentos" (RAG).
- Le preguntas: "¿Cuál es el tipo de cambio EUR/USD hoy?"
  → El agente decide usar la herramienta "buscar en web".

El agente analiza tu instrucción, elige la herramienta adecuada, la ejecuta y te devuelve el resultado. Esto es lo que hay detrás de los "agentes de IA" de los que habla todo el mundo.

**Aplicaciones prácticas:**
- Un asistente de proyecto que decide si buscar un dato en los informes internos o en el correo del cliente.
- Un chatbot de soporte que primero consulta el RAG y, si no encuentra, escala a un humano.
- Un gestor de tareas que clasifica la entrada y la redirige al flujo correcto.

> [!example]- Profundiza: cómo funciona un agente
> El patrón básico de un agente:
>
> 1. El modelo recibe tu instrucción.
> 2. Analiza las herramientas disponibles (cada una tiene una descripción).
> 3. Elige una y la ejecuta.
> 4. Recibe el resultado y genera la respuesta final.
>
> Con AI coding assistants, puedes construir un agente describiendo:
> "Quiero un agente que tenga acceso a dos herramientas: buscar en mis documentos y buscar en la web. Que elija la correcta según la pregunta."
>
> Tecnologías habituales:
> - **MCP (Model Context Protocol):** el estándar para conectar herramientas al modelo.
> - **Claude Agent SDK:** framework de Anthropic para construir agentes.
> - **LangGraph:** framework de LangChain para agentes con flujo de estado.

---

## 3. APIs: conectar tu sistema al mundo

Una **API** es la forma de hacer que tu sistema sea accesible desde otros programas. En la práctica, si quieres que tu RAG o tu agente sea utilizable desde n8n, Make o cualquier otra herramienta, necesitas exponerlo como una API.

El concepto es simple:
- Creas un servicio que escucha peticiones en una URL.
- Alguien (una persona, un flujo, otra aplicación) envía una pregunta a esa URL.
- Tu sistema procesa la pregunta y devuelve la respuesta.

> [!example]- Profundiza: ejemplo con FastAPI
> Con un AI coding assistant, puedes describir:
>
> "Quiero exponer mi RAG como una API. Que tenga un endpoint `/query` que reciba una pregunta y devuelva la respuesta en JSON."
>
> El asistente generará algo así:
> ```python
> from fastapi import FastAPI, Query
> app = FastAPI(title="RAG API")
>
> @app.get("/query")
> def query_docs(q: str = Query(...)):
>     answer = rag_pipeline.query(q)
>     return {"question": q, "answer": answer}
> ```
>
> Ejecutas con `python main.py` y ya tienes un servicio al que puedes llamar desde n8n con un nodo HTTP Request.

---

## 4. Lo que se puede construir hoy

Combinando RAG, agentes y APIs, un profesional con un AI coding assistant puede construir sistemas que antes requerían un equipo de desarrollo:

- **Búsqueda semántica sobre correos y documentos** — todo indexado localmente, sin subir datos a la nube.
- **Asistente de proyecto** que conoce los entregables, el contrato, las actas de reunión y los correos del cliente.
- **Sistema de alertas** que monitoriza KPIs desde una base de datos y notifica cuando algo se desvía.
- **Dashboard conversacional** donde preguntas en lenguaje natural sobre los datos de tu organización.

> [!tip] Observación práctica
> La tentación es construir "el sistema completo" desde el principio. En la práctica, los sistemas que funcionan se construyen pieza a pieza: primero un RAG simple sobre 10 documentos, luego un agente que elige entre el RAG y otra fuente, luego una API para conectarlo con el flujo de n8n. Cada pieza se prueba antes de añadir la siguiente.

---

## 5. Publicar y compartir

Una vez que tienes un prototipo funcionando, las formas más comunes de compartirlo son:

| Nivel | Qué haces | Cuándo usarlo |
|-------|------------|---------------|
| **GitHub** | Subes el proyecto con README e instrucciones | Para revisión o trabajo en equipo |
| **API local** | Lo expones como servicio en tu máquina | Para conectarlo con n8n, Make o Zapier |
| **Despliegue** | Lo pones en un servidor (Render, Railway) | Si necesitas acceso externo permanente |

**Reglas esenciales:**
- Nunca publiques tu `.env` ni tus credenciales.
- Usa datos de prueba o anonimizados en los ejemplos.
- Documenta cómo replicarlo: qué instalar, qué configurar, cómo probar.

> [!warning] Alerta de privacidad
> Si despliegas un RAG con documentos reales en un servidor externo, esos documentos están fuera de tu control. Para datos sensibles, mantén todo local o usa infraestructura de tu organización.

---

## 6. Cierre y aprendizajes clave

- **RAG es la forma profesional** de hacer que la IA responda sobre tus documentos, con control total sobre la indexación y la privacidad.
- **Los agentes** añaden una capa de decisión: la IA elige qué herramienta usar según la pregunta.
- **Las APIs** permiten conectar tu sistema con el resto del mundo.
- **Con AI coding assistants**, todo esto se construye describiendo lo que necesitas, no escribiendo código desde cero.
- **La clave es ir pieza a pieza**, probando cada componente antes de añadir el siguiente.

> [!abstract] Resumen del módulo
> Entiendes los tres pilares técnicos de un sistema de IA profesional: RAG (dar contexto), agentes (dar capacidad de acción) y APIs (dar acceso). Sabes que con un AI coding assistant puedes construir estos componentes sin programar desde cero, y conoces las decisiones de privacidad y arquitectura que implica cada uno.

---

> [!info] Para profundizar
> - [Building Effective AI Agents — Anthropic](https://www.anthropic.com/engineering/building-effective-agents) — Patrones de diseño de agentes desde la perspectiva del equipo de Anthropic.
> - [A Practical Guide to Building Agents — OpenAI](https://cdn.openai.com/business-guides-and-resources/a-practical-guide-to-building-agents.pdf) — Guía oficial de OpenAI para agentes empresariales.
> - [LangChain Academy](https://academy.langchain.com/) — Cursos estructurados sobre cadenas, RAG y agentes.
> - [FastAPI Documentation](https://fastapi.tiangolo.com/) — Framework para crear APIs en Python.
> - [Model Context Protocol](https://modelcontextprotocol.io/introduction) — Estándar para conectar modelos con herramientas externas.
> - [LangChain Crash Course — freeCodeCamp](https://youtu.be/lG7Uxts9SXs) — Tutorial de 1h 40min con LLMs, prompts, tools y agentes.

---

En el [Módulo 6](modulo-6-evaluar-y-escalar.md) veremos cómo evaluar, documentar y escalar lo que has construido para que funcione más allá de tu portátil.
