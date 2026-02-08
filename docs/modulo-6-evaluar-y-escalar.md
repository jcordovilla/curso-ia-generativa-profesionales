---
date: "2026-02-08"
title: "Módulo 6 – Evaluar y escalar"
tags:
  - lang/es
  - topic/ai
  - topic/automation
  - type/course
usefulness: 0.9
---

# Módulo 6 – Evaluar y escalar

## De "mi prototipo" a "herramienta del equipo"

Ya tienes algo funcionando: un flujo, un asistente, quizá un RAG o un sistema con agentes. Ahora viene la parte menos llamativa pero más profesional: **que funcione todos los días, para más gente y sin sustos**.

Este es el módulo que marca la diferencia entre un experimento que impresiona una vez y un caso de uso que genera valor continuo.

> [!tip] Observación práctica
> Lo que distingue un piloto exitoso de un piloto que se olvida en dos semanas no es la tecnología que usa. Es si alguien documentó el prompt, centralizó las credenciales y definió quién revisa que el resultado siga siendo útil. La parte aburrida es la que sostiene todo.

---

## 1. Testing: checklist de pruebas para flujos y asistentes

Cada vez que cambies un prompt, una conexión, un documento o una credencial, pasa por esta lista:

**Entrada:**
- [ ] El flujo sigue recibiendo el dato (email, formulario, webhook).
- [ ] La conexión sigue autorizada (no ha caducado la cuenta).
- [ ] Los filtros funcionan (no envía a la IA contenido que no debería).

**Procesamiento IA:**
- [ ] La IA responde en el idioma correcto.
- [ ] Devuelve el formato esperado (lista, párrafo, JSON).
- [ ] Responde algo razonable con un caso real.
- [ ] Ante una pregunta que no puede responder, lo indica en vez de inventar.

**Salida:**
- [ ] El resultado llega al canal/equipo correcto.
- [ ] Se guarda en el sistema previsto (CRM, Sheets, Slack).
- [ ] Se ve quién o qué lo ha generado (trazabilidad mínima).

**Errores:**
- [ ] Si la IA falla, el flujo no se queda colgado sin avisar.
- [ ] Existe algún sitio donde se ve el error (log, email de aviso, historial de la plataforma).

> [!warning] Alerta de privacidad
> Al probar, usa datos de ejemplo o anonimizados. No envíes datos reales de clientes a través de un flujo que todavía estás depurando — un error de configuración podría enviar información sensible a un canal equivocado.

---

## 2. Cuatro métricas sencillas que demuestran valor

No necesitas un dashboard completo. Con 4 métricas puedes saber si tu caso de uso merece seguir vivo y, lo que es más importante, puedes justificarlo ante dirección:

### Uso
¿Cuántas ejecuciones ha tenido esta semana? ¿Quién lo está usando realmente? Si nadie lo usa, no importa lo sofisticado que sea.

### Ahorro de tiempo estimado
¿Cuánto tardabas antes en hacer esa tarea? Multiplica por el número de veces que la IA la hace ahora.

*Ejemplo:* "El flujo de resumen automático procesó 46 correos en la última semana, con un ahorro estimado de 3,8 horas de lectura."

### Calidad percibida
¿Las personas que reciben el resultado lo usan o lo ignoran? Una mini-encuesta basta: "¿Te sirve tal como llega?" — Sí / No / A medias.

### Errores o reintentos
¿Cuántas veces falla por credenciales caducadas, formatos inesperados o cambios en el modelo? Menos errores = más confianza del equipo.

> [!tip] Observación práctica
> No midas solo la tecnología: mide el impacto en el proceso. "El flujo procesó 46 correos" es un dato técnico. "El equipo comercial ya no dedica 4 horas semanales a leer correos del cliente" es un dato de negocio. El segundo es el que convence.

---

## 3. El puente con IT: vocabulario mínimo

En algún momento, lo que construiste necesitará pasar a las manos del equipo técnico. Para que esa conversación funcione, necesitas hablar un mínimo de su idioma:

| Término | Qué significa para ti |
|---------|----------------------|
| **API** | Una puerta para que un sistema le pida algo a otro. Cuando tu flujo llama a OpenAI, usa una API. |
| **Endpoint** | La dirección concreta de esa puerta. Ejemplo: `https://api.openai.com/v1/chat/completions`. |
| **Repositorio (repo)** | La carpeta donde vive el código de un proyecto, normalmente en GitHub. |
| **Contenedor (Docker)** | Una forma de empaquetar una aplicación con todo lo que necesita para que funcione igual en cualquier sitio. |
| **`.env`** | El archivo donde se guardan las credenciales. No se comparte ni se sube a internet. |

**Frase que puedes usar con el equipo técnico:**

> "El caso de uso ya está validado en n8n/Make. Necesitamos una versión más estable: un endpoint que haga esta operación, con credenciales centralizadas. Os paso el flujo, el prompt y los ejemplos de entrada y salida."

Con eso estás haciendo tu parte. Y el técnico tiene lo que necesita para actuar.

> [!example]- Profundiza: qué mirar cuando te pasan un repo de GitHub
> No necesitas leer código. Necesitas leer la documentación:
>
> 1. **`README.md`** → explica qué hace, cómo se instala, cómo se ejecuta.
> 2. **Carpeta `docs/` o ejemplos** → cómo se usa.
> 3. **`.env.example`** → qué credenciales hacen falta.
>
> Si puedes responder "qué hace", "qué datos de entrada pide" y "qué devuelve", ya puedes evaluar si es útil para tu caso.

---

## 4. De "mi flujo" a "flujo del equipo"

Para que lo que hagas no se quede en tu cuenta personal:

### Centraliza credenciales
Pide que la cuenta de la plataforma (n8n, Make, GPTs) sea de equipo, no personal. Si tú cambias de puesto o de dispositivo, el flujo no debería romperse.

### Documenta en una página simple
Incluye:
- Qué hace el flujo.
- Cuándo se ejecuta.
- Qué entradas y salidas tiene.
- Qué prompt usa (la versión exacta).
- Quién mantiene las credenciales.

### Define un responsable funcional
No tiene que ser técnico. Su trabajo es revisar que el resultado siga siendo útil y que la gente lo use.

### Explica cómo reportar un fallo
- "Si no te llega el resumen, avisa en este canal."
- "Si la respuesta del asistente no es correcta, copia la pregunta y la respuesta y mándamela."

Si solo tú sabes cómo funciona, **no está listo**. Si otros lo pueden probar, usar y reportar fallos, **sí está listo**.

---

## 5. Cuándo llamar al equipo técnico

No todo lo tienes que resolver tú. Escala cuando:

- El volumen de ejecuciones crece mucho (costes o límites de la plataforma).
- Necesitas conectarte a sistemas internos con permisos especiales.
- Quieres exponer tu flujo como servicio para otras áreas.
- Hay que guardar logs de forma seria (auditoría, cumplimiento normativo).
- La seguridad no permite usar una credencial personal.
- Necesitas alta disponibilidad (que funcione 24/7 sin caerse).

---

## 6. Mantener los documentos y los prompts

La IA generativa no es estática: cambian las APIs, cambian los modelos, cambian los documentos que subiste, cambian las personas que lo usan. Sin mantenimiento, todo se rompe en silencio.

**Reglas simples:**
- **Documento actualizado → asistente actualizado.** Si cambias el procedimiento, cambia el documento del asistente.
- **Versión visible.** Nombra los archivos con fecha o versión: `procedimiento_onboarding_v3_2026.pdf`.
- **Prompt documentado.** Guarda la versión exacta del prompt en un sitio compartido.
- **No mezclar objetivos.** Si el prompt hace "resumir", no le metas "además traduce y clasifica" — eso aumenta las respuestas raras.

**Señal de alerta:** si la gente dice "ya no responde igual" o "ahora contesta cosas raras", revisa:
1. ¿Cambiaron los documentos?
2. ¿Cambió el prompt?
3. ¿Cambió el modelo en la plataforma?

---

## 7. Errores comunes

- **"Ya funciona, lo olvido."** → Las APIs y los modelos cambian. Si no revisas, un día deja de funcionar.
- **"No hace falta documentar porque es visual."** → Sí hace falta. La otra persona no sabe qué prompt pusiste.
- **"Los usuarios siempre van a usarlo bien."** → Harán preguntas raras. Pon instrucciones defensivas en el asistente.
- **"Si falla, me avisará la herramienta."** → No siempre. Pon un paso de notificación o revisa el historial de ejecuciones.
- **"Si otro lo copia en su cuenta ya vale."** → Eso fragmenta. Mejor una versión única que todos usen.

---

## 8. Cierre y aprendizajes clave

- **Evaluar y mantener** es lo que convierte un experimento en una práctica estable del equipo.
- Con **4 métricas sencillas** puedes demostrar valor sin montar un dashboard.
- **El vocabulario técnico mínimo** (API, endpoint, repo, contenedor) te permite seguir participando cuando el proyecto pasa a la fase seria.
- **Documentar, centralizar credenciales y definir un responsable** es la diferencia entre "mi flujo" y "flujo del equipo".
- **Saber cuándo escalar** al equipo técnico te hace más creíble y profesional.

> [!abstract] Resumen del módulo
> Sabes probar, medir y mantener un caso de uso de IA. Sabes cómo pasarlo del ámbito personal al del equipo. Y sabes hablar con el equipo técnico usando el vocabulario adecuado para que la transición funcione.

---

> [!info] Para profundizar
> - [Why AI Projects Fail — Harvard Business Review](https://hbr.org/2023/11/keep-your-ai-projects-on-track) — Análisis de por qué fracasan los proyectos de IA y qué los distingue de los exitosos.
> - [OpenAI Evals](https://github.com/openai/evals) — Framework para evaluar modelos de lenguaje de forma sistemática.
> - [Promptfoo](https://www.promptfoo.dev/) — Herramienta para probar y comparar prompts, detectar regresiones y validar respuestas.
> - [What is an API? — IBM](https://www.ibm.com/topics/api) — Explicación accesible de qué es una API y por qué es fundamental.
> - [Git Explained in 100 Seconds — Fireship](https://www.youtube.com/watch?v=hwP7WQkmECE) — Vídeo ultra-conciso sobre control de versiones.

---

En el [Módulo 7](modulo-7-caso-uso-final.md) diseñarás tu propio caso de uso con una plantilla completa lista para implementar o entregar a tu equipo técnico.
