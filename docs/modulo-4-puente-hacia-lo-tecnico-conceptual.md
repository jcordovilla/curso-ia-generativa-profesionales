## Propósito del módulo

Hasta ahora has trabajado **dentro** de las herramientas: abrías n8n/Make/Zapier, configurabas un flujo, creabas un asistente y todo ocurría en una interfaz gráfica. En muchas organizaciones, sin embargo, llega un momento en que alguien te dice:

> “Vale, esto está muy bien… ¿pero podemos integrarlo con nuestro sistema?”
>
> “¿Hay API para esto?”
>
> “¿Lo puedes pasar al equipo de desarrollo?”

Este **Módulo 4** es precisamente para ese puente: que puedas **entender de qué están hablando los técnicos** cuando dicen API, endpoint, repo, token, webhook, Docker… y que puedas **explicar tu caso de uso en esos términos**. No vamos a convertirte en desarrollador aquí; vamos a darte el mapa para que no te pierdas.

---

## Resultados de aprendizaje

Al finalizar este módulo, el participante será capaz de:

1. Explicar con palabras sencillas qué es una **API** y para qué se usa en automatización con IA.
2. Diferenciar entre **llamar una API desde una herramienta no-code** y **programar contra una API** (y saber cuál de las dos le corresponde).
3. Entender qué significa “este servicio expone un endpoint” y dónde va la **API key / token**.
4. Leer una documentación de API sencilla y extraer la información relevante para negocio (qué hace, qué envía, qué recibe).
5. Entender por qué los técnicos hablan de **Git/GitHub** y **Docker** y en qué momento entra cada cosa, sin tener que usarlo tú todavía.
6. Preparar una ficha técnica mínima para entregar al equipo de IT o al compañero que sí está en el itinerario intermedio.

---

## Idea central del módulo

No todo lo que construyes en no-code se queda en no-code. A veces:
- tu flujo tiene que esperar a que otro sistema le envíe datos (webhook),
- tu asistente tiene que consultar un sistema interno (API de la empresa),
- o el equipo quiere “empaquetar” tu idea para que funcione igual en todos los entornos (Docker).

Si sabes **nombrar bien las piezas**, todo ese paso es más rápido.

---

## Contenidos del módulo

### 1. Qué es una API (versión para negocio)

- Definición operativa: **una dirección en internet (endpoint) a la que le mando datos y me devuelve algo, siempre de la misma forma**.
- Analogía: es como un mostrador con horario fijo y formulario fijo.
- Por qué nos importa en IA:
  - porque los modelos se usan así (tú le mandas el prompt y él te devuelve el texto),
  - porque otros sistemas de la empresa también se usan así (CRM, ERP, gestión de tickets),
  - y porque nuestras herramientas no-code suelen tener un bloque llamado “HTTP Request” o “Call API”.

**Mensaje clave:** si tu herramienta ya tiene un conector, usas el conector; si no, usas la API con un bloque genérico.

---

### 2. Componentes básicos de una llamada API

Descomponemos la “cosa fea” en 5 elementos:

1. **URL / Endpoint**: a dónde le hablo.
2. **Método**: qué quiero hacer (GET = leer, POST = enviar).
3. **Headers**: información extra, normalmente la autenticación (“esta soy yo”).
4. **Body / Payload**: los datos que envío (p. ej. el texto para que lo procese la IA).
5. **Respuesta**: lo que me devuelve (texto, JSON).

En una herramienta no-code esto suele aparecer como un formulario muy parecido. Tu trabajo consiste en **llenarlo con los datos correctos** siguiendo la documentación.

---

### 3. Autenticación: API keys y tokens

- Relación con el Módulo 1: esto es lo mismo que ya viste, pero ahora **al servicio externo le tienes que decir quién eres**.
- Sitios típicos donde se pone la API key:
  - en un campo llamado “Authentication” o “API key”,
  - en los headers (`Authorization: Bearer <token>`),
  - dentro del propio conector (n8n/Make ya traen el campo).
- Buenas prácticas:
  - no poner la key en texto plano en documentos compartidos,
  - si es una key de la empresa, pedir una cuenta técnica,
  - avisar si el flujo va a ser compartido.

---

### 4. Leer documentación de API sin ser técnico

Vamos a establecer una mini-rutina de lectura:

1. **¿Qué hace esta API?** (descripción general, 2-3 frases).
2. **¿Cuál es la URL que tengo que pegar en mi herramienta?**
3. **¿Qué método usa?** (GET/POST; si no lo dice, suele ser POST en IA).
4. **¿Qué parámetros son obligatorios?** (prompt, model, input…).
5. **¿Qué devuelve?** (cadenas de texto, JSON con campos).

Con esas 5 preguntas puedes configurar el 80% de las APIs típicas para IA y automatización.

---

### 5. Webhooks: la puerta de entrada

Hasta ahora disparábamos los flujos porque **la herramienta** detectaba algo. Pero puede ocurrir que:
- un sistema externo quiera avisarte,
- un desarrollador te diga “te mando un webhook”.

**Webhook** = una URL tuya que se queda esperando a que otro le mande datos.  
En no-code esto suele ser un nodo “Webhook” o “Incoming request”.  
La parte técnica la hace el otro; tú solo debes:
- crear ese webhook,
- copiar la URL,
- dársela a quien te manda los datos,
- y probar.

Esto te permite integrarte con muchos sistemas sin programar.

---

### 6. Git / GitHub y Docker (solo para entender el vocabulario)

**Git / GitHub**
- Para ti: es el sitio donde el equipo va a querer guardar las plantillas, documentos y, si hay código, el código.
- Tu aportación: subir la documentación funcional del flujo/asistente para que viaje con el código.
- Por qué lo nombramos: porque el itinerario intermedio lo usará y está bien que sepas que “ese es el sitio”.

**Docker**
- Para ti: es “la caja” en la que los técnicos meten todo para que funcione igual en todos lados.
- Cuándo aparece: cuando lo que tú hiciste en no-code alguien lo reescribe en código y lo quiere subir a un servidor.
- Qué tienes que saber: que existe, que es normal que lo mencionen, y que tu documentación les ayuda a saber qué meter dentro.

No hace falta que hagas `docker build`, solo que sepas leer la palabra sin pánico.

---

### 7. Entrega al equipo técnico (handover)

Usaremos una **ficha técnica mínima**, muy parecida a la del módulo 2 pero con dos campos nuevos:

- **Nombre del flujo / asistente**
- **Propósito de negocio**
- **Datos de entrada** (de dónde vienen, formato)
- **Datos de salida** (a dónde van, formato)
- **Servicios externos usados** (IA, correo, CRM…)
- **Credenciales necesarias** (tipo de key, de quién es)
- **Puntos de integración deseados** (aquí es donde dices: “idealmente que esto se llame desde el CRM”)
- **Observaciones técnicas** (ej.: “funciona con una API X que requiere POST y JSON”)

Con esto, la persona del itinerario intermedio o el equipo de IT ya puede: o bien replicarlo con código, o bien industrializarlo.

---

## Actividad práctica guiada

**Título:** “Mi flujo llama a una API”

1. Crear un flujo sencillo con disparo manual.
2. Añadir un paso de “HTTP request” / “Call API”.
3. Tomar una documentación de API fácil (p. ej. una API pública que devuelve un texto o una lista).
4. Pegar URL, método y (si hace falta) la API key.
5. Ejecutar y comprobar que viene una respuesta.
6. Añadir un paso final que **muestre** la respuesta o la **guarde** en una hoja.
7. Documentar con la ficha técnica mínima.

**Variante aún más simple:** en lugar de una API pública, usar la propia API de la plataforma de IA que ya usas (ej.: OpenAI → “chat completions”). Como ya tienes la key, es 1 paso menos.

---

## Recursos recomendados

- Documentación de “HTTP Request node” de la plataforma que uséis (n8n, Make o Zapier): suelen traer ejemplos ya completos.
- Una o dos APIs públicas sencillas (cat facts, quotes, meteo) para practicar sin miedo.
- Guía corta interna “Cómo pedir una API key a IT”.
- Artículo o vídeo corto “What is an API” pensado para no técnicos.
- Glosario de términos técnicos que aparecerán en el itinerario intermedio (API, endpoint, webhook, repo, Docker) en markdown para el vault.

---

## Criterios de finalización del módulo

El módulo se considera completado cuando el participante:

1. Ha configurado **al menos una llamada a una API** desde su herramienta no-code y ha visto una respuesta real.
2. Ha entendido dónde va la API key y para qué sirve.
3. Ha rellenado la **ficha técnica mínima** de su caso de uso.
4. Es capaz de explicar a un técnico qué quiere que ocurra “delante” (el flujo) y qué tendría que ocurrir “detrás” (la integración).

Con esto, el **Módulo 5** ya puede centrarse en evaluación, documentación larga y handover completo.