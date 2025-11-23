# Itinerario 1 · Módulo 3  
## Crear chatbots/GPTs seguros con tus documentos

En el módulo anterior ya fuiste capaz de **conectar datos reales con IA** y entregar un resultado útil a tu equipo. El siguiente paso lógico es: *“¿y si en vez de un flujo fijo tengo un asistente al que le pueda preguntar cosas de mis propios documentos?”*  
Eso es exactamente lo que veremos aquí: **cómo crear un GPT/chatbot alimentado con tu documentación, pero sin poner en riesgo información sensible** y usando el vocabulario correcto para explicarlo dentro de tu organización.

---

### 1. ¿Qué vamos a ver?

1. Qué es un GPT/chatbot “con tus documentos” y qué **no** es.
2. Cómo se sube o enlaza la información en los constructores tipo OpenAI.
3. Qué límites y riesgos hay (privacidad, filtrado, uso indebido).
4. Cómo pedirle al asistente que responda **en tu estilo y dentro de tu proceso**.
5. Checklist de seguridad mínima antes de publicar o compartir.
6. Cómo explicar a un técnico qué has hecho.

**Idea clave:** el objetivo no es “tener un bot simpático”, sino **tener un asistente que contesta sobre tu material sin inventar demasiado y sin exponer lo que no debe**.

---

### 2. ¿Por qué es relevante para tu trabajo?

Porque muchas empresas ya están usando GPTs personalizados para:
- responder preguntas sobre procedimientos internos,
- acelerar la atención a clientes,
- ayudar a nuevos empleados con documentación de onboarding,
- generar versiones de documentos estándar a partir de plantillas.

En la práctica esto significa: **si tú puedes montar un asistente funcional sin llamar a TI, reduces mucho el tiempo de adopción**. Pero eso solo es viable si lo haces con criterio de seguridad desde el principio.

**Mini-resumen:** este módulo te enseña a usar la potencia de los GPTs personalizados **sin cometer el error de subir “todo” a lo loco**.

---

### 3. Qué es (y qué no es) un GPT con tus documentos

**Es:**
- Un asistente que tiene **acceso a unos documentos que tú le indicas**.
- Un asistente al que le puedes dar **instrucciones de comportamiento** (“responde breve”, “usa tono formal”, “no inventes si no está en los documentos”).
- Un punto único de consulta para tu equipo.

**No es:**
- No es un reemplazo de tu gestor documental.
- No es garantía de “no alucinaciones”: **si el documento no está, puede inventar**.
- No es un bot público por defecto: depende de cómo lo compartas.

**Comparación útil:** se parece más a un **documento interactivo** que a un chatbot genérico.

---

### 4. Cómo se construye uno (visión paso a paso)

Tomemos como referencia los constructores tipo OpenAI porque son los más directos para no técnicos. El flujo mental es casi siempre este:

1. **Define el propósito**

    - "Eres un asistente para el departamento de operaciones."
    - "Respondes preguntas sobre el manual de contratación."
    - "Si la información no está en los documentos, lo dices."

2. **Sube o enlaza los documentos**

    - PDF, Word, FAQs, procedimientos.
    - Mejor pocos y relevantes que muchos y desordenados.
    - Pon nombres claros: `procedimiento_vacaciones_2025.pdf`, no `docfinal2.pdf`.

3. **Escribe las instrucciones del sistema** (a veces se llaman "instructions" o "behavior")

    - Aquí mandas tú. Ejemplo:
      > "Responde únicamente basándote en los documentos cargados. Si la respuesta no está, di 'No está en la documentación'. Responde en español profesional y en máximo 120 palabras."

4. **Define el estilo de respuesta**

    - Breve, con pasos, con referencias.

5. **Prueba con preguntas reales**

    - No preguntes "¿quién eres?". Pregunta lo que preguntaría tu equipo: "¿Qué plazo tiene el cliente para reclamar?", "¿Qué documento hay que enviar primero?".

6. **Decide cómo compartirlo**

    - Solo para ti.
    - Con el equipo.
    - Público (ojo aquí).

**Mini-resumen:** propósito claro + documentos adecuados + instrucciones firmes + prueba real = GPT útil.

---

### 5. Alerta de privacidad: qué no subir

Aquí viene la parte que suele olvidarse. **No todo lo que tienes que consultar se puede subir a un GPT**, aunque la herramienta lo permita.

Evita subir:
- Listados con datos personales (DNI, teléfonos, direcciones).
- Información financiera sensible de clientes.
- Contratos con cláusulas de confidencialidad.
- Datos de terceros que tu organización no tiene derecho a procesar fuera de su entorno.

En la práctica esto significa: **si el documento no podrías enviarlo por un canal externo no controlado, tampoco lo subas al GPT**.

Además:
- Revisa siempre las opciones de **quién puede ver/usar el GPT**.
- Revisa si el proveedor dice que **usa los datos para entrenar**. Si es así y no tienes autorización, no lo subas.
- Mantén una carpeta “apta para IA” con documentos ya filtrados.

**Señal de alerta:** “he subido un procedimiento interno y ahora quiero compartir el GPT públicamente en la web” → esto suele ser mala idea. Mejor compartir solo dentro del dominio o exportar la respuesta a otro canal.

---

### 6. Cómo hacer que responda bien (instrucciones recomendadas)

Te dejo un bloque de instrucciones que suele funcionar bien para uso interno:

> **Rol:** Eres un asistente interno para personal no técnico.  
> **Fuente:** Debes responder únicamente con la información que hay en los documentos proporcionados.  
> **Si falta información:** Si la información no está o no es concluyente, debes decirlo claramente y sugerir el documento más cercano.  
> **Estilo:** Responde en español profesional, breve, estructurando en 3-5 frases o en una lista corta.  
> **Seguridad:** No inventes procedimientos ni enlaces que no estén en los documentos.  
> **Idioma:** Siempre responde en el idioma de la pregunta.

En la práctica esto significa: **le estás dando el criterio que luego tendría que aplicar una persona del equipo**.

---

### 7. Errores y malentendidos comunes

- **“Como es mi GPT ya es seguro.”**  
  → No necesariamente. Depende de cómo lo compartas y de lo que subas.

- **“Si lo subo al GPT ya está actualizado.”**  
  → No. Si cambias el procedimiento luego, tienes que volver a subirlo o enlazar la versión nueva.

- **“Le puedo preguntar de cualquier tema.”**  
  → Sí, pero si no está en los documentos, improvisará. Por eso le decimos que diga “no está”.

- **“Quiero que haga de todo: conteste, cree informes, traduzca, haga presentaciones.”**  
  → Mezclar demasiadas funciones en un mismo GPT lo vuelve impredecible. Mejor tener **GPTs más acotados**.

- **“Le paso 50 documentos para que sea completo.”**  
  → Más documentos no es igual a mejor respuesta. A veces la IA se va al documento menos relevante. Empieza con poco, prueba, luego amplía.

---

### 8. Checklist de seguridad mínima antes de compartir

Usa esto como lista rápida:

- [ ] He revisado los documentos y no contienen datos sensibles.
- [ ] El GPT tiene instrucciones claras de **no inventar**.
- [ ] El GPT indica qué hacer si la información no está.
- [ ] Sé exactamente con quién lo voy a compartir.
- [ ] He probado preguntas reales del equipo.
- [ ] He documentado (aunque sea en 5 líneas) qué hace este GPT.

Si marcas todo, ya tienes algo enseñable a tu organización.

---

### 9. Cómo explicarlo a un técnico (puente negocio–técnico)

Tu objetivo en este itinerario es también **explicar qué hace tu flujo/bot con vocabulario correcto**. Puedes decir algo así:

> “He creado un asistente en la plataforma de OpenAI que responde sobre estos 3 documentos internos. El asistente tiene instrucciones de no inventar y de responder en español. De momento lo quiero compartir solo con el equipo de operaciones. Si necesitáis integrarlo con otro sistema, os paso la descripción.”

Con esto el técnico ya sabe:
1. Qué herramienta es.
2. Qué fuentes tiene.
3. Qué restricciones de seguridad debe respetar.
4. Qué posible integración futura habrá.

---

### 10. Cierre y aprendizajes clave

- **Ya sabes crear un asistente con tus propios documentos sin programar.**
- La parte crítica no es técnica, es **de selección de documentos y de instrucciones**.
- La seguridad empieza por **no subir lo que no debes** y por compartir solo con quien lo necesita.
- Un GPT bien definido es una gran pieza para tu caso de uso final: puedes conectar este GPT con un flujo (como el del módulo 2) y tener un circuito completo.
- Con este módulo ya cumples uno de los objetivos del itinerario: **configurar un agente con documentación propia sin exponer datos sensibles**.

**Mini-resumen final:**
> "Puedo crear un GPT/chatbot que responda sobre documentos internos, sé qué documentos puedo subir y cuáles no, sé qué instrucciones ponerle para que no invente y sé cómo explicarlo dentro de la empresa."

---

> [!info] Para profundizar
> - [GPT Best Practices](https://platform.openai.com/docs/guides/gpt-best-practices) - Guía oficial de OpenAI con recomendaciones para obtener mejores resultados: cómo escribir instrucciones claras, proporcionar contexto y estructurar conversaciones.
> - [Navigating the Challenges of AI Governance](https://sloanreview.mit.edu/article/navigating-the-challenges-of-ai-governance/) - Artículo del MIT Sloan sobre los retos de gobernanza en IA: privacidad, sesgos, responsabilidad y marcos de decisión para organizaciones.
> - [Data Privacy and ChatGPT](https://help.openai.com/en/articles/7039943-data-usage-for-consumer-services-faq) - FAQ oficial de OpenAI explicando cómo se usan los datos, qué se almacena y cómo desactivar el entrenamiento con tus conversaciones.
> - [What-If Tool](https://pair-code.github.io/what-if-tool/) - Herramienta de Google PAIR para explorar modelos de ML, detectar sesgos y entender el comportamiento de sistemas de IA sin escribir código.
> - [Prototype AI-powered Apps with Claude Artifacts](https://support.anthropic.com/en/articles/11649438-prototype-ai-powered-apps-with-claude-artifacts) - Guía de Anthropic para crear prototipos de aplicaciones IA sin necesidad de claves API ni costes, ideal para experimentar antes de producción.

---

En el [Módulo 4](modulo-4-puente-hacia-lo-tecnico-conceptual.md) a continuación veremos el **"puente" hacia lo técnico**: cómo se habla de APIs, Git o Docker sin entrar a programar, para que puedas trabajar mejor con los equipos que sí desarrollan.
