# Itinerario 1 · Módulo 1  
## Alfabetización digital para IA: poner las bases sin volverse técnico

En los capítulos comunes ya vimos que **la IA generativa solo tiene sentido si la conectamos con un caso de uso real** y si reducimos la ansiedad técnica. Aquí empezamos justamente por ahí: antes de “hacer magia” con IA, necesitamos entender **las piezas básicas** que usan todas las plataformas no-code (n8n, Make, Zapier…) cuando las conectamos con un CRM, con un gestor de documentos o con un modelo de IA.  
Si entiendes estas piezas, el resto del itinerario será más fácil y podrás seguir los vídeos paso a paso sin quedarte atascado en detalles técnicos.

---

### 1. ¿Qué vamos a ver en este módulo?

1. Qué significa “automatizar con IA” cuando no eres programador.
2. Qué son **cuentas, credenciales y conexiones** y por qué siempre te las piden.
3. Qué es un **webhook** explicado en lenguaje de negocio.
4. Cómo se ve un **flujo sencillo** tipo “toma datos → pásalos por IA → guarda el resultado”.
5. Una micro-práctica: **conectar Google Sheets y leer una fila**.
6. Errores típicos que hacen perder tiempo y cómo evitarlos.

**Idea clave:** este módulo no busca que memorices vocabulario técnico, sino que **pierdas el miedo** y puedas decir con propiedad: “esto es una conexión”, “esto necesita credenciales”, “esto es la parte de entrada de datos”.

---

### 2. ¿Por qué es relevante para tu trabajo con IA generativa?

Porque la IA por sí sola **no conoce tu negocio**. Para que una IA resuma un email, clasifique un ticket o genere una respuesta estándar, alguien tiene que decirle de dónde sacar los datos y dónde dejarlos.  
En la práctica esto significa: **sin una mínima alfabetización digital, acabarás dependiendo siempre de un técnico** para cosas muy pequeñas (cambiar una cuenta, actualizar una clave, probar un flujo). Y eso ralentiza la adopción.

Piensa en este ejemplo:  
> “Quiero que cada vez que llegue un correo con una propuesta, la IA me haga un resumen y lo mande al canal del equipo.”  

Para hacerlo, la herramienta necesita:
- leer correos (cuenta y permisos),
- llamar a la IA (credencial de IA),
- enviar el resumen al equipo (otra conexión).  
Si sabes nombrar estas tres piezas, sabes pedir ayuda, sabes documentarlo y sabes probarlo sin romper nada.

**Mini-resumen:** aprender IA generativa no es solo hablar con un chatbot; **es saber cómo se conectan los sistemas donde están tus datos**.

---

### 3. Cuentas, credenciales y conexiones: las 3 palabras que más confundan

Vamos por partes.

#### 3.1. Cuenta
Es tu **identidad en un servicio**: tu cuenta de Google, de Microsoft 365, de OpenAI, de la plataforma de automatización.  
En la práctica esto significa: cada vez que una herramienta te pide “conéctate con Google”, está usando tu cuenta para pedir permiso.

#### 3.2. Credencial (o API key)
Es un **código de acceso** que autoriza a una herramienta a usar un servicio en tu nombre.  
- En IA suele ser la “API key” de OpenAI, Anthropic, etc.
- Se pega en un campo de configuración y **no se comparte** por email ni por chat del equipo.
- Si te roban la credencial, pueden usar tu cuota.

En la práctica esto significa: **sin credencial no hay llamada a la IA**.

#### 3.3. Conexión
Es cuando la plataforma (n8n, Make…) guarda esa credencial y la usa en los flujos.  
- A veces es “conexión a Google Sheets”.
- Otras veces es “conexión a Slack”.
- Tú la creas una vez y luego la reutilizas.

**Comparación útil:**  
- *Cuenta* → “Soy yo.”  
- *Credencial* → “Esta es mi llave.”  
- *Conexión* → “Guarda mi llave para usarla en los flujos.”

**Error común:** pensar que “ya tengo cuenta en Google” y por eso el flujo debería funcionar. No: **la plataforma que automatiza necesita su propia conexión**, aunque tú ya tengas tu cuenta abierta en el navegador.

---

### 4. ¿Y eso del webhook qué es?

La palabra asusta, pero el concepto es simple.

- Un **webhook** es **una dirección (URL) que recibe información**.
- Sirve para que otro sistema “toque a la puerta” y diga: “ha pasado algo”.
- Por ejemplo: “ha entrado un formulario”, “alguien ha pagado”, “se ha creado un ticket”.

En la práctica esto significa:  
> “Cuando alguien envía el formulario de contacto, dispara el flujo y mándame un resumen por IA.”

**Esto no es** una base de datos ni un archivo.  
**Se parece a** una bandeja de entrada muy pequeña que solo está esperando que llegue un mensaje para activar el resto del flujo.

**Error común:** creer que el webhook guarda datos. No guarda; **solo dispara**.

---

### 5. Cómo funciona un flujo sencillo (visión desde negocio)

Vamos a describir el flujo tipo que usarás varias veces en el itinerario:

1. **Entrada de datos**

    - Email recibido / fila de Excel / webhook.

2. **Procesamiento IA**

    - Llamada al modelo con un prompt: "resume en 5 puntos", "clasifica", "extrae nombre y teléfono".

3. **Salida**

    - Guardar en Google Sheets, enviar a Slack/Teams, crear registro en CRM.

La mayor parte de las plataformas no-code te lo muestran como bloques. Por eso en este módulo queremos que puedas decir:  
- “Aquí entra la información.”  
- “Aquí está la IA.”  
- “Aquí lo envío al negocio.”

**Mini-resumen:** si puedes dibujar el flujo, puedes construirlo o pedir que te lo construyan.

---

### 6. Micro-práctica guiada: leer una fila en Google Sheets

Este es el ejercicio que te quitará el miedo. No es “IA todavía”, es **aprender a conectar**.

**Objetivo:** que la plataforma pueda leer una hoja de cálculo tuya.

**Pasos esenciales:**
1. Entra a la plataforma (n8n, Make o la que use tu organización).
2. Elige el bloque “Google Sheets” o similar.
3. Cuando te pida permiso, **crea la conexión** con tu cuenta de Google.
4. Selecciona el documento y la hoja.
5. Pide “Get row” / “Leer fila”.
6. Mira el resultado en la vista previa.

Si esto funciona, ya hiciste lo difícil: **autorizar un servicio externo y traer datos reales**. En el módulo siguiente, ese mismo dato se lo pasaremos a la IA.

**Señal de alerta:** si no te deja conectar, suele ser por permisos de la organización o porque estás con la cuenta equivocada. Antes de pensar “no sé”, piensa “¿estoy con la cuenta correcta?”.

---

### 7. Errores y malentendidos comunes

- **“No entiendo por qué me pide otra vez login”** → porque la plataforma necesita su propia autorización, no la del navegador.
- **“No me aparece mi archivo”** → porque estás en otra cuenta o porque el archivo no está compartido con esa identidad.
- **“La IA no me contesta”** → muchas veces no es la IA, es que **no hay API key** o está mal escrita.
- **“El flujo se ejecuta pero no veo nada”** → porque no configuraste la salida (guardar, enviar, mostrar). El flujo sin salida es como una llamada sin colgar: pasó, pero nadie lo vio.
- **“Subo documentos sensibles al GPT”** → aquí pondremos la alerta de privacidad más adelante: **no todo se sube**. En este módulo quédate con la frase: *“si no lo enviarías por email sin cifrar, no lo subas a un GPT público”*.

---

### 8. Aplicación directa en tu entorno

Para que esto no se quede en teoría, piensa en tu día a día:

- ¿Qué tarea repetitiva podrías convertir en **entrada → IA → salida**?
- ¿Qué sistema usas siempre (correo, SharePoint, Google Drive, CRM) que te pueda servir como “fuente de datos”?
- ¿Quién en tu equipo tiene que revisar siempre los mismos correos o reportes y podría recibirlos ya resumidos?

**Preguntas de reflexión:**
- ¿Sé identificar qué parte del proceso es “entrada”, cuál es “IA” y cuál es “salida”?
- ¿Sé decir qué credenciales voy a necesitar?
- ¿Sé a quién pedir el permiso si la plataforma no me deja conectar?

Responder a estas preguntas te prepara para hablar con TI sin pedir “ayuda genérica”. Podrás decir: **“necesito habilitar la conexión de n8n con Google Sheets para leer este archivo”**. Eso sí se resuelve.

---

### 9. Conclusiones y aprendizajes clave

- **La automatización con IA no empieza en la IA, empieza en la conexión.**
- **Cuentas, credenciales y conexiones** son conceptos distintos; si los confundes, te atascas.
- Un **webhook** es solo un disparador, no un almacén.
- Si puedes **traer una fila de Google Sheets**, ya estás listo para pasar esa información a la IA en el siguiente módulo.
- El objetivo de este módulo es que **pierdas el miedo a “tocar” las plataformas** y que tengas el lenguaje para explicar lo que estás haciendo.

**Mini-resumen final:**  
> “Puedo identificar las piezas básicas de un flujo no-code con IA, sé por qué me piden claves y permisos, y sé hacer una prueba sin romper nada.”  

Con esto, pasamos al [Módulo 2](modulo-2-automatizacion-visual-negocio.md), donde ya veremos **la automatización visual con IA** y construiremos el primer flujo útil: entrada de email → IA resume → envío al canal del equipo.
