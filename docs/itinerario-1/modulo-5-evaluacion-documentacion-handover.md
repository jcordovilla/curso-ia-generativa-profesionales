# Itinerario 1 · Módulo 5  
## Evaluar y mantener tu caso de uso de IA: Más allá de la demo

Llegaste al punto que muchas organizaciones no alcanzan: **ya tienes un flujo o un GPT funcionando** (módulos 2 y 3) y sabes explicarlo al equipo técnico (módulo 4). Ahora toca la parte menos llamativa, pero más profesional: **que funcione todos los días, para más gente y sin sustos**.

Este módulo te da una forma sencilla de **probar, medir y mantener** tu caso de uso sin convertirte en administrador de sistemas. Lo verás todo en clave de negocio: ¿funciona?, ¿aporta?, ¿se puede pasar al equipo?

---

### 1. ¿Qué vamos a ver?

1. Por qué las pruebas son necesarias incluso en no-code.
2. Un **checklist de pruebas** rápido (datos, IA, salidas, errores).
3. **Métricas sencillas** para saber si vale la pena mantener el caso de uso.
4. Cómo pasar de “mi flujo” a “flujo del equipo”.
5. Qué hacer cuando cambian documentos, prompts o credenciales.
6. Señales de que hay que llamar al equipo técnico.

**Idea clave:** lo que hace que un piloto sobreviva no es lo brillante que fue la primera vez, sino **que alguien lo pueda repetir sin ti**.

---

### 2. ¿Por qué es relevante?

Porque la IA generativa no es estática:  
- cambian las APIs,
- cambian los modelos,
- cambian los documentos que subiste,
- cambian las personas que lo usan.

En la práctica esto significa: **si no tienes una forma de revisar tu caso de uso, se romperá en silencio** y la gente dejará de confiar.

**Mini-resumen:** este módulo trata de **confianza y continuidad**.

---

### 3. Checklist de pruebas (úsalo cada vez que cambies algo)

Cada vez que toques un prompt, una conexión o un documento, pasa por esta lista:

1. **Prueba de entrada**  
   - [ ] El flujo sigue recibiendo el dato (email, formulario, webhook).
   - [ ] La conexión sigue autorizada (no ha caducado la cuenta).

2. **Prueba de IA**  
   - [ ] La IA responde en el idioma correcto.
   - [ ] La IA devuelve el formato esperado (lista, párrafo, JSON).
   - [ ] La IA responde algo razonable con un caso real.

3. **Prueba de salida**  
   - [ ] El mensaje llega al canal/equipo correcto.
   - [ ] Se guarda en el sistema previsto (CRM, Sheets).
   - [ ] Se ve quién lo ha generado (trazabilidad mínima).

4. **Prueba de error**  
   - [ ] Si la IA falla, el flujo no se queda colgado sin avisar.
   - [ ] Existe algún sitio donde se ve el error (log, email de aviso).

**En la práctica esto significa:** no des por hecho que “como funcionó ayer, funcionará hoy”. Haz una prueba corta.

---

### 4. Métricas sencillas (sin volverte analista de datos)

No necesitas un cuadro de mando completo. Con 3-4 métricas puedes saber si tu caso de uso **merece seguir vivo**:

1. **Uso**  
   - ¿Cuántas ejecuciones ha tenido esta semana?
   - ¿Quién lo está usando realmente?

2. **Ahorro de tiempo estimado**  
   - ¿Cuánto tardabas en leer y resumir un email largo? (ej. 5 minutos)
   - ¿Cuántos emails procesa ahora la IA?
   - Ahorro aproximado = 5 min x nº de emails al día.

3. **Calidad percibida**  
   - ¿Las personas que reciben el resultado lo usan o lo ignoran?
   - Puedes hacer una mini-encuesta: “¿Te sirve tal como llega?” Sí / No / A medias.

4. **Errores o reintentos**  
   - ¿Cuántas veces falla por credenciales o formatos?

**Lo importante:** **no midas solo la tecnología**, mide el impacto en el proceso.  
Ejemplo de frase para tu informe interno:  
> “El flujo de resumen automático procesó 46 correos en la última semana, con un ahorro estimado de 3,8 horas de lectura y una satisfacción del 80% del equipo comercial.”

---

### 5. Mantener los documentos y los prompts

En el módulo 3 vimos que el GPT depende de los documentos que le subes. Eso implica mantenimiento.

**Reglas simples:**
- **Documento actualizado → asistente actualizado.** Si cambias el procedimiento real, cambia el documento del asistente.
- **Versión visible.** Nombra los archivos con fecha o versión: `procedimiento_onboarding_v2_2025.pdf`.
- **Prompt documentado.** Guarda en un sitio (Notion, SharePoint, tu Obsidian) la versión del prompt que estás usando.
- **No mezclar objetivos.** Si el prompt ya hace “resumir”, no le metas en el mismo prompt “además traduce” y “además clasifica”; eso aumenta las posibilidades de respuesta rara.

**Señal de alerta:** si la gente empieza a decir “ya no responde igual” o “ahora contesta cosas raras”, revisa primero: 1) ¿cambiaste documentos?, 2) ¿cambió el prompt?, 3) ¿cambió el modelo en la plataforma?

---

### 6. De “mi flujo” a “flujo del equipo”

Uno de los objetivos del itinerario era que **lo que hagas no se quede solo en tu cuenta**. Para eso:

1. **Centraliza credenciales**  
   - Pide que la cuenta de la plataforma (n8n, Make, GPTs) sea de equipo, no personal.
   - Así no se rompe cuando tú cambies de puesto o de dispositivo.

2. **Documenta en una página simple**  
   Incluye:
   - Qué hace el flujo.
   - Cuándo se ejecuta.
   - Qué entradas y salidas tiene.
   - Quién mantiene las credenciales.

3. **Define responsable funcional**  
   - No tiene que ser técnico.
   - Su trabajo es revisar que el resultado siga siendo útil.

4. **Explica cómo reportar un fallo**  
   - “Si no te llega el resumen, avisa en este canal.”
   - “Si la respuesta del GPT no es correcta, pega la pregunta y la respuesta.”

**Mini-resumen:** si solo tú sabes cómo funciona, **no está listo**. Si otros lo pueden probar y arreglar, **sí está listo**.

---

### 7. ¿Cuándo hay que llamar al equipo técnico?

No todo lo tienes que resolver tú. Llama o pide ayuda cuando:
- el volumen de ejecuciones crece mucho (costo o límites de la plataforma),
- necesitas conectarte a sistemas internos que requieren permisos especiales,
- quieres exponer tu flujo como servicio para otras áreas,
- hay que guardar logs de forma más seria (auditoría, cumplimiento),
- o cuando la seguridad no te deja usar una credencial personal.

**Frase útil:**  
> “El caso de uso ya está validado en no-code. Necesitamos una versión más estable / compartida / integrada. Os paso el flujo y los ejemplos de entrada y salida.”

Con eso estás haciendo tu parte.

---

### 8. Errores y malentendidos comunes

- **“Ya funciona, lo olvido.”** → la IA y las APIs cambian, hay que revisar.
- **“No hace falta documentar porque es visual.”** → sí hace falta; la otra persona no sabe qué prompt pusiste.
- **“Los usuarios siempre van a usarlo bien.”** → no, harán preguntas raras al GPT o subirán documentos equivocados. Pon instrucciones en el propio GPT.
- **“Si falla, me avisará la herramienta.”** → no siempre. Pon un paso de notificación o revisa el historial de ejecuciones.
- **“Si otro lo copia en su cuenta ya vale.”** → eso fragmenta. Mejor una versión única que todos usen.

---

### 9. Cierre y aprendizajes clave

- **Evaluar y mantener** es lo que convierte tu experimento en una práctica estable del equipo.
- Un **checklist de pruebas** evita la mayoría de frustraciones.
- Con **4 métricas sencillas** puedes demostrar valor sin montar un dashboard.
- Documentar el flujo y centralizar las credenciales permite que otros lo usen.
- Saber **cuándo escalarlo al equipo técnico** te hace más creíble y profesional.

**Mini-resumen final:**  
> “Sé probar, medir y mantener un caso de uso de IA hecho con herramientas no-code, y sé cómo pasarlo del ámbito personal al del equipo sin perder seguridad ni control.”

Con esto cierras el itinerario 1 como **Estratega de IA**: sabes usar, configurar, explicar y mantener un caso de uso real en tu entorno.

No olvides hacer un repaso final del curso en el capítulo de [Resumen](resumen.md).
