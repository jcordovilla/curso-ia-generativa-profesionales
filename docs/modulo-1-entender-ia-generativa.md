---
date: "2026-02-08"
title: "Módulo 1 – Entender la IA generativa"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Módulo 1 – Entender la IA generativa

## Qué es, para qué sirve y cómo elegir

Antes de automatizar nada, necesitas entender las piezas básicas. No para convertirte en técnico, sino para **tomar decisiones con criterio**: qué herramienta usar, qué puedes compartir con la IA, qué modelo elegir y cómo plantear tus primeras peticiones de forma eficaz.

Este módulo te da las bases para todo lo que viene después.

---

## 1. Qué es la IA generativa (y qué no es)

La IA generativa es un tipo de inteligencia artificial que **produce contenido nuevo** — texto, imágenes, código, audio — a partir de instrucciones en lenguaje natural. Los modelos de lenguaje (LLMs) son su forma más extendida: les das una instrucción y te devuelven una respuesta elaborada.

**Lo que sí es:**
- Un asistente que procesa, resume, clasifica y genera texto con rapidez.
- Una herramienta que mejora con instrucciones claras.
- Un acelerador de tareas repetitivas.

**Lo que no es:**
- No es infalible: inventa datos con seguridad aparente (lo que se llaman "alucinaciones").
- No es una base de datos: no "sabe" lo que hay en tus archivos a menos que se lo des.
- No sustituye el criterio profesional: amplifica lo que ya sabes, pero no piensa por ti.

> [!tip] Observación práctica
> La mayoría de profesionales empiezan usando la IA como un chatbot para hacer preguntas y no pasan de ahí. Lo interesante empieza cuando dejas de usarla como buscador y empiezas a usarla como herramienta de proceso: que resuma, clasifique, extraiga y transforme la información con la que ya trabajas.

---

## 2. Los 4 patrones de uso

Prácticamente todo lo que puedes hacer con IA generativa en un entorno profesional se reduce a cuatro patrones:

| Patrón | Qué hace | Ejemplo |
|--------|----------|---------|
| **Resumir** | Condensa información larga en lo esencial | Email largo del cliente → 5 puntos clave para el equipo |
| **Clasificar** | Asigna categorías o niveles a contenido | Consulta de cliente → urgente / normal / informativa |
| **Extraer** | Saca datos concretos de un texto | Contrato de 40 páginas → partes, plazos, penalizaciones |
| **Conversar** | Responde preguntas sobre un tema o documento | "¿Qué dice el procedimiento sobre las vacaciones?" |

Cuando pienses en un caso de uso, pregúntate: **¿estoy resumiendo, clasificando, extrayendo o conversando?** Si puedes nombrarlo, puedes construirlo.

**Ejemplos por sector:**

- **Consultoría:** un informe de 30 páginas llega por email → la IA extrae los 5 riesgos principales y los resume para el socio director.
- **Legal:** un contrato nuevo → la IA extrae las cláusulas de penalización y las compara con la plantilla estándar.
- **Marketing:** 200 respuestas a una encuesta de satisfacción → la IA clasifica por sentimiento y genera un resumen por temas.
- **RRHH:** preguntas frecuentes de empleados sobre políticas internas → un asistente que conversa sobre el manual de la empresa.
- **Finanzas:** informes mensuales de 15 páginas → la IA extrae los KPIs y señala desviaciones respecto al mes anterior.

---

## 3. Elegir modelo: el mapa actual

No existe "la mejor IA". Existen modelos con distintas capacidades, precios y políticas de privacidad. Aquí tienes un mapa orientativo:

| Proveedor | Modelo destacado | Fortaleza | Privacidad |
|-----------|-----------------|-----------|-----------|
| **OpenAI** | GPT-4o | Versatilidad general, multimodal | Datos en nube, opción de no entrenar |
| **Anthropic** | Claude Sonnet / Opus | Análisis extenso, instrucciones complejas | No entrena con datos de usuario |
| **Google** | Gemini | Integración con Google Workspace | Datos en nube de Google |
| **Meta** | Llama 3 (vía Ollama) | Gratuito, ejecutable en local | Completamente privado si es local |
| **Mistral** | Mistral / Mixtral | Buen rendimiento, empresa europea | Opción local o en nube |
| **Alibaba** | Qwen | Multilingüe, buen rendimiento | Opción local o en nube |

> [!tip] Observación práctica
> Para la mayoría de los casos de uso profesionales, Claude Sonnet o GPT-4o son la mejor relación entre calidad y coste. Si necesitas privacidad total, los modelos locales vía Ollama han mejorado enormemente — Llama 3 y Qwen 2.5 son sorprendentemente capaces para tareas de resumen, clasificación y extracción.

### Cómo elegir

- **¿Necesitas máxima calidad?** → GPT-4o o Claude Opus.
- **¿Necesitas buen rendimiento a bajo coste?** → Claude Sonnet o GPT-4o-mini.
- **¿Trabajas con datos sensibles?** → Modelos locales (Ollama + Llama 3 / Mistral).
- **¿Tu organización usa Google Workspace?** → Gemini tiene integración directa.

---

## 4. Privacidad y seguridad: qué puedes compartir con la IA

Esta es la sección que más profesionales ignoran y la que más problemas causa.

> [!warning] Alerta de privacidad
> **Regla de oro:** si no lo enviarías por email sin cifrar a un desconocido, no se lo des a una IA en la nube.

### Lo que SÍ puedes compartir
- Textos genéricos sin datos personales.
- Procedimientos internos ya publicados o públicos.
- Datos anonimizados o sintéticos.
- Borradores propios para revisión.

### Lo que NO debes compartir
- Datos personales (nombres + DNI, teléfonos, direcciones).
- Información financiera sensible de clientes.
- Contratos con cláusulas de confidencialidad.
- Datos de terceros que tu organización no tiene derecho a procesar fuera de su entorno.
- Credenciales, contraseñas o claves de API.

### Preguntas que debes hacerte antes de usar una herramienta

1. **¿Dónde se procesan mis datos?** ¿En los servidores del proveedor o en mi máquina?
2. **¿El proveedor usa mis datos para entrenar?** (OpenAI: sí por defecto salvo opt-out; Anthropic: no; Ollama: local, sin envío).
3. **¿Puedo usar una versión empresarial?** (ChatGPT Enterprise, Claude for Teams — no entrenan con datos).
4. **¿Mi organización tiene una política de IA?** Si no la tiene, es buen momento para proponerla.

---

## 5. Cuentas, credenciales y conexiones

Cuando empiezas a conectar herramientas con IA, aparecen tres conceptos que confunden a todo el mundo. Merece la pena aclararlos una vez:

| Concepto | Qué es | Analogía |
|----------|--------|----------|
| **Cuenta** | Tu identidad en un servicio (Google, OpenAI, Microsoft) | "Soy yo" |
| **Credencial (API key)** | Un código que autoriza a una herramienta a usar un servicio en tu nombre | "Esta es mi llave" |
| **Conexión** | Cuando la plataforma guarda tu credencial para usarla en flujos automáticos | "Guarda mi llave para no tener que sacarla cada vez" |

**La credencial es lo más importante.** Sin ella, no hay llamada a la IA. Se pega una vez en el campo de configuración de la herramienta y no se comparte por email ni por chat.

> [!tip] Observación práctica
> En la práctica, la mayoría de los atascos no están en la IA sino en las credenciales. "No funciona" suele significar "no hay API key" o "la cuenta no tiene permisos". Antes de pensar que la IA falla, revisa que la llave esté en su sitio.

---

## 6. Multimodalidad: la IA que ve y escucha

Los modelos actuales no solo procesan texto. Los más avanzados pueden:

- **Ver imágenes:** le pasas una foto de una pizarra con notas de una reunión y te devuelve un resumen estructurado.
- **Procesar documentos escaneados:** un PDF con tablas escaneadas → la IA extrae los datos.
- **Transcribir audio:** la grabación de una reunión de una hora → acta resumida en 5 minutos (usando modelos como Whisper).

Esto no es futuro: es presente. GPT-4o, Claude Sonnet y Gemini ya procesan imágenes. La transcripción de audio funciona con herramientas gratuitas.

**Ejemplo práctico:** un consultor graba una reunión con el cliente en su móvil. Al volver a la oficina, la IA transcribe la grabación y genera un acta con los puntos de acción. Total: 10 minutos en vez de 45.

---

## 7. Errores comunes al empezar

- **"Uso ChatGPT para todo"** → Cada modelo tiene fortalezas distintas. Prueba al menos dos para comparar.
- **"La IA me da siempre la razón"** → Los modelos son complacientes por diseño. Pídele explícitamente que señale errores o debilidades en tu planteamiento.
- **"Copio el prompt de un tutorial"** → Los prompts funcionan cuando se adaptan a tu contexto. Di el rol, el formato, el idioma y el público.
- **"No sé por dónde empezar"** → Empieza por lo que más te duele: ¿qué tarea repetitiva haces cada semana que podrías delegarle a la IA?
- **"Subo todos mis documentos al GPT"** → Menos es más. Empieza con 3-5 documentos bien seleccionados.

---

## 8. Cierre y aprendizajes clave

- La IA generativa **no es un buscador ni un oráculo**: es una herramienta de proceso que necesita instrucciones claras.
- Todo lo que harás con IA se reduce a **4 patrones**: resumir, clasificar, extraer, conversar.
- **Elegir modelo es elegir compromiso** entre calidad, coste y privacidad.
- **La privacidad no es opcional**: saber qué compartir y qué no es tan importante como saber usar la herramienta.
- **Las credenciales son la puerta de entrada**: si no las entiendes, te atascas antes de empezar.

> [!abstract] Resumen del módulo
> Ya puedes identificar los patrones de uso de la IA, elegir un modelo adecuado para tu contexto, evaluar los riesgos de privacidad y configurar tus primeras herramientas con criterio. Eso es todo lo que necesitas para pasar al siguiente módulo.

---

> [!info] Para profundizar
> - [Intro to Large Language Models](https://www.youtube.com/watch?v=zjkBMFhNj_g) — Andrej Karpathy explica en una hora cómo funcionan los LLMs sin requerir conocimientos técnicos.
> - [How to use AI to do practical stuff](https://www.oneusefulthing.org/p/how-to-use-ai-to-do-practical-stuff) — Guía del profesor Ethan Mollick (Wharton) con casos de uso concretos.
> - [Generative AI for Everyone](https://www.deeplearning.ai/courses/generative-ai-for-everyone/) — Curso gratuito de Andrew Ng que cubre los fundamentos para audiencias no técnicas.
> - [Artificial Analysis — Comparador de modelos](https://artificialanalysis.ai/models) — Comparativa independiente de modelos por precio, velocidad y calidad.
> - [Ollama](https://ollama.com/) — Ejecuta modelos de IA en tu máquina, sin enviar datos a terceros.

---

En el [Módulo 2](modulo-2-automatizar-con-ia.md) construirás tu primer flujo automatizado: entrada de datos → IA procesa → resultado útil para tu equipo.
