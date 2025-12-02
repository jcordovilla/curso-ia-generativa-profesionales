# Itinerario 1 · Módulo 4  
## Puente hacia lo técnico (sin programar y sin miedo)

Hasta aquí ya sabes **usar una plataforma no-code**, **automatizar un flujo con IA** y **crear un GPT con tus documentos**. Eso te coloca en un punto muy valioso: ya tienes algo funcionando.  
Ahora viene una pregunta que muchos profesionales se hacen: **“¿cómo hablo de esto con el equipo técnico sin quedarme corto ni parecer que no sé?”**  
Este módulo es justo para eso: **traducir** lo que haces en no-code al lenguaje que usan los desarrolladores, _sin pedirte que programes_.

---

### 1. ¿Qué vamos a ver?

1. Qué es una **API** y por qué todo el mundo habla de ella.
2. Qué es **Git/GitHub** y por qué los técnicos lo usan para todo.
3. Qué es **Docker** explicado como “entorno empacado”.
4. Cómo mirar un repositorio de ejemplo y **saber explicar qué hace**.
5. Una hoja de “qué pedirle al desarrollador” para que no haya malentendidos.

**Idea clave:** no vas a aprender a programar, vas a aprender a **entender las piezas** para poder pedir y evaluar.

---

### 2. ¿Por qué es relevante para tu trabajo con IA?

Porque la mayoría de proyectos de IA en una organización **no se quedan en el prototipo no-code**. En algún momento hay que:
- integrarlo de forma más estable,
- ponerlo en un servidor de la empresa,
- conectarlo a una base de datos interna,
- o controlar mejor los logs y los costes.

En la práctica esto significa: **si entiendes las palabras base (API, Git, Docker), puedes seguir participando de la conversación** y no te quedas fuera cuando el proyecto pasa a la fase “seria”.

**Mini-resumen:** este módulo te da vocabulario técnico mínimo para seguir siendo dueño del caso de uso.

---

### 3. APIs: la forma educada de pedirle algo a otro sistema

**Definición sencilla:**  
Una **API** es una forma estándar de decirle a otro sistema: “hazme esto y devuélveme aquello”.  
- Cuando tu flujo llama a OpenAI, está usando una API.
- Cuando pides datos a un CRM, probablemente es una API.
- Cuando el desarrollador dice “te expongo un endpoint”, te está dando una puerta de entrada.

**En la práctica esto significa:**  
- Hay una **URL** (dirección) a la que se le manda una petición.
- Le mandas datos (por ejemplo, el texto a resumir).
- Te devuelve datos (el resumen).

**Comparación útil:** es como rellenar un formulario online y recibir un PDF. Tú le mandas datos estructurados, él te devuelve algo estructurado.

**Errores comunes que queremos evitar:**
- Pensar que la API es una app → no, es solo la forma de acceder.
- Pensar que “si hay API entonces ya está integrado” → no, alguien tiene que usarla.
- Pensar que todas las APIs son públicas → muchas son internas o requieren autenticación.

**Frase que puedes usar con técnicos:**  
> “Nuestro flujo ya funciona en no-code; lo ideal sería tener un endpoint (API) que haga esta misma operación para que podamos llamarla desde la herramienta de automatización.”

Con eso ya hablas su idioma.

---

### 4. Git y GitHub: el historial y el lugar donde está el código

**Git** es un sistema para llevar el **historial de cambios** del código.  
**GitHub** es el sitio donde muchos equipos guardan ese código para trabajar en conjunto.

¿Por qué te interesa a ti, que no programas?
- Porque muchas demos de IA, ejemplos de RAG o conectores están **en GitHub**.
- Porque a veces el técnico te dirá: “el código está aquí” y te pasará un enlace.
- Porque puedes entrar, leer el `README.md` y **entender qué hace el proyecto**.

**En la práctica esto significa:**  
- No hace falta que edites el código.
- Pero sí puedes leer la documentación del repo.
- Y puedes decir: “este es el script que llama a la API” o “este es el modelo que usan”.

**Qué mirar cuando te pasen un repo de GitHub:**
1. `README.md` → explica qué hace, cómo se instala, cómo se ejecuta.
2. Carpeta `docs/` o ejemplos → cómo se usa.
3. Ficheros `.env.example` → qué variables o claves hacen falta.

**Frase que puedes usar:**  
> “He visto el repo en GitHub; entiendo que necesita un `.env` con la API key y que se ejecuta con el comando que indicáis. ¿Podéis exponer esto como servicio para que lo llamemos desde n8n?”

Esto es exactamente el “puente” que queremos.

---

### 5. Docker: que funcione igual en todas partes

Docker suena muy técnico, pero la idea es bastante humana.

**Explicación con analogía:**  
- Imagina que tienes una receta muy concreta que solo sale bien con tus ingredientes y tu cocina.
- Docker es como **empaquetar la cocina junto con la receta** para que a cualquiera le salga igual.

**Definición sencilla:**  
Docker es una forma de meter una aplicación y todo lo que necesita (librerías, versiones, dependencias) en un “contenedor” que se puede ejecutar igual en distintos sitios.

**En la práctica esto significa:**  
- Si un prototipo de IA está en Docker, el equipo lo puede poner en el servidor sin que tú tengas que instalar nada.
- Te da estabilidad: “funciona en mi máquina” deja de ser una excusa.

**Lo único que tú debes poder decir:**  
> “El equipo técnico puede dockerizar esto si lo va a usar más gente; yo ya he validado el flujo funcional en no-code.”

Con eso demuestras que sabes cuál es tu parte y cuál es la del técnico.

---

### 6. Ver un repo y “traducirlo” a negocio

Te pasará esto: alguien técnico te envía un enlace a GitHub con un ejemplo de agente, de RAG o de integración. Tu trabajo no es leer Python, tu trabajo es **traducirlo a proceso**.

Pasos para hacerlo:
1. Lee el `README.md` y responde: **¿qué problema resuelve?**
2. Identifica: **¿qué datos de entrada pide?** (documentos, texto, URL…)
3. Identifica: **¿qué devuelve?** (resumen, respuesta, clasificación…)
4. Piensa: **¿en qué punto de mi flujo lo pondría?** (antes de mandar al equipo, antes de guardar en CRM…)
5. Pregunta al técnico: **“¿podéis exponer esto como API?”**

**Mini-resumen:** no necesitas entender el 100% del código, necesitas entender el 100% del uso.

---

### 7. Hoja “qué pedirle al desarrollador”

Para evitar idas y vueltas, cada vez que quieras que el equipo técnico te ayude a “formalizar” tu flujo, envíales algo así:

1. **Objetivo de negocio:** “Queremos que los emails de propuestas se resuman y se guarden.”
2. **Flujo actual no-code:** “Ahora mismo lo hacemos en n8n con este prompt.”
3. **Dolor actual:** “A veces falla porque la API key está en mi cuenta.”
4. **Necesidad técnica:** “Queremos un endpoint estable que haga la misma llamada a la IA.”
5. **Entradas esperadas:** “Texto del email + asunto.”
6. **Salidas esperadas:** “Resumen en 5 viñetas + categoría.”
7. **Restricciones:** “Debe responder en español; no debe guardar los textos originales.”

Con esta información el desarrollador no tiene que adivinar.

---

### 8. Errores y malentendidos comunes

- **“Si está en GitHub, ya lo puedo usar.”** → No siempre. A veces hay que instalar dependencias o configurarlo.
- **“API” = “interfaz visual”** → No, es un servicio, no una pantalla.
- **“Docker es obligatorio.”** → No, es una forma de empaquetar. Si tu caso está bien en no-code, no lo necesitas.
- **“Como ya tengo el flujo en n8n, no necesito al técnico.”** → Para producción, para más usuarios o para datos sensibles, **sí** lo vas a necesitar.
- **“No entiendo esto así que no puedo liderar el proyecto.”** → Al revés: entendiendo lo conceptual, puedes liderar y dejar que el equipo técnico implemente.

---

### 9. Cierre y aprendizajes clave

- **Ya sabes nombrar las piezas técnicas sin programar:** API, GitHub, Docker.
- Puedes explicar un prototipo no-code para que un técnico lo convierta en servicio.
- Sabes qué mirar en un repositorio y qué preguntar.
- Entiendes que tu rol es **definir el proceso y validar el resultado**, no instalar servidores.
- Este módulo completa el puente: ahora puedes ir del “lo he montado yo en una tarde” al “esto lo puede usar el equipo”.

**Mini-resumen final:**
> "Soy capaz de hablar con el equipo técnico sobre mi flujo de IA usando el vocabulario adecuado (API, repo, endpoint, contenedor) y sé qué pedirles para llevarlo a producción sin tener que programar."

---

> [!info] Para profundizar
> - [Building Effective AI Agents](https://www.anthropic.com/engineering/building-effective-agents) - Guía del equipo de ingeniería de Anthropic sobre patrones de diseño de agentes: workflows, routing, orquestación y cuándo usar cada patrón.
> - [What is an API?](https://www.ibm.com/topics/api) - Explicación de IBM sobre qué es una API, cómo funciona y por qué es fundamental para conectar sistemas y servicios de IA.
> - [Git Explained in 100 Seconds](https://www.youtube.com/watch?v=hwP7WQkmECE) - Vídeo ultra-conciso de Fireship que explica Git y control de versiones de forma visual y accesible.
> - [Docker in 100 Seconds](https://www.youtube.com/watch?v=Gjnup-PuquQ) - Mismo formato de Fireship explicando contenedores Docker: qué son, para qué sirven y por qué los técnicos los usan.
> - [MCP Explained](https://medium.com/@elisowski/mcp-explained-the-new-standard-connecting-ai-to-everything-79c5a1c98288) - Artículo sobre Model Context Protocol, el nuevo estándar de Anthropic para conectar modelos de IA con herramientas y fuentes de datos externas.
> - [You Need to Learn MCP RIGHT NOW!!](https://www.youtube.com/watch?v=GuTcle5edjk) - Vídeo de NetworkChuck explicando de forma práctica y accesible qué es Model Context Protocol y por qué es importante para conectar IA con herramientas externas.
> - [Command Line Crash Course for Beginners](https://www.youtube.com/watch?v=uwAqEzhyjtw) - Tutorial de terminal para principiantes compatible con Windows, macOS y Linux, cubriendo los comandos básicos necesarios para usar Git y Docker.

---

En el [Módulo 5](modulo-5-evaluacion-documentacion-handover.md) veremos **cómo evaluar y mantener tu caso de uso**, para que no se quede en una demo puntual y puedas convertirlo en una aplicación viva.
