---
date: "2026-02-08"
title: "Módulo 3 – Asistentes con documentos"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Módulo 3 – Asistentes con documentos

## Crear asistentes propios que responden sobre tu información

En el módulo anterior ya construiste un flujo que procesa información con IA. El siguiente paso lógico es: *¿y si en vez de un flujo fijo tengo un asistente al que puedo hacerle preguntas sobre mis propios documentos?*

Eso es lo que veremos aquí: **cómo crear un asistente alimentado con tu documentación, sin poner en riesgo información sensible** y usando el vocabulario correcto para explicarlo dentro de tu organización.

---

## 1. Qué es un asistente con documentos (y qué no es)

**Es:**
- Un asistente que tiene acceso a documentos que tú le indicas.
- Un asistente con instrucciones de comportamiento ("responde breve", "no inventes", "cita el documento").
- Un punto único de consulta para tu equipo sobre procedimientos, políticas o proyectos.

**No es:**
- No es un reemplazo de tu gestor documental.
- No garantiza "no alucinaciones": si el documento no está, puede inventar.
- No es público por defecto: depende de cómo lo compartas.

Se parece más a un **documento interactivo** que a un chatbot genérico.

---

## 2. Los tres constructores principales

Hoy existen varios entornos para crear asistentes con documentos sin programar. Los tres más accesibles:

| Plataforma | Producto | Ventaja | Limitación |
|-----------|----------|---------|------------|
| **OpenAI** | GPTs personalizados | El más maduro, amplia base de usuarios | Datos en nube de OpenAI |
| **Anthropic** | Claude Projects | Excelente para documentos largos, no entrena con datos | Menos integraciones que OpenAI |
| **Google** | Gemini Gems | Integración directa con Google Workspace | Menor control sobre instrucciones |

Los tres funcionan con el mismo principio: subes documentos, escribes instrucciones de sistema y el asistente responde basándose en ese material.

> [!tip] Observación práctica
> Muchos profesionales se quedan en GPTs personalizados sin saber que existen alternativas. Claude Projects, por ejemplo, permite trabajar con documentos mucho más extensos y tiene una política de privacidad más estricta: no usa tus datos para entrenar. Vale la pena probar al menos dos plataformas antes de decidir.

---

## 3. Cómo construir uno paso a paso

El flujo mental es casi siempre el mismo, independientemente de la plataforma:

### Paso 1: define el propósito

Sé específico. No "un asistente de mi empresa", sino:
- "Eres un asistente para el departamento de operaciones."
- "Respondes preguntas sobre el manual de contratación."
- "Si la información no está en los documentos, lo dices."

### Paso 2: selecciona y sube los documentos

- PDF, Word, FAQs, procedimientos.
- Mejor **pocos y relevantes** que muchos y desordenados.
- Pon nombres claros: `procedimiento_vacaciones_2025.pdf`, no `docfinal2.pdf`.

### Paso 3: escribe las instrucciones del sistema

Aquí mandas tú. Un bloque que suele funcionar bien:

> **Rol:** Eres un asistente interno para personal no técnico.
> **Fuente:** Responde únicamente con la información de los documentos proporcionados.
> **Si falta información:** Di "No está en la documentación" y sugiere el documento más cercano.
> **Estilo:** Español profesional, máximo 120 palabras, estructurado en lista corta.
> **Seguridad:** No inventes procedimientos ni datos que no estén en los documentos.
> **Idioma:** Responde siempre en el idioma de la pregunta.

### Paso 4: prueba con preguntas reales

No preguntes "¿quién eres?". Pregunta lo que preguntaría tu equipo:
- "¿Qué plazo tiene el cliente para reclamar?"
- "¿Qué documento hay que enviar primero?"
- "¿Cuál es el procedimiento de aprobación?"

### Paso 5: decide cómo compartirlo

- Solo para ti (experimentación).
- Con el equipo (enlace interno).
- Público (ojo: revisa qué documentos subiste).

---

## 4. Alerta de privacidad: qué no subir

> [!warning] Alerta de privacidad
> No todo lo que tienes que consultar se puede subir a un asistente, aunque la herramienta lo permita.
>
> **Evita subir:**
> - Listados con datos personales (DNI, teléfonos, direcciones).
> - Información financiera sensible de clientes.
> - Contratos con cláusulas de confidencialidad.
> - Datos de terceros que tu organización no tiene derecho a procesar fuera de su entorno.
>
> **Regla simple:** si el documento no podrías enviarlo por un canal externo no controlado, no lo subas al asistente.

Además:
- Revisa si el proveedor usa los datos para entrenar. Si es así y no tienes autorización, no lo subas.
- Mantén una carpeta "apta para IA" con documentos ya filtrados.
- Revisa las opciones de quién puede ver/usar el asistente.

---

## 5. Checklist de seguridad antes de compartir

Usa esta lista cada vez que vayas a compartir un asistente:

- He revisado los documentos y no contienen datos sensibles.
- El asistente tiene instrucciones claras de no inventar.
- Indica qué hacer si la información no está.
- Sé exactamente con quién lo voy a compartir.
- He probado preguntas reales del equipo.
- He documentado (aunque sea en 5 líneas) qué hace este asistente y qué documentos usa.

Si marcas todo, ya tienes algo enseñable a tu organización.

---

## 6. Errores comunes

- **"Como es mi asistente ya es seguro."** → No necesariamente. Depende de cómo lo compartas y de lo que subas.
- **"Si lo subo ya está actualizado."** → No. Si cambias el procedimiento, tienes que volver a subir el documento.
- **"Le puedo preguntar de cualquier tema."** → Si no está en los documentos, improvisará. Por eso le decimos que diga "no está".
- **"Quiero que haga de todo."** → Mezclar demasiadas funciones lo vuelve impredecible. Mejor asistentes acotados.
- **"Le paso 50 documentos para que sea completo."** → Más documentos no es igual a mejor respuesta. A veces la IA se va al documento menos relevante. Empieza con poco.
- **"He subido un procedimiento interno y ahora quiero compartir el asistente públicamente."** → Mala idea. Comparte solo dentro del dominio o exporta la respuesta a otro canal.

---

## 7. Cómo explicarlo al equipo técnico

Tu objetivo es también poder describir lo que has hecho con vocabulario correcto. Puedes decir algo así:

> "He creado un asistente en Claude/OpenAI que responde sobre estos 3 documentos internos. El asistente tiene instrucciones de no inventar y de responder en español. De momento lo quiero compartir solo con el equipo de operaciones. Si necesitáis integrarlo con otro sistema, os paso la descripción."

Con esto el técnico ya sabe:
1. Qué herramienta es.
2. Qué fuentes tiene.
3. Qué restricciones de seguridad debe respetar.
4. Qué integración futura puede haber.

---

## 8. Cierre y aprendizajes clave

- **Ya sabes crear un asistente con tus propios documentos sin programar.**
- La parte crítica no es técnica: es **selección de documentos e instrucciones claras**.
- La seguridad empieza por **no subir lo que no debes** y compartir solo con quien lo necesita.
- Existen **tres plataformas principales** (GPTs, Claude Projects, Gemini Gems) con distintas políticas de privacidad.
- Un asistente bien definido es una pieza clave para tu caso de uso final: puedes conectarlo con un flujo del módulo 2 y tener un circuito completo.

> [!abstract] Resumen del módulo
> Puedes crear un asistente que responda sobre documentos internos, sabes qué documentos puedes subir y cuáles no, sabes qué instrucciones darle para que no invente y sabes explicarlo dentro de la empresa.

---

> [!info] Para profundizar
> - [GPT Best Practices — OpenAI](https://platform.openai.com/docs/guides/gpt-best-practices) — Guía oficial para obtener mejores resultados de los GPTs.
> - [Claude Projects — Anthropic](https://support.anthropic.com/en/articles/9517075-what-are-projects) — Documentación de Claude Projects para crear asistentes con documentos propios.
> - [Gemini Gems — Google](https://gemini.google.com/) — Asistentes personalizados integrados con Google Workspace.
> - [Data Privacy and ChatGPT — OpenAI](https://help.openai.com/en/articles/7039943-data-usage-for-consumer-services-faq) — FAQ sobre cómo OpenAI usa los datos y cómo desactivar el entrenamiento.
> - [Prototype AI-powered Apps with Claude Artifacts](https://support.anthropic.com/en/articles/11649438-prototype-ai-powered-apps-with-claude-artifacts) — Guía para crear prototipos sin API key.

---

En el [Módulo 4](modulo-4-ia-que-programa.md) veremos el cambio de paradigma más importante del curso: los AI coding assistants y cómo cambian lo que un profesional puede construir por sí mismo.
