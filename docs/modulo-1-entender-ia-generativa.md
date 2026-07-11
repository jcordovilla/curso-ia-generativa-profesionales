---
date: "2026-06-12"
title: "Módulo 1 - Entender la IA generativa"
tags:
  - lang/es
  - type/course
  - topic/ai
  - topic/automation
usefulness: 0.9
links_woven: true
---

# Módulo 1 - Entender la IA generativa

## Qué es, para qué sirve y cómo elegir

¿Cuántas aplicaciones de IA has abierto este último año sin tener claro cuál usar, para qué, ni qué podías escribir en ellas sin meter la pata? Es una confusión habitual, y casi siempre nace de empezar por las herramientas en lugar de por los conceptos.

Antes de automatizar nada conviene entender las piezas básicas, las justas para **decidir con criterio**: qué herramienta usar, qué puedes compartir con la IA, qué modelo elegir y cuánto cuesta todo esto. Este módulo te da esas bases. Todo lo demás se construye encima.

Si todavía no has practicado los tres primeros escalones de la escalera (resumir sobre material propio, estructurar la petición, iterar), empieza por [Antes de empezar](antes-de-empezar.md); este módulo da por hecha esa base.

---

## 1. Qué es la IA generativa (y qué no es)

La IA generativa es un tipo de inteligencia artificial que **produce contenido nuevo** (texto, imágenes, código, audio) a partir de instrucciones en lenguaje natural. Los modelos de lenguaje (LLMs) son su forma más extendida: les das una instrucción y te devuelven una respuesta elaborada.

**Lo que sí es:**
- Un asistente que procesa, resume, clasifica y genera texto con rapidez.
- Una herramienta que mejora con instrucciones claras.
- Un acelerador de tareas repetitivas.

**Lo que no es:**
- No es infalible: inventa datos con seguridad aparente (lo que se llaman ["alucinaciones"](glosario.md)).
- No es una base de datos: no "sabe" lo que hay en tus archivos a menos que se lo des.
- No sustituye el criterio profesional: amplifica lo que ya sabes, pero no piensa por ti.

> [!tip] Observación práctica
> La mayoría de profesionales empiezan usando la IA como un chatbot para hacer preguntas y no pasan de ahí. Lo interesante empieza cuando dejas de usarla como buscador y empiezas a usarla como herramienta de proceso: que resuma, clasifique, extraiga y transforme la información con la que ya trabajas.

### Verificar siempre: la trampa de la precisión plausible

De todos los riesgos al usar IA, el más traicionero es el que no se ve venir. La IA te dará una cifra, una fecha, el nombre de una norma o una sigla con una seguridad impecable, y sonará tan verosímil que cuela sin que lo cuestiones. A eso se le llama **precisión plausible**, y es la forma más habitual en que la IA mete a un profesional en un problema.

Lo he visto de cerca: un informe de casi 7.000 palabras que necesitó quince correcciones, casi todas del mismo tipo. Cifras que la IA había redondeado, nombres que había atribuido mal, siglas que había expandido a su manera. Ninguna saltaba a la vista. Las cazó la revisión humana, una a una.

La defensa es cuestión de hábito, y se reduce a cuatro reflejos:

- **Exige la fuente.** "¿De dónde sale ese dato? Cítame el documento." Si no puede, trátalo como sospechoso.
- **Que copie, no que recuerde.** Cuando trabajes sobre un documento, pídele que extraiga del texto, en vez de contestar de memoria.
- **Desconfía de lo redondo.** Una cifra exacta y bonita sin fuente es la más peligrosa de todas.
- **Pide el rango.** Si dos fuentes discrepan, que te dé las dos y diga cuál es cuál, en lugar de elegir una por ti.

> [!warning] La regla práctica
> Trata cada dato concreto que produzca la IA (una cifra, una fecha, un nombre propio, una sigla) como un borrador que tú tienes que verificar antes de firmarlo. La IA redacta; la responsabilidad de que sea cierto sigue siendo tuya.

---

## 2. Los 4 patrones de uso

Prácticamente todo lo que puedes hacer con IA generativa en un entorno profesional se reduce a cuatro patrones:

| Patrón | Qué hace | Ejemplo |
|--------|----------|---------|
| **Resumir** | Condensa información larga en lo esencial | Email largo del cliente → 5 puntos clave para el equipo |
| **Clasificar** | Asigna categorías o niveles a contenido | Consulta de cliente → urgente / normal / informativa |
| **Extraer** | Saca datos concretos de un texto | Contrato de 40 páginas → partes, plazos, penalizaciones |
| **Conversar** | Responde preguntas sobre un tema o documento | "¿Qué dice el procedimiento sobre las vacaciones?" |

Cuando pienses en un caso de uso, pregúntate: **¿estoy resumiendo, clasificando, extrayendo o conversando?** Si puedes nombrarlo, puedes construirlo.

**Ejemplos por sector** (abre el tuyo):

=== "Consultoría"
    Un informe de 30 páginas llega por correo: la IA extrae los 5 riesgos principales y los resume para el socio director.

=== "Legal"
    Un contrato nuevo: la IA extrae las cláusulas de penalización y las compara con la plantilla estándar.

=== "Marketing"
    200 respuestas a una encuesta de satisfacción: la IA clasifica por sentimiento y genera un resumen por temas.

=== "RRHH"
    Preguntas frecuentes de empleados sobre políticas internas: un asistente que conversa sobre el manual de la empresa.

=== "Finanzas"
    Informes mensuales de 15 páginas: la IA extrae los KPI y señala desviaciones respecto al mes anterior.

---

## 3. Elegir modelo: el mapa actual

No existe "la mejor IA". Existen modelos con distintas capacidades, precios y políticas de privacidad. Antes de mirar la tabla, una advertencia que le quita presión: no hace falta memorizar ningún nombre. Los nombres cambian cada pocos meses; lo que se mantiene es el mapa de proveedores y el criterio para elegir, así que fíjate en las columnas de fortaleza y privacidad más que en el número de versión.

| Proveedor | Modelo destacado | Fortaleza | Privacidad |
|-----------|-----------------|-----------|-----------|
| **OpenAI** | GPT-5.5 | Versatilidad general, multimodal | Datos en nube, opción de no entrenar |
| **Anthropic** | Claude Opus 4.8 / Sonnet 4.6 | Análisis extenso, instrucciones complejas, código | No entrena con datos de usuario |
| **Google** | Gemini 3.5 | Integración con Google Workspace, multimodal | Datos en nube de Google |
| **Meta** | Llama 4 (vía Ollama, un programa para ejecutar modelos en tu ordenador; se explica más abajo) | Gratuito, ejecutable en local | Completamente privado si es local |
| **Mistral** | Mistral (empresa europea) | Buen rendimiento, opción europea | Opción local o en nube |
| **Alibaba** | Qwen 3 | Multilingüe, licencia abierta | Opción local o en nube |
| **Google (abierto)** | Gemma 4 | Ligero, ideal para ejecutar en local | Completamente privado si es local |

> [!note] Los nombres caducan; el mapa no
> Esta tabla es de mediados de 2026 y para cuando la leas algún nombre habrá cambiado: estos modelos sacan versión nueva cada pocos meses. El criterio de las columnas sigue valiendo aunque el número de versión cambie.

> [!tip] Observación práctica
> Para la mayoría de los casos de uso profesionales, Claude Sonnet 4.6 o GPT-5.5 dan la mejor relación entre calidad y coste. Si necesitas privacidad total, los modelos locales vía Ollama han mejorado enormemente: Llama 4, Qwen 3 y Gemma 4 son sorprendentemente capaces para tareas de resumen, clasificación y extracción, y corren en un portátil reciente sin enviar nada a la nube.

### Cómo elegir

- **¿Necesitas máxima calidad?** → GPT-5.5 o Claude Opus 4.8.
- **¿Necesitas buen rendimiento a bajo coste?** → Claude Sonnet 4.6 o una versión ligera de GPT.
- **¿Trabajas con datos sensibles?** → Modelos locales (Ollama + Llama 4 / Gemma 4 / Mistral).
- **¿Tu organización usa Google Workspace?** → Gemini 3.5 tiene integración directa.

---

## 4. ¿Cuánto cuesta esto?

La pregunta que todo el mundo se hace y casi nadie responde con cifras. Las de esta sección son de junio de 2026; los precios concretos cambian, pero los órdenes de magnitud llevan años estables.

**Suscripciones de chat** (importes en euros para España). Los proveedores fijan el precio en dólares y en España se cobra en euros a cifras redondas parecidas; el IVA (21%) va aparte o incluido según el proveedor, así que toma estas cifras como aproximadas. El precio original en dólares va entre paréntesis por transparencia.

| Opción | Coste mensual aproximado | Qué cubre |
|--------|--------------------------|-----------|
| Versión gratuita (ChatGPT, Claude, Gemini) | 0 € | Suficiente para los ejercicios de "Antes de empezar"; límites de uso y modelos básicos |
| ChatGPT Plus | unos 20 € + IVA (20 $) | Modelos superiores, más cuota de uso, GPTs personalizados |
| Claude Pro | unos 20 € + IVA, o unos 17 €/mes en plan anual (20 $ / 17 $) | Modelos superiores, más cuota, Claude Projects |
| Google AI Pro | unos 20 € (19,99 $) | Gemini avanzado e integración con Google Workspace |
| Google AI Plus | unos 8 € (7,99 $) | Escalón intermedio, con menos cuota |
| Modelos locales (Ollama, LM Studio) | 0 € | Corren en tu ordenador; la privacidad total de la sección siguiente |

**Coste por uso.** Cuando en el [módulo 2](modulo-2-automatizar-con-ia.md) montes flujos automáticos, esa parte del trabajo deja de cubrirla la suscripción: el flujo llama al modelo y paga por trabajo hecho, a precios que sorprenden por lo bajos. Resumir un informe de 30 páginas cuesta del orden de 5 a 10 céntimos con un modelo de gama media, y 2 o 3 céntimos con uno ligero (tarifas de junio de 2026). Mi propio flujo de boletines de cada mañana cuesta menos de 50 céntimos de euro al mes. Un aviso que ahorra confusión más adelante: la suscripción de chat y el uso por API son cosas separadas, con cuenta y facturación propias; pagar ChatGPT Plus o Claude Pro no incluye la clave de API que usan los flujos, y al revés tampoco.

**Presupuesto orientativo.** Aprender (este curso hasta el módulo 3) cuesta cero: las versiones gratuitas bastan. Trabajar en serio a diario justifica una suscripción de pago, en torno a 20 euros al mes. Automatizar añade los céntimos de API y, si tu flujo crece, el plan de pago de la plataforma; el orden de coste de esas plataformas lo verás en el módulo 2.

> [!tip] Observación práctica
> Más de una suscripción de pago a la vez rara vez compensa al empezar. Prueba dos o tres herramientas en gratuito, elige la que mejor entienda tu contexto, paga esa y revisa la decisión a los tres meses, que en este mercado es una era geológica.

---

## 5. Privacidad y seguridad: qué puedes compartir con la IA

Esta es la sección que más profesionales ignoran y la que más problemas causa.

> [!warning] Alerta de privacidad
> **Regla de oro:** si no lo enviarías por email sin cifrar a un desconocido, no se lo des a una IA en la nube.

### Lo que SÍ puedes compartir
- Textos genéricos sin datos personales.
- Procedimientos internos ya publicados o públicos.
- Datos anonimizados o sintéticos.
- Borradores propios para revisión.

### Lo que NO debes compartir
- Datos personales (nombres + DNI, teléfonos, direcciones).
- Información financiera sensible de clientes.
- Contratos con cláusulas de confidencialidad.
- Datos de terceros que tu organización no tiene derecho a procesar fuera de su entorno.
- Credenciales, contraseñas o claves de API.

> [!note]- Cuatro preguntas para elegir herramienta (despliega)
> Antes de casarte con una herramienta, respóndete a esto:
>
> 1. **¿Dónde se procesan mis datos?** ¿En los servidores del proveedor o en mi máquina?
> 2. **¿El proveedor usa mis datos para entrenar?** (OpenAI: sí por defecto salvo opt-out; Anthropic: no; Ollama: local, sin envío).
> 3. **¿Puedo usar una versión empresarial?** (ChatGPT Enterprise, Claude for Teams: no entrenan con datos).
> 4. **¿Mi organización tiene una política de IA?** Si no la tiene, es buen momento para proponerla.

### La decisión en tres preguntas

Las listas anteriores cubren los casos típicos, y aun así la duda reaparece con material concreto entre manos. Para esos momentos, la regla entera cabe en tres preguntas que se hacen en orden; en cuanto una sale mal, ese material no se comparte:

1. **¿Contiene datos personales o de terceros?** Nombres con DNI, teléfonos, datos de clientes. Si sí: fuera, o anonimiza primero y vuelve a empezar por la pregunta 1.
2. **¿Está bajo confidencialidad, o tu cliente la consideraría sensible?** Contratos con cláusulas, información financiera, material de proyecto. Si sí: solo en un entorno aprobado por tu organización o en un modelo local.
3. **¿La enviarías por un canal externo que no controlas?** Si la respuesta te hace dudar, no la subas.

Si el material pasa las tres preguntas, adelante.

![Árbol de decisión de privacidad: tres preguntas en orden sobre datos personales, confidencialidad y canal externo; cualquier respuesta mala detiene el envío, y solo si las tres pasan se comparte el material con la IA](assets/arbol-decision-privacidad.svg)

### ¿Y si tu empresa no permite la nube?

La prohibición suele ser más razonable de lo que parece desde fuera: quien la impone responde de los datos de los clientes. Ahora bien, prohibir la nube y renunciar a la IA son cosas distintas, y conviene conocer las tres salidas antes de dar el tema por cerrado:

1. **Aprender no toca datos de empresa.** Todo lo que practica este curso funciona con documentos públicos, material inventado o textos anonimizados.
2. **Modelos locales.** Programas como Ollama o LM Studio ejecutan el modelo entero en tu ordenador: nada de lo que escribes sale de tu máquina, ni siquiera hay conexión de por medio. Rinden por debajo de los grandes modelos en nube, y aun así sobran para resumir, clasificar y extraer.
3. **Versiones de empresa.** ChatGPT Enterprise, Claude for Teams y equivalentes no entrenan con los datos de sus clientes y ofrecen los controles que el departamento de informática necesita ver.

**Cómo plantear la conversación con informática.** La diferencia entre un sí y un no suele estar en llegar con un caso de uso concreto y las palabras correctas, en vez de una petición vaga de "usar IA". Algo así:

> "Quiero usar IA para resumir documentación interna. ¿Tenemos licencia de empresa de alguna herramienta aprobada? Si no, ¿podemos valorar una versión empresarial que no entrene con nuestros datos, o un modelo local tipo Ollama para empezar?"

Con eso, el responsable de informática tiene tres opciones concretas que evaluar y un interlocutor que ha hecho los deberes. La conversación cambia de tono.

---

## 6. Cuentas, credenciales y conexiones

Cuando empiezas a conectar herramientas con IA, aparecen tres conceptos que confunden a todo el mundo. Merece la pena aclararlos una vez:

| Concepto | Qué es | Analogía |
|----------|--------|----------|
| **Cuenta** | Tu identidad en un servicio (Google, OpenAI, Microsoft) | "Soy yo" |
| **Credencial (API key)** | Un código que autoriza a una herramienta a usar un servicio en tu nombre | "Esta es mi llave" |
| **Conexión** | Cuando la plataforma guarda tu credencial para usarla en flujos automáticos | "Guarda mi llave para no tener que sacarla cada vez" |

**La credencial es lo más importante.** Sin ella, no hay llamada a la IA. Se pega una vez en el campo de configuración de la herramienta y no se comparte por email ni por chat.

> [!tip] Observación práctica
> En la práctica, la mayoría de los atascos están en las credenciales, no en la IA. "No funciona" suele significar "no hay API key" o "la cuenta no tiene permisos". Antes de pensar que la IA falla, revisa que la llave esté en su sitio.

---

## 7. Multimodalidad: la IA que ve y escucha

Los modelos actuales no solo procesan texto. Los más avanzados pueden:

- **Ver imágenes:** le pasas una foto de una pizarra con notas de una reunión y te devuelve un resumen estructurado.
- **Procesar documentos escaneados:** un PDF con tablas escaneadas → la IA extrae los datos.
- **Transcribir audio:** la grabación de una reunión de una hora → acta resumida en 5 minutos (usando modelos como Whisper).

Esto ya es presente. GPT-5.5, Claude y Gemini 3.5 procesan imágenes con soltura, y la transcripción de audio funciona con herramientas gratuitas.

**Ejemplo práctico:** un consultor graba una reunión con el cliente en su móvil. Al volver a la oficina, la IA transcribe la grabación y genera un acta con los puntos de acción. Total: 10 minutos en vez de 45.

---

## 8. Errores comunes al empezar

- **"Uso ChatGPT para todo"** → Cada modelo tiene fortalezas distintas. Prueba al menos dos para comparar.
- **"La IA me da siempre la razón"** → Los modelos son complacientes por diseño. Pídele explícitamente que señale errores o debilidades en tu planteamiento.
- **"Copio el prompt de un tutorial"** → Los prompts funcionan cuando se adaptan a tu contexto. Di el rol, el formato, el idioma y el público.
- **"No sé por dónde empezar"** → Empieza por lo que más te duele: ¿qué tarea repetitiva haces cada semana que podrías delegarle a la IA?
- **"Subo todos mis documentos al GPT"** → Menos es más. Empieza con 3-5 documentos bien seleccionados.

---

## 9. Aplícalo

> [!example] Aplícalo
> Piensa en una tarea repetitiva de tu semana que te robe tiempo: leer correos largos, clasificar consultas que entran, sacar datos de informes. Ponle nombre con uno de los cuatro patrones: ¿estás resumiendo, clasificando, extrayendo o conversando? Después abre dos modelos distintos (por ejemplo Claude y ChatGPT; si solo tienes cuenta en uno, crear la otra en versión gratuita lleva dos minutos, un correo y una contraseña), dales la misma tarea con un dato real ya anonimizado y compara las respuestas. Quédate con el que mejor entienda tu contexto. Ese pequeño experimento te enseña más que cualquier tabla comparativa.

---

## Autoevaluación

> [!question] Comprueba lo que te llevas
> Respóndete a estas tres y despliega para comprobar.
>
> 1. "Sacar las cláusulas de penalización de un contrato de 40 páginas" es uno de los cuatro patrones. ¿Cuál?
> 2. Tienes un documento con datos de un cliente. ¿Pasa las tres preguntas de privacidad? ¿Qué haces con él?
> 3. Pagas ChatGPT Plus. ¿Incluye eso la clave de API que usará un flujo automático?

> [!note]- Soluciones
> 1. **Extraer**: sacas datos concretos de un texto.
> 2. **No**: falla la primera pregunta (datos de terceros). Lo anonimizas primero, o no lo subes, o usas un modelo local.
> 3. **No**: la suscripción de chat y el uso por API son cuentas y facturación separadas. Una no incluye la otra.

---

## 10. Cierre y aprendizajes clave

- La IA generativa es **una herramienta de proceso que necesita instrucciones claras**: tratarla como un buscador o un oráculo es la vía rápida a la decepción.
- Todo lo que harás con IA se reduce a **4 patrones**: resumir, clasificar, extraer, conversar.
- **Elegir modelo es elegir compromiso** entre calidad, coste y privacidad.
- **El coste tiene órdenes de magnitud conocidos**: gratuito para aprender, en torno a 20 euros al mes para trabajar en serio, céntimos por documento cuando automatices.
- **La privacidad cabe en tres preguntas**, y si tu empresa no permite la nube hay tres salidas concretas que plantearle a informática.
- **La privacidad no es opcional**: saber qué compartir y qué no es tan importante como saber usar la herramienta.
- **Las credenciales son la puerta de entrada**: si no las entiendes, te atascas antes de empezar.

> [!abstract] Resumen del módulo
> Ya puedes identificar los patrones de uso de la IA, elegir un modelo adecuado para tu contexto, evaluar los riesgos de privacidad y configurar tus primeras herramientas con criterio. Eso es todo lo que necesitas para pasar al siguiente módulo.

---

> [!info] Para profundizar
> - [Intro to Large Language Models](https://www.youtube.com/watch?v=zjkBMFhNj_g): Andrej Karpathy explica en una hora cómo funcionan los LLMs sin requerir conocimientos técnicos.
> - [How to use AI to do practical stuff](https://www.oneusefulthing.org/p/how-to-use-ai-to-do-practical-stuff): Guía del profesor Ethan Mollick (Wharton) con casos de uso concretos.
> - [Generative AI for Everyone](https://www.deeplearning.ai/courses/generative-ai-for-everyone/): Curso gratuito de Andrew Ng que cubre los fundamentos para audiencias no técnicas.
> - [Artificial Analysis: Comparador de modelos](https://artificialanalysis.ai/models): Comparativa independiente de modelos por precio, velocidad y calidad.
> - [Ollama](https://ollama.com/): Ejecuta modelos de IA en tu máquina, sin enviar datos a terceros.

---

En el [Módulo 2](modulo-2-automatizar-con-ia.md) construirás tu primer flujo automatizado: entrada de datos → IA procesa → resultado útil para tu equipo.
