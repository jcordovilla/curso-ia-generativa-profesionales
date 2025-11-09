# IA Generativa para Profesionales: Itinerario 2 – Low Code (intermedio)

Este segundo itinerario parte de una situación distinta al primero: **ya sabes qué caso de uso quieres** (porque lo has probado en no-code) y ahora quieres **tener más control** sobre cómo se llama al modelo, cómo se cargan los documentos y cómo se comparte el resultado. Estás en camino de convertirte en un **constructor de prototipos de IA generativa**.

Aquí sí vamos a acercarnos más al código, pero **sin empezar desde cero**: trabajarás sobre repositorios de ejemplo, plantillas y proyectos ya configurados.

El objetivo no es que te conviertas en desarrollador, sino que seas capaz de **montar un prototipo funcional en un entorno técnico básico** (VS Code/Codespaces) y hablar de tú a tú con el equipo que lo vaya a poner en producción.

---

## Objetivo general

Capacitarte para **tomar un caso de uso ya validado en no-code** y construir una versión más controlada que:

1.  llame directamente a una **API de LLM**,
2.  pueda incorporar **documentos propios** mediante un RAG simple,
3.  se pueda **compartir o publicar** (GitHub, endpoint mínimo, conexión desde n8n),
4.  y esté **documentada de forma técnica y de negocio**.

---

## Perfil al que va dirigido

- Profesionales que **ya completaron el itinerario 1** o tienen experiencia en automatización visual.
- Consultores, PMs o responsables de innovación que **necesitan prototipar** para validar con clientes internos.
- Perfiles de negocio que no programan a diario pero **no les asusta abrir VS Code** y editar un `.env`.

Si vienes “en frío” sin pasar por el primer itinerario, podrás seguirlo, pero te será más fácil si ya sabes expresar tu caso de uso como **entrada → IA → salida**.

---

## Qué aprenderás aquí

- **Ejecutar primero, entender después:** clonar un repo, instalar dependencias y lanzar el primer script de prueba.
- **Llamar a modelos por API:** usar el cliente oficial (OpenAI/Anthropic) y controlar temperatura, sistema, usuario.
- **Montar un RAG simple con LangChain:** cargar documentos, crear embeddings y hacer una query.
- **Añadir una capa de agente/orquestación mínima:** que el modelo pueda “llamar una tool” para buscar o resumir.
- **Publicar/compartir:** subir a GitHub y, si procede, exponer con FastAPI o consumir desde tu herramienta no-code.

---

## Estructura del itinerario

1. **[Módulo 1 – Entorno "enchufar y usar"](modulo-1-entorno-enchufar-y-usar.md)**

    Te damos un repo/proyecto ya preparado (`requirements`, `env.example`, script de prueba). Tu trabajo es hacerlo andar en tu equipo o en un Codespace. Aquí aprendes la secuencia: *clonar → instalar → configurar → probar*.

2. **[Módulo 2 – Llamar a APIs de modelos](modulo-2-llamar-a-apis-de-modelos.md)**

    Aprendes a hablarle directamente al modelo: dónde va la API key, cómo cambiar el modelo/temperatura y cómo formatear la respuesta para que luego la consuma otra pieza.

3. **[Módulo 3 – RAG práctico con LangChain](modulo-3-rag-practico.md)**

    Sigues el tutorial oficial para montar un RAG sencillo: cargas documentos, creas el índice y haces preguntas sobre ellos. Lo conectamos mentalmente con el itinerario 1 para que veas que es la misma idea, pero en código.

4. **[Módulo 4 – Agentes y orquestación (lo necesario)](modulo-4-agentes-y-orquestacion-minima.md)**

    Ves un ejemplo de agente que puede llamar a una tool (buscar, resumir, leer docs). No entramos en grafos complejos: lo justo para que puedas leer ejemplos de LangChain y adaptarlos.

5. **[Módulo 5 – Publicar y compartir](modulo-5-publicar-y-compartir.md)**

    Opciones realistas: subir a GitHub para que otros lo usen, exponer una ruta con FastAPI, o consumirlo desde n8n/Make como si fuera un servicio. Docker lo dejamos como extra y no como obligación.

---

## Principios metodológicos (siguen siendo los mismos)

- **Primero que funcione, luego lo entendemos.** Ejecutar un script de ejemplo es más motivador que leer documentación.
- **Todo conectado a un caso de uso real.** No montamos RAG “porque sí”, sino porque quieres preguntar sobre tus documentos.
- **Seguridad y claves desde el inicio.** `.env` separado, nada de pegar la key en el código que vas a subir.
- **Documentación mínima obligatoria.** Cada módulo debería dejar al menos un `README.md` corto que diga: qué hace, cómo se ejecuta, qué necesita.

---

## Qué necesitas antes de empezar

- Tener instalado VS Code **o** usar un entorno online tipo Codespaces.
- Tener una **API key válida** (OpenAI u otro proveedor).
- Saber copiar un repo de GitHub.
- Tener claro **qué caso de uso del itinerario 1 quieres “subir de nivel”** (ej. resumen de correos, asistente sobre docs, clasificador).

---

## Relación con el itinerario 1

El itinerario 1 te enseñó a **orquestar sin código**.  
El itinerario 2 te enseña a **construir la pieza que luego puedes orquestar**.

Dicho de otro modo: aquí creas el “motor” (llamada al modelo, RAG, agente) y luego ese motor lo puedes enganchar otra vez a n8n/Make o a tu intranet.

---

## Siguientes pasos

1. Lee la intro del **[Módulo 1 – Entorno "enchufar y usar"](modulo-1-entorno-enchufar-y-usar.md)**.
2. Clona el repo de ejemplo y ejecuta el script de prueba.
3. Una vez que tengas consola + respuesta del modelo, el resto de módulos serán mucho más sencillos.

Con esto dejamos listo el índice del itinerario 2. A partir de aquí, cada módulo baja al detalle técnico justo.