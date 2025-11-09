# Itinerario 2 · Módulo 5  
## Publicar y compartir: convertir tu prototipo en algo que otros puedan usar

Has llegado al último módulo del itinerario.  
Ya sabes ejecutar código, llamar a APIs, conectar tus documentos con un modelo (RAG) y añadirle una capa de decisión (agente).  
Ahora el objetivo es **hacer que tu prototipo sea utilizable por otras personas**, de forma segura y sencilla.

Aquí no buscamos hacer despliegues complejos: se trata de **elegir el canal más realista** para compartir tu trabajo, sin convertirte en administrador de servidores.

---

### 1. Qué vamos a ver en este módulo

1. Qué significa realmente “publicar” en este contexto.  
2. Las tres formas más comunes de compartir un prototipo.  
3. Cómo subirlo a GitHub correctamente.  
4. Cómo exponer una pequeña API con FastAPI.  
5. Cómo integrarlo con n8n/Make u otras herramientas visuales.  
6. Qué aspectos de seguridad y mantenimiento debes cuidar.

**Idea clave:** publicar no es “subirlo a internet”, sino **hacer que alguien más pueda reproducirlo, probarlo o conectarlo.**

---

### 2. Por qué es relevante

En la vida real, un prototipo no termina cuando “funciona en mi ordenador”.  
Para que tenga impacto, debe poder **ser probado, replicado o conectado por otros**.  
Saber publicar correctamente te permite:
- Mostrar resultados a tus compañeros o cliente interno.  
- Pedir revisión o soporte a IT.  
- Integrarlo en flujos reales sin rehacerlo desde cero.  

**Mini-resumen:** la publicación es la transición entre *idea funcional* y *solución compartida*.

---

### 3. Qué significa “publicar” en este curso

En este contexto, publicar puede significar cualquiera de estas tres cosas:

| Nivel | Qué haces | Cuándo usarlo |
|-------|------------|---------------|
| **1. Compartir en GitHub** | Subes tu carpeta con README y `.env.example`. | Ideal para revisión o trabajo en equipo. |
| **2. Exponer con FastAPI** | Lo conviertes en un endpoint accesible vía web. | Si quieres conectarlo con n8n o Zapier. |
| **3. Automatizar con n8n/Make** | Conectas tu script a un flujo visual. | Si quieres que el prototipo funcione sin abrir VS Code. |

Puedes elegir solo una opción o combinarlas.

---

### 4. Opción 1 – Subir a GitHub (recomendada)

1. **Crea un repositorio nuevo** (público o privado).

2. Añade tu proyecto:

   - `call_model.py`, `rag_simple.py`, `agente_simple.py`, etc.
   - Un archivo `.gitignore` (para excluir `.env` y `/__pycache__/`).
   - Un `README.md` con instrucciones claras:
     - Qué hace el proyecto.
     - Cómo instalar dependencias.
     - Cómo configurarlo.
     - Cómo probarlo.  

Ejemplo de resumen para el README:

    Proyecto: Asistente RAG para informes
    Requisitos: Python 3.11, openai, langchain, faiss-cpu
    Instrucciones:
    1. pip install -r requirements.txt
    2. Copia .env.example a .env y añade tu API key
    3. python rag_simple.py

**Regla esencial:** nunca subas tu `.env` ni tus documentos originales.  
Usa versiones anónimas o sintéticas.

---

### 5. Opción 2 – Exponer con FastAPI (API mínima)

Si quieres que tu prototipo sea accesible desde otros sistemas (por ejemplo, desde n8n o una web), crea un archivo `main.py` con este contenido básico:

    from fastapi import FastAPI, Query
    from pydantic import BaseModel
    import uvicorn
    from rag_simple import qa  # importas tu pipeline RAG

    app = FastAPI(title="RAG API Demo")

    @app.get("/query")
    def query_docs(q: str = Query(..., description="Pregunta al RAG")):
        answer = qa.run(q)
        return {"question": q, "answer": answer}

    if __name__ == "__main__":
        uvicorn.run(app, host="0.0.0.0", port=8000)

Ejecuta con:

    python main.py

Luego podrás acceder en tu navegador o herramienta a:

`http://localhost:8000/query?q=%C2%BFQu%C3%A9%20dice%20el%20documento%3F`

Si ves la respuesta en formato JSON, ya tienes un servicio funcional.

**Ventaja:** puedes conectarlo directamente desde n8n con un nodo HTTP Request.

---

### 6. Opción 3 – Integrar con n8n o Make

1. Crea un nodo **HTTP Request**.  
2. Pega la URL de tu API local o desplegada (`http://localhost:8000/query`).  
3. En “Query parameters”, añade `q` con el texto o variable que contenga la pregunta.  
4. Usa la respuesta JSON (`answer`) como entrada para otro nodo (email, Slack, base de datos).  

**Resultado:** has integrado tu RAG/Agente en una automatización no-code real.

**Mini-resumen:** tu modelo deja de ser un archivo local y se convierte en un componente dentro de un flujo.

---

### 7. Seguridad y mantenimiento

- **Claves:** nunca publiques tu `.env`. Usa `.env.example`.  
- **Datos:** revisa que los documentos del RAG no contengan información sensible.  
- **Logs:** guarda las preguntas y respuestas en un archivo local si necesitas trazabilidad.  
- **Dependencias:** anota versiones de librerías en `requirements.txt`.  
- **Backups:** guarda una copia del repo antes de actualizar librerías.

**Regla de oro:** todo lo que subas debe poder ejecutarse **sin riesgos ni secretos reales.**

---

### 8. Despliegue opcional en Render (solo si quieres probar)

Si quieres dar acceso externo sin montar servidores:

1. Crea una cuenta gratuita en [Render.com](https://render.com).  
2. Conecta tu repo de GitHub.  
3. Selecciona “Web Service” → Python → `main.py`.  
4. Define la variable `OPENAI_API_KEY` en el panel de configuración.  
5. Espera el despliegue y copia la URL pública.

Ya tendrás tu endpoint activo sin instalar nada en tu ordenador.

*(Este paso es opcional y solo recomendado si ya te sientes cómodo con los anteriores.)*

---

### 9. Documentar el cierre de tu proyecto

Deja constancia de lo que has logrado:

- Repositorio y enlace.  
- Fecha de subida.  
- Caso de uso.  
- Entorno de publicación elegido (GitHub, API, n8n).  
- Lecciones aprendidas y mejoras pendientes.

Esto forma parte de la entrega final del itinerario.

---

### 10. Cierre y aprendizajes clave

- **Ya sabes compartir tu trabajo** de forma ordenada y segura.  
- **Comprendes las distintas formas de publicación:** local, API o automatización visual.  
- **Sabes documentar para que otros puedan reproducirlo.**  
- **Has convertido un flujo experimental en una pieza conectable.**

**Mini-resumen final:**  
> “Puedo publicar mi prototipo de IA en un entorno reproducible, conectarlo a herramientas externas y mantenerlo sin depender de IT.”

Con esto cierras el **Itinerario 2 – Constructor de Prototipos**.  
Tu siguiente paso puede ser **mejorar tu prototipo** (más documentos, más herramientas, mejor interfaz) o **unir fuerzas con tu equipo técnico** para transformarlo en una solución completa.

No olvides hacer un repaso final del curso en el capítulo de [Resumen](resumen.md).
