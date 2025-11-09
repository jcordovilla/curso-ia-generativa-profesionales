# Resumen del Itinerario 2 – Low Code (intermedio)

Este itinerario fue diseñado para dar el paso natural después del Itinerario 1, orientado a aquellos que quieren un poco más allá y convertirse en **constructores de prototipos de IA generativa**.

Si allí aprendiste a **usar la IA sin programar**, aquí aprendiste a **controlar el motor**: ejecutar código, entender una API, conectar tus propios documentos y compartir tu prototipo de forma profesional.  
El objetivo ya no era “hacer que funcione”, sino **entender cómo funciona** y poder **modificarlo sin depender de otros**.

---

## 1. Qué te llevas de este itinerario

### Competencias prácticas
- **Poner en marcha un entorno técnico** con un repo ya configurado (VS Code, Codespaces o local).  
- **Llamar directamente a una API de modelo** (OpenAI, Anthropic, etc.) controlando temperatura, modelo y formato.  
- **Construir un RAG básico con LangChain**, capaz de responder sobre tus documentos.  
- **Crear un agente funcional**, con una o varias herramientas (por ejemplo, tu RAG o una búsqueda web).  
- **Publicar tu prototipo** en GitHub, como API con FastAPI o integrado en un flujo no-code.

### Competencias de criterio
- Saber cuándo basta con un flujo no-code y cuándo conviene pasar a un entorno técnico.  
- Entender qué significa cada parámetro de una API y cómo influye en los resultados.  
- Evaluar la fiabilidad de las respuestas: distinguir entre errores del modelo y fallos del flujo.  
- Comunicarte mejor con desarrolladores y equipos de IT, usando el mismo vocabulario técnico.

**Mini-resumen:** ahora eres capaz de construir, probar y compartir un prototipo de IA funcional, sin necesidad de escribir grandes volúmenes de código.

---

## 2. Recordatorio de los módulos

**[Módulo 1 – Entorno "enchufar y usar"](modulo-1-entorno-enchufar-y-usar.md)**
Aprendiste a ejecutar un repo existente, crear el `.env` con tu API key y verificar que todo funcione.

**[Módulo 2 – Llamar a APIs de modelos](modulo-2-llamar-a-apis-de-modelos.md)**
Viste cómo funciona una llamada directa a un modelo y cómo ajustar parámetros clave.

**[Módulo 3 – RAG práctico con LangChain](modulo-3-rag-practico.md)**
Construiste un pipeline que combina tus documentos con la IA para obtener respuestas contextualizadas.

**[Módulo 4 – Agentes y orquestación mínima](modulo-4-agentes-y-orquestacion-minima.md)**
Aprendiste a crear un agente capaz de decidir qué herramienta usar (tu RAG, una búsqueda, un resumen).

**[Módulo 5 – Publicar y compartir](modulo-5-publicar-y-compartir.md)**
Convertiste tu trabajo en algo que otros pueden probar, revisar o conectar.

En conjunto, los módulos forman el camino **de usuario a constructor**.

---

## 3. Qué has resuelto (y qué dejamos fuera a propósito)

### Lo que sí resolviste
- Entender cómo se estructura una llamada a un modelo.  
- Crear y usar embeddings para tus propios textos.  
- Añadir autonomía básica mediante agentes.  
- Publicar tu trabajo de forma segura y reproducible.  
- Conectar piezas técnicas y no-técnicas en un mismo flujo.

### Lo que dejamos fuera
- Programación avanzada o reentrenamiento de modelos.  
- Integraciones complejas con bases de datos o contenedores Docker.  
- Escalabilidad y despliegues productivos.  

No son omisiones, sino **límites intencionados**: este itinerario busca consolidar tu autonomía sin convertirte en desarrollador.

---

## 4. Cómo seguir a partir de aquí

Tienes tres caminos posibles:

1. **Consolidar tu prototipo actual**

   - Añadir más documentos al RAG.
   - Incorporar nuevas herramientas al agente.
   - Conectar tu API con flujos reales en n8n o Slack.

2. **Pasar a un nivel técnico más profundo**

   - Aprender sobre **RAG avanzado**, bases vectoriales externas y LangGraph.
   - Automatizar el despliegue con Docker o Render.
   - Usar bases de conocimiento en la nube (Chroma, Pinecone, Qdrant).

3. **Convertirte en referente interno**

   - Guiar a otros profesionales para que repliquen tu proceso.
   - Documentar y estandarizar los pasos para futuros proyectos.
   - Coordinar con IT para transformar prototipos en productos.

**Mini-resumen:** el itinerario 2 no termina en un “proyecto final”, sino en una **nueva capacidad profesional**: convertir ideas en prototipos reproducibles.

---

## 5. Recomendaciones finales

- **Versiona tu trabajo:** usa GitHub para registrar cambios y compartir avances.  
- **Guarda tus notas de configuración:** entorno, comandos, errores y soluciones.  
- **Mantén las claves fuera del código:** la seguridad es parte del aprendizaje.  
- **Explica lo que haces en lenguaje claro:** serás el puente entre negocio y tecnología.  
- **Aplica lo aprendido en tu contexto real:** cada flujo debe tener una utilidad inmediata.

---

## 6. Cierre

Si hoy puedes:
- ejecutar un script que llama a un modelo,  
- conectar tus propios documentos,  
- dar al modelo capacidad de acción,  
- y compartir el resultado con tu equipo,

entonces **has completado con éxito el Itinerario 2 – Constructor de Prototipos**.

A partir de aquí puedes seguir perfeccionando tus soluciones, o incluso formar a otros.  
Ya no solo “usas” IA generativa: **la entiendes, la controlas y la conviertes en herramienta de trabajo.**
