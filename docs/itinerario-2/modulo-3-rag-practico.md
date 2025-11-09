# Itinerario 2 · Módulo 3  
## RAG práctico con LangChain: hacer que el modelo lea tus documentos

Ya sabes llamar a un modelo por API y controlar los parámetros.  
El siguiente paso natural es darle **contexto propio**: permitir que la IA responda **en base a tus documentos** y no solo a lo que ya sabe.  
Eso es exactamente lo que hace un RAG —*Retrieval-Augmented Generation*— y en este módulo lo vas a construir de forma práctica, usando **LangChain** y un conjunto reducido de archivos de ejemplo.

---

### 1. Qué vamos a ver en este módulo

1. Qué es un RAG (en lenguaje claro).  
2. Cómo cargar y dividir documentos.  
3. Cómo crear embeddings y almacenarlos en una base vectorial.  
4. Cómo hacer una pregunta y recuperar el texto más relevante.  
5. Cómo generar la respuesta final con el modelo.  
6. Qué partes puedes automatizar después con no-code.

**Idea clave:** un RAG no es magia; es un proceso de tres pasos: **guardar contexto → buscar → responder**.

---

### 2. Por qué es relevante

En la práctica, la IA “normal” no tiene acceso a tus documentos internos.  
Si quieres que responda sobre un informe, una guía de procesos o un contrato, necesitas **un mecanismo para recordarle el contenido relevante**.  
El RAG te permite hacerlo sin tener que reentrenar el modelo ni subirle todo el documento.

**Mini-resumen:** el RAG es la forma profesional de “hacer que el modelo lea lo que tú quieres que lea”.

---

### 3. Qué es un RAG (sin tecnicismos)

**Retrieval-Augmented Generation** significa literalmente:  
> “Generación aumentada con recuperación de información.”

El flujo completo se puede entender así:

1. **Ingesta:** lees tus documentos y los conviertes en fragmentos (chunks).

2. **Indexación:** generas una representación numérica (embedding) de cada fragmento y lo guardas en una base vectorial.

3. **Consulta:** cuando haces una pregunta, se genera un embedding de la pregunta y se buscan los fragmentos más parecidos.

4. **Generación:** esos fragmentos se envían junto a tu pregunta al modelo para que responda basándose en ellos.

**Comparación útil:** es como tener un asistente que primero busca en tu archivador y luego te responde con la información que encontró.

---

### 4. Preparar el entorno

Si completaste el módulo 1, ya tienes el entorno de Python configurado.  
Instala ahora las librerías necesarias:

`pip install langchain langchain-community openai faiss-cpu tiktoken`
*(Si el repo de ejemplo ya las trae, solo revisa que se instalen correctamente.)*

Crea un archivo `rag_simple.py` dentro de tu proyecto.

---

### 5. Script base de RAG

Aquí tienes un ejemplo mínimo y comentado:
```python
    import os
    from langchain.text_splitter import RecursiveCharacterTextSplitter
    from langchain_community.embeddings import OpenAIEmbeddings
    from langchain_community.vectorstores import FAISS
    from langchain_community.document_loaders import TextLoader
    from langchain.chat_models import ChatOpenAI
    from langchain.chains import RetrievalQA

    # 1. Cargar documentos
    loader = TextLoader("documento.txt", encoding="utf-8")
    docs = loader.load()

    # 2. Dividir en fragmentos
    splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=50)
    texts = splitter.split_documents(docs)

    # 3. Crear embeddings y base vectorial
    embeddings = OpenAIEmbeddings(openai_api_key=os.getenv("OPENAI_API_KEY"))
    vectorstore = FAISS.from_documents(texts, embeddings)

    # 4. Configurar el modelo
    llm = ChatOpenAI(model="gpt-4o-mini", temperature=0.2)

    # 5. Crear el pipeline RAG
    qa = RetrievalQA.from_chain_type(
        llm=llm,
        chain_type="stuff",
        retriever=vectorstore.as_retriever()
    )

    # 6. Hacer una pregunta
    query = "¿Cuál es el procedimiento descrito en el documento?"
    answer = qa.run(query)

    print("Pregunta:", query)
    print("Respuesta:", answer)
```

Guarda un archivo de texto sencillo como `documento.txt` con contenido real o de ejemplo (por ejemplo, un resumen de tu política interna, una ficha de proyecto o un protocolo técnico).

---

### 6. Qué está pasando aquí

1. **Loader:** lee tu archivo.  
2. **Splitter:** corta el texto en trozos manejables.  
3. **Embeddings:** traduce cada trozo a números que representan su significado.  
4. **Vector store:** guarda todos esos vectores.  
5. **Retriever:** busca los fragmentos más cercanos a la pregunta.  
6. **LLM:** responde usando esos fragmentos como contexto.

**Mini-resumen:** el RAG no “sabe” más cosas, solo **busca mejor** antes de responder.

---

### 7. Prueba guiada

1. Ejecuta el script con un documento pequeño.  
2. Cambia la pregunta a algo que **sí esté en el texto** y luego a algo que **no esté**.  
3. Observa la diferencia: el modelo dirá “no se menciona” o se inventará algo si no está bien configurado.  
4. Ajusta el `chunk_size` (por ejemplo, 300 o 800) y repite.

**Reflexión:** ¿cuánto contexto es suficiente para que las respuestas sean útiles sin que se vuelva lento?

---

### 8. Errores comunes y cómo resolverlos

- **“Module not found: faiss”**  
  → Instala `faiss-cpu` (algunas veces no se instala automáticamente).  

- **“OpenAI API key not found”**  
  → Revisa tu `.env` y asegúrate de tener `OPENAI_API_KEY`.  

- **“UnicodeDecodeError”**  
  → Añade `encoding="utf-8"` al cargar el texto.  

- **Respuestas inventadas**  
  → Reduce la `temperature` o cambia el *prompt* interno para que diga “si no lo sabes, indica que no está en los documentos”.

---

### 9. Aplicación práctica en tu entorno

Piensa qué documentos serían más útiles:
- Procedimientos internos, manuales, informes de proyectos.  
- FAQs de clientes o plantillas de ofertas.  
- Extractos de contratos o especificaciones técnicas.  

Y formula preguntas reales que una persona de tu equipo haría.  
Ejemplo:  
> “¿Qué dice el protocolo sobre la validación de proveedores?”  
> “¿Qué indicadores de desempeño se mencionan en el informe anual?”  

El objetivo es **probar con material auténtico**, no con ejemplos artificiales.

---

### 10. Qué puedes automatizar después

Una vez tengas el RAG funcionando, puedes:

- **Conectarlo con n8n o Make** para que la pregunta venga desde un formulario o correo.  
- **Hacerlo accesible desde un GPT personalizado** (el GPT usa la API de tu servicio RAG).  
- **Actualizar automáticamente la base de datos vectorial** cuando subas un nuevo documento.

Estos son pasos naturales para consolidar tu caso de uso.

---

### 11. Cierre y aprendizajes clave

- **Ya sabes construir un RAG básico** con LangChain.  
- **Comprendes cada paso del pipeline**: cargar, dividir, indexar, buscar y responder.  
- **Sabes probarlo con tus documentos reales** y ajustar parámetros.  
- **Tienes la base para un asistente verdaderamente contextual.**

**Mini-resumen final:**  
> “Puedo montar un RAG simple que responde sobre mis documentos, entender cómo busca la información y adaptar los parámetros para que funcione en mi entorno.”

En el próximo módulo, **[Módulo 4 – Agentes y orquestación mínima](modulo-4-agentes-y-orquestacion-minima.md)**, aprenderás cómo añadir una capa de "razonamiento" para que el modelo pueda decidir qué herramienta usar o cuándo buscar información adicional.
