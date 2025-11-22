# Itinerario 2 · Módulo 1  
## Entorno “enchufar y usar”: ejecutar primero, entender después

En el itinerario 1 trabajaste siempre “desde fuera”: conectando servicios, construyendo flujos visuales y creando GPTs con tus documentos. Ahora vamos a entrar **un poco más dentro**: vamos a ejecutar código que ya viene preparado.  
La clave de este módulo es que **no vas a empezar desde un archivo vacío**, sino desde un **repo/proyecto ya montado**. Tu trabajo es hacerlo funcionar en tu máquina (o en un entorno online) y dejarlo listo para los módulos siguientes.

---

### 1. Qué vamos a ver en este módulo

1. Qué es un “entorno preparado” y por qué lo usamos.  
2. Cómo clonar o descargar un repositorio de ejemplo.  
3. Cómo instalar las dependencias sin romper nada.  
4. Cómo crear y rellenar un archivo `.env` con tu API key.  
5. Cómo ejecutar el **script de prueba** y comprobar que la llamada al modelo funciona.  
6. Qué guardar/documentar para el resto del itinerario.  

**Idea clave:** si hoy consigues “ejecutar un script que llama a la IA”, el resto de módulos (APIs, RAG, agentes) serán solo variaciones sobre lo mismo.

---

### 2. Por qué empezamos así

Porque en este itinerario queremos que aprendas **a modificar** un prototipo, no a montarlo desde cero. En los equipos reales esto pasa todo el tiempo: alguien técnico te pasa un repo y tú tienes que:
- poner tu clave,  
- cambiar un parámetro,  
- y volver a ejecutar.  

En la práctica esto significa: **tu habilidad no es programar, tu habilidad es echar a andar un proyecto que te dan**.

**Mini-resumen:** este módulo te enseña a “arrancar motores”.

---

### 3. Qué es un entorno preparado

Cuando decimos “entorno enchufar y usar” nos referimos a un proyecto que ya trae:

- un archivo `requirements.txt` o `pyproject` con las librerías necesarias,  
- un archivo `example.env` o `.env.example` donde van las claves,  
- un `README.md` que dice cómo ejecutar,  
- y un script de prueba, algo como `python test_llm.py`.  

Tú no tienes que decidir librerías, ni estructura, ni versiones. **Solo tienes que seguir las instrucciones y adaptar las claves.**

**Comparación útil:** es como recibir una plantilla de Excel con fórmulas: no la diseñas, la rellenas.

---

### 4. Flujo de trabajo recomendado (el de verdad)

Vamos a dejarlo claro, porque lo vas a repetir en todos los módulos:

1. **Clonar o descargar el repo**

    - Si usas GitHub: `git clone <url-del-repo>`
    - Si no usas Git: botón "Download ZIP" y lo descomprimes.

2. **Abrir en VS Code / Codespace**

    - Abre la carpeta del proyecto.
    - Asegúrate de que ves los archivos (`requirements.txt`, `README.md`, etc.).

3. **Crear el entorno de claves**

    - Copia `.env.example` a `.env`.
    - En `.env` pega tu API key de OpenAI (u otro proveedor).
    - No subas ese `.env` a GitHub.

4. **Instalar dependencias**

    (en la terminal de VS Code)
    `pip install -r requirements.txt`
    *(o el comando que indique el README)*

5. **Ejecutar el script de prueba**

    `python test_llm.py`
    Debes ver una respuesta del modelo.

6. **Apuntar lo que hiciste**

    - En un `notas.md` o en Obsidian: versión del repo, fecha, modelo usado, API key cargada.  

**Mini-resumen:** clonar → abrir → `.env` → instalar → ejecutar → anotar.

---

### 5. El `.env`: tu sitio para las claves

En el itinerario 1 las claves las pegabas en la interfaz de la herramienta. Aquí vamos a hacerlo **como lo hace la gente técnica**: las claves van en un archivo `.env`.

- `.env` es un archivo de texto que guarda pares `NOMBRE=VALOR`.  
- Ejemplo: `OPENAI_API_KEY=sk-xxxxxxx`  
- El código luego lee esa clave sin que tengas que pegarla en cada script.  
- **No se sube a GitHub.** Por eso suele venir un `.env.example` para que lo copies.  

En la práctica esto significa: **puedes compartir el proyecto sin compartir la clave**.

**Error común:** ejecutar el script sin haber creado el `.env`. El script se queja de “no hay API key” y parece que “no funciona”. Sí funciona, solo que faltan las credenciales.

---

### 6. Primera ejecución: qué debes conseguir

Vamos a ponerle nombre a la meta de este módulo:

> **Meta del módulo 1:** “En mi equipo puedo ejecutar un script que llama a un modelo de IA y devuelve una respuesta, usando mi propia API key, sin modificar el código fuente.”

Eso implica que:
- la instalación fue bien,  
- la API key está en el sitio correcto,  
- el entorno (VS Code, Python) está bien configurado.  

Si esto está, ya puedes pasar al **[Módulo 2 – Llamar a APIs de modelos](modulo-2-llamar-a-apis-de-modelos.md)** sin miedo.

---

### 7. Señales de alerta y cómo resolverlas

- **“Python no se reconoce como comando”**  
  → Tienes que asegurarte de que Python está instalado y disponible en la terminal. En Windows a veces es `py` en vez de `python`.  

- **“No se puede instalar tal librería”**  
  → Vuelve al `README.md` y mira si hay versión recomendada de Python. Muchas plantillas están pensadas para 3.10 o 3.11.  

- **“El script dice que falta OPENAI_API_KEY”**  
  → Revisa que el `.env` existe y que el nombre de la variable es exactamente el que espera el script.  

- **“Me funciona en Codespaces pero no en mi PC”**  
  → Perfecto: usa Codespaces o un entorno online para seguir el curso y deja la instalación local para más adelante. El objetivo es que aprendas el flujo, no que te pelees con tu sistema operativo.  

**Regla de oro:** si el repo trae instrucciones, **haz primero lo que diga el repo** y luego lo adaptas al curso.

---

### 8. Documentar lo que hiciste (para tu yo del futuro)

Este itinerario asume que trabajas mientras trabajas 😅, así que vas a interrumpirte. Deja siempre una nota con:

- Fecha  
- Repo que usaste (URL)  
- Comando que ejecutaste  
- Modelo que probaste  
- Errores que aparecieron y cómo los solucionaste  

Con 6 líneas te ahorrarás 40 minutos dentro de dos semanas.

---

### 9. Cómo se conecta con los siguientes módulos

- En el **[Módulo 2](modulo-2-llamar-a-apis-de-modelos.md)** vamos a abrir ese mismo repo o uno muy parecido y cambiar parámetros de la llamada al modelo. Si el módulo 1 no está funcionando, el 2 tampoco.
- En el **[Módulo 3](modulo-3-rag-practico.md)** usaremos el mismo patrón de "clonar → `.env` → ejecutar", pero añadiendo carga de documentos.  
- Por eso este módulo es **obligatorio**: resuelve lo que luego se repetirá.

---

### 10. Cierre y aprendizajes clave

- **Ya sabes poner en marcha un entorno preparado**: clonar, instalar, configurar y ejecutar.  
- **Ya sabes dónde van las claves** (`.env`) y por qué no van en el código.  
- **Ya sabes qué mirar cuando algo falla** (terminal, README, nombre de la variable).  
- **Ya tienes tu máquina lista** para empezar a cambiar parámetros de la llamada al modelo.  

**Mini-resumen final:**
> "Puedo ejecutar un proyecto de ejemplo de IA con mi API key, sin escribir código desde cero, y sé repetir este proceso con otros repositorios."

---

> [!info] Para profundizar
> - [Python for Beginners](https://learn.microsoft.com/en-us/training/paths/beginner-python/) - Ruta de aprendizaje gratuita de Microsoft Learn que cubre los fundamentos de Python necesarios para trabajar con APIs de IA.
> - [Automate the Boring Stuff with Python](https://automatetheboringstuff.com/) - Libro completo disponible gratis online de Al Sweigart, enfocado en automatización práctica: archivos, web scraping, emails y más.
> - [VS Code Tutorial for Beginners](https://www.youtube.com/watch?v=WPqXP_kLzpo) - Tutorial de freeCodeCamp de 30 minutos cubriendo instalación, configuración y uso efectivo de Visual Studio Code.
> - [GitHub Codespaces](https://github.com/features/codespaces) - Entorno de desarrollo en la nube de GitHub que permite ejecutar código sin configurar nada localmente, ideal para empezar rápido.
> - [Ollama](https://ollama.ai/) - Herramienta para ejecutar modelos de lenguaje localmente en tu máquina, sin depender de APIs externas ni enviar datos a terceros.

---

A partir de aquí pasamos al **[Módulo 2 – Llamar a APIs de modelos](modulo-2-llamar-a-apis-de-modelos.md)**, donde ya dejaremos de usar scripts "mágicos" y empezaremos a controlar qué le pedimos al modelo y cómo.