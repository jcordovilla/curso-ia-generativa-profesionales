# Itinerario 2 · Módulo 4  
## Agentes y orquestación mínima: cuando la IA “decide” qué herramienta usar

Hasta ahora tus flujos eran lineales: tú le dabas instrucciones y la IA respondía.  
En este módulo verás cómo **darle un poco más de autonomía** para que el modelo elija *qué hacer* o *qué herramienta usar* según la pregunta.  
No vamos a entrar en orquestaciones complejas ni grafos de decisiones: aquí aprenderás el concepto y construirás **un agente funcional con una sola herramienta**.

---

### 1. Qué vamos a ver en este módulo

1. Qué es un **agente** y cómo se diferencia de un RAG.  
2. Cómo funciona la **orquestación mínima** con LangChain.  
3. Cómo definir y conectar una **tool (herramienta)**.  
4. Cómo crear un **prompt estructurado** que permita al modelo decidir.  
5. Cómo ejecutar el flujo completo con una búsqueda real o una función simple.  
6. Cómo documentar y depurar el comportamiento.

**Idea clave:** un *agente* no es un modelo más inteligente, sino **un modelo con permiso para actuar**.

---

### 2. Por qué es relevante

En proyectos reales, los modelos no trabajan solos.  
Necesitan acceder a otras fuentes, ejecutar cálculos o buscar información antes de responder.  
Entender cómo funciona un agente te permite:
- diseñar **flujos más flexibles**,  
- delegar tareas repetitivas al modelo,  
- y explicar al equipo técnico qué lógica quieres automatizar.

**Mini-resumen:** el agente es el paso entre el chatbot estático y el asistente que hace cosas útiles.

---

### 3. Qué es un agente (en palabras simples)

Un **agente** es un modelo que puede **elegir entre una o más herramientas** para resolver una instrucción.

Por ejemplo:
- Si le preguntas “¿qué hora es?”, usa una tool llamada “get_time()”.  
- Si le pides “resúmeme este texto”, llama directamente al modelo.  

En LangChain esto se hace con un **loop de razonamiento**:
1. El modelo lee tu instrucción.  
2. Decide qué herramienta usar.  
3. Ejecuta esa herramienta.  
4. Devuelve el resultado al modelo.  
5. El modelo genera la respuesta final.

**Comparación útil:** es como tener un asistente que, antes de contestarte, decide si necesita abrir una app, buscar un dato o calcular algo.

---

### 4. Preparar el entorno

Si vienes del módulo 3, ya tienes LangChain instalado.  
Verifica que tengas también:
`pip install langchain langchain-community openai`

Crea un archivo nuevo, por ejemplo `agente_simple.py`.

---

### 5. Ejemplo de agente mínimo

Este ejemplo define una herramienta sencilla que busca en Google (simulada) y otra que resume texto.  
El modelo elegirá cuál usar según la instrucción.
```python
    import os
    from langchain.chat_models import ChatOpenAI
    from langchain.agents import initialize_agent, Tool
    from langchain.tools import tool

    # Definir herramientas (tools)
    @tool("buscar_en_web", return_direct=True)
    def buscar_en_web(query: str) -> str:
        """Simula una búsqueda web y devuelve texto de ejemplo."""
        return f"Resultados simulados de búsqueda sobre: {query}"

    @tool("resumir_texto", return_direct=True)
    def resumir_texto(texto: str) -> str:
        """Simula un resumen rápido."""
        return f"Resumen del texto: {texto[:80]}..."

    # Instanciar modelo
    llm = ChatOpenAI(model="gpt-4o-mini", temperature=0.2)

    # Crear agente con ambas herramientas
    tools = [buscar_en_web, resumir_texto]
    agente = initialize_agent(
        tools,
        llm,
        agent_type="zero-shot-react-description",
        verbose=True
    )

    # Ejecutar ejemplo
    pregunta = "Busca información sobre IA en infraestructuras."
    respuesta = agente.run(pregunta)
    print("Respuesta:", respuesta)
```

Ejecuta el script y observa en la consola cómo el modelo decide qué herramienta usar (LangChain mostrará pasos intermedios).

---

### 6. Qué está pasando aquí

1. **Definiste herramientas**: funciones con una descripción clara.

2. **El agente las registra** y las presenta al modelo como opciones.

3. **El modelo analiza tu pregunta**, elige una, la ejecuta y genera la respuesta.

4. Si no necesita ninguna, responde directamente.

**Mini-resumen:** los *tools* son acciones, y el agente es quien decide cuál usar.

---

### 7. Añadir tu propio RAG como herramienta

Puedes convertir el RAG del módulo anterior en una herramienta para el agente.  
Basta con envolver la llamada `qa.run()` en una función y registrarla:
```python
    from langchain.tools import tool
    @tool("consultar_documentos", return_direct=True)
    def consultar_documentos(pregunta: str) -> str:
        """Consulta la base RAG creada en el módulo anterior."""
        return qa.run(pregunta)
```

Después añádela a tu lista de `tools`:

`tools = [consultar_documentos, buscar_en_web, resumir_texto]`

Con esto, el agente podrá decidir:  
> “¿Uso el RAG para buscar en mis documentos o hago una búsqueda externa?”

Esto es **orquestación mínima real**: el modelo elige su propia fuente de información.

---

### 8. Buenas prácticas y depuración

- **Usa descripciones claras en cada herramienta.**  
  El modelo decide en función del texto que lea; si la descripción es ambigua, elegirá mal.

- **Evita tener demasiadas tools.**  
  Cuantas más opciones, más confusión. Empieza con 2 o 3.

- **Controla la verbosidad (`verbose=True`).**  
  Así verás el razonamiento del agente paso a paso.

- **Incluye límites.**  
  Puedes decirle: “Usa como máximo una herramienta por pregunta”.

- **Documenta los resultados.**  
  Guarda un log con las preguntas y las tools usadas. Esto te permitirá ver patrones.

---

### 9. Errores comunes y cómo resolverlos

- **“Tool not found”** → Revisar que el nombre usado en el `@tool()` coincide con el registrado.  
- **“API key missing”** → El `.env` sigue siendo obligatorio.  
- **Responde cosas incoherentes** → Revisa las descripciones de las tools; el modelo no entendió cuándo usar cada una.  
- **Loop infinito de decisiones** → Usa `agent_type="zero-shot-react-description"` (es el más simple) y evita herramientas que devuelvan texto confuso.

---

### 10. Aplicación en tu entorno profesional

Piensa en casos donde un agente pueda tomar decisiones útiles:

- Un **asistente de proyecto** que decide si buscar un dato en una hoja o en un documento.  
- Un **chatbot de soporte** que primero consulta el RAG interno y, si no encuentra, busca externamente.  
- Un **gestor de tareas** que genera un resumen o delega al CRM según el tipo de entrada.

Empieza con uno: *“consulta documentos internos o, si no hay, haz resumen del texto.”*

**Mini-resumen:** diseña un agente para un proceso real, no para “jugar”.

---

### 11. Cierre y aprendizajes clave

- **Ya sabes crear un agente simple** con herramientas y lógica básica.  
- **Comprendes la diferencia entre modelo, RAG y agente.**  
- **Sabes conectar tu propio RAG como una herramienta.**  
- **Puedes ver y entender el razonamiento interno del modelo.**

**Mini-resumen final:**  
> “Puedo construir un agente que elige entre varias herramientas (como mi RAG o una búsqueda), y entiendo cómo se orquesta su razonamiento sin programar flujos complejos.”

En el próximo módulo, **[Módulo 5 – Publicar y compartir](modulo-5-publicar-y-compartir.md)**, aprenderás cómo exponer tu prototipo: subirlo a GitHub, ejecutarlo como servicio o conectarlo con una automatización no-code.
