# Itinerario 2 · Módulo 2
## Llamar a APIs de modelos: entender qué pasa “detrás del botón”

En el módulo anterior ya conseguiste **ejecutar un script que llama a la IA**.  
Ahora vamos a mirar *qué está pasando dentro de ese script* y cómo puedes **controlar la llamada al modelo tú mismo**, sin depender de una plataforma no-code.  
Aprenderás a identificar qué se envía, qué se recibe y cómo pequeños cambios (modelo, temperatura, formato) afectan a la respuesta.

---

### 1. Qué vamos a ver en este módulo

1. Qué es una **API de modelo** y cómo se estructura una llamada.  
2. Cómo usar el **cliente oficial** (OpenAI, Anthropic u otro) para hacer la llamada desde código.  
3. Qué parámetros puedes cambiar (modelo, temperatura, longitud, rol del sistema).  
4. Cómo manejar la respuesta: texto, JSON o lista de mensajes.  
5. Cómo guardar y reutilizar resultados.  
6. Cómo detectar y corregir errores típicos.

**Idea clave:** una API no es más que un “puente” que conecta tu idea con el modelo. Si entiendes cómo cruzarlo, puedes adaptar cualquier flujo.

---

### 2. Por qué es relevante

Porque aunque uses herramientas visuales o GPTs personalizados, **todo termina siendo una llamada de API**.  
Entender esa llamada te permite:
- Pedir a un técnico que la adapte sin miedo.  
- Integrarla en tus propios flujos no-code.  
- Explicar mejor qué parámetros cambian el comportamiento del modelo.  

En la práctica esto significa: **dejas de ser un usuario pasivo y te conviertes en diseñador de prompts estructurados**.

**Mini-resumen:** ahora verás cómo funcionan “las tuberías” de la IA.

---

### 3. Qué es una API de modelo (en palabras simples)

Una **API** (Application Programming Interface) es una **forma estandarizada de hablar con un servicio**.  
Cuando un modelo se ofrece por API, lo que haces es **enviar un mensaje estructurado** con tu petición y **recibir una respuesta** en formato JSON (texto legible por máquina).

Ejemplo conceptual:

- Tú envías:  
  “Quiero que resumas este texto: [texto largo]”
- El modelo responde:  
  “Resumen: …”

Detrás hay una petición que contiene:
- El **modelo** que quieres usar.  
- El **prompt** o instrucción.  
- Parámetros como la temperatura (nivel de creatividad).  
- Tu **API key** (autenticación).

---

### 4. Cómo hacer tu primera llamada manual (siguiendo el ejemplo del repo)

Si el módulo anterior funcionó, ya tienes tu entorno y tu API key en `.env`.  
Ahora abre el archivo principal del proyecto o crea uno nuevo llamado `call_model.py` y escribe algo parecido a esto:
```python
    from openai import OpenAI
    import os

    client = OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": "Eres un asistente que responde en español profesional y conciso."},
            {"role": "user", "content": "Resume en tres puntos el impacto de la IA en la productividad."}
        ],
        temperature=0.3
    )

    print(response.choices[0].message.content)
```

Ejecuta: `python call_model.py`

Deberías ver el texto resumido en tu terminal.  
Esto es exactamente lo que hacía el flujo visual de n8n o el GPT Builder, pero ahora lo controlas tú.

---

### 5. Parámetros que puedes modificar

Estos son los controles que más influyen en el comportamiento del modelo:

| Parámetro | Qué hace | Cuándo usarlo |
|------------|-----------|---------------|
| **model** | define el modelo (gpt-4o-mini, gpt-4-turbo, etc.) | cuando quieras más rapidez o más detalle |
| **temperature** | controla la variabilidad de la respuesta (0 = predecible, 1 = creativo) | mantenlo entre 0 y 0.7 para flujos de trabajo |
| **max_tokens** | límite de palabras en la respuesta | evita respuestas excesivas o recortes |
| **system message** | define el rol del asistente | “Eres un redactor técnico…” o “Eres un gestor de proyectos…” |
| **user message** | el contenido principal del prompt | el texto o pregunta que quieres procesar |

**Mini-resumen:** el *system* marca el tono, el *user* marca la tarea, la *temperature* marca el estilo.

---

### 6. Cómo leer y manejar la respuesta

La respuesta llega como un objeto con varios campos.  
La parte útil suele estar en:
`response.choices[0].message.content`

Puedes:
- imprimirla,  
- guardarla en un archivo,  
- o devolverla a otro sistema (Slack, Google Sheets, etc.).

Si el proyecto del repo trae un ejemplo diferente (por ejemplo, `response.text`), busca en el README o imprime todo el objeto para ver su estructura.

Para guardar la respuesta en un archivo:
```python
    with open("resultado.txt", "w", encoding="utf-8") as f:
        f.write(response.choices[0].message.content)
```

Esto te servirá más adelante en el módulo 3 cuando empieces a combinar con documentos.

---

### 7. Errores y mensajes típicos

- **`Invalid API key`**  
  → Revisa tu `.env` y asegúrate de haberla copiado bien, sin espacios.  

- **`Rate limit exceeded`**  
  → Has hecho demasiadas llamadas seguidas; espera un minuto o cambia de modelo.  

- **`No module named openai`**  
  → No instalaste la librería. Instálala con `pip install openai`.  

- **El modelo responde en inglés**  
  → Añade en el *system message*: “Responde siempre en español”.  

**Consejo:** cuando algo falla, **imprime el error completo**. Te dirá qué parte no entiende la API.

---

### 8. Mini práctica guiada

1. Abre tu archivo `call_model.py`.  
2. Cambia el *system message* a “Eres un consultor especializado en IA para negocios.”  
3. Cambia la *temperature* a `0.7`.  
4. Pide al modelo: “Dame tres usos prácticos de la IA en consultoría de infraestructuras.”  
5. Ejecuta el script y observa la diferencia de tono.  

**Reflexión:** ¿la respuesta se volvió más creativa, más arriesgada o más útil?  
Guarda ambas versiones para comparar.

---

### 9. Cómo documentar esta parte

En tu nota o archivo de seguimiento, apunta:

- Fecha y nombre del archivo (`call_model.py`).  
- Modelo usado.  
- Parámetros cambiados.  
- Ejemplo de entrada y salida.  
- Observaciones (tiempo, calidad, errores).  

Esto te servirá para justificar luego qué modelo o configuración usas en tu flujo final.

---

### 10. Cierre y aprendizajes clave

- **Ya sabes hacer una llamada directa a un modelo** usando su API.  
- **Sabes modificar parámetros clave** para ajustar el comportamiento.  
- **Sabes interpretar la respuesta** y usar solo la parte útil.  
- **Entiendes que esto es lo que hacen todas las herramientas no-code por debajo.**

**Mini-resumen final:**
> "Puedo escribir o entender un script que llama a un modelo de IA por API, ajustar temperatura y formato, y aprovechar la respuesta en mis propios flujos."

---

> [!info] Para profundizar
> - [ChatGPT Prompt Engineering for Developers](https://www.deeplearning.ai/short-courses/chatgpt-prompt-engineering-for-developers/) - Curso gratuito de DeepLearning.AI con Isa Fulford (OpenAI) que enseña a usar la API de OpenAI con ejemplos de código en Python.
> - [Brex Prompt Engineering Guide](https://github.com/brexhq/prompt-engineering) - Guía técnica de Brex cubriendo estrategias de prompting, seguridad, límites de tokens y patrones para producción.
> - [OpenAI API Documentation](https://platform.openai.com/docs/) - Documentación oficial con referencia completa de endpoints, parámetros (temperature, max_tokens, etc.) y ejemplos de uso.
> - [Anthropic API Documentation](https://docs.anthropic.com/) - Documentación de la API de Claude con guías de integración, mejores prácticas y diferencias respecto a otros proveedores.
> - [Artificial Analysis](https://artificialanalysis.ai/models) - Comparador independiente de modelos de IA que muestra precio, velocidad, calidad y características de cada proveedor.

---

En el próximo módulo, **[Módulo 3 – RAG práctico con LangChain](modulo-3-rag-practico.md)**, aprenderás a combinar esta llamada con tus propios documentos: cómo cargarlos, indexarlos y hacerles preguntas.
