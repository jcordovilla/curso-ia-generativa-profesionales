# Resumen del Itinerario 1 – No Code (principiante)

Este itinerario se diseñó con una intención muy concreta: **que un profesional senior pueda incorporar IA generativa a su trabajo real, usando herramientas no-code, sin convertirse en desarrollador y sin poner en riesgo información sensible**. Para lograrlo hemos ido subiendo la rampa de forma progresiva: primero bajar la ansiedad técnica, luego automatizar algo útil, después crear un asistente con documentación propia, más tarde hablar con técnicos, y finalmente dejarlo todo documentado.

Lo que sigue es el cierre: qué te llevas, cómo se conectan los módulos y cuál es el siguiente paso lógico.

---

## 1. Qué te llevas del itinerario

### Competencias prácticas
- **Moverte en una plataforma no-code/low-code** (n8n, Make, Zapier…) entendiendo cuentas, credenciales y conexiones.
- **Montar un flujo “de verdad”** del tipo: entrada (email/formulario) → IA que resume/clasifica → salida al equipo o sistema.
- **Crear un asistente/GPT con documentos propios** con reglas claras de seguridad y comportamiento.
- **Explicar tu solución a un técnico** usando el vocabulario correcto (API, endpoint, repo, contenedor) sin programar.
- **Documentar y entregar** el caso de uso para que lo pueda mantener otra persona.

### Competencias de criterio
- Distinguir cuándo basta con no-code y cuándo es mejor escalarlo al equipo técnico.
- Evaluar si un caso de uso tiene impacto (¿lo usan?, ¿ahorra tiempo?, ¿es claro?).
- Reconocer documentos que **no** debes subir a un GPT.
- Formular prompts más rígidos para automatización (no “charlas creativas”, sino respuestas previsibles).

---

## 2. Recordatorio de los módulos

**[Módulo 1 – Alfabetización digital para IA](modulo-1-alfabetizacion-digital-ia.md)**
Quitamos el miedo: cuentas, credenciales, webhooks y la primera prueba controlada. Sin esto, lo demás se atasca.

**[Módulo 2 – Automatización visual con IA para tareas de negocio](modulo-2-automatizacion-visual-negocio.md)**
Pasamos a un caso de uso mínimo viable: "email → IA resume → canal/CRM", con opción de añadir condiciones.

**[Módulo 3 – Creación de asistentes seguros con documentación propia](modulo-3-asistentes-seguros-con-docs-propias.md)**
Construimos un GPT/chatbot interno con tus documentos, con instrucciones claras y alerta de privacidad.

**[Módulo 4 – Puente hacia lo técnico (conceptual)](modulo-4-puente-hacia-lo-tecnico-conceptual.md)**
Tradujimos lo que haces en no-code al lenguaje de los desarrolladores: API, GitHub, Docker, endpoint.

**[Módulo 5 – Evaluación, documentación y handover](modulo-5-evaluacion-documentacion-handover.md)**
Cerramos el ciclo: checklist de pruebas, métricas sencillas y cómo pasar de "mi flujo" a "flujo del equipo".

En conjunto forman el recorrido: **aprender → aplicar → asegurar → explicar → entregar**.

---

## 3. Qué hemos resuelto (y qué dejamos fuera a propósito)

### Lo que sí resolvimos
- Que puedas **poner en marcha 1 caso de uso real** en tu entorno.
- Que puedas **controlar los documentos** que usas con IA.
- Que tengas **un formato de documentación único** (muy útil si publicas luego con MkDocs u Obsidian).
- Que puedas **hablar con IT** sin que te traduzcan todo.

### Lo que dejamos fuera (porque es del itinerario intermedio)
- Programación en Python.
- Despliegues complejos y automatizados.
- RAG avanzado y agentes orquestados.
- Docker como requisito (aquí solo lo vimos de forma conceptual).

No son carencias, son límites pedagógicos: primero consolidar el uso profesional, luego ya construiremos.

---

## 4. Cómo seguir a partir de aquí

Tienes tres caminos naturales:

1. **Profundizar en tu caso de uso actual**

   - Añadir más condiciones.
   - Conectar más fuentes de datos.
   - Mejorar el prompt para que responda exactamente como tu equipo necesita.

2. **Pasar al itinerario intermedio**

   - Llegas con ventaja: ya sabes qué quieres automatizar.
   - El itinerario 2 te enseñará a hacerlo con APIs, código y despliegue mínimo.
   - Podrás convertir tu flujo no-code en un servicio más estable.

3. **Convertirte en la persona de referencia del área**

   - Ayudar a otros a crear sus primeros flujos.
   - Establecer el vocabulario común que hemos usado aquí.
   - Velar por la parte de seguridad (qué se sube y qué no).

---

## 5. Recomendaciones finales

- **Usa siempre el mismo vocabulario** del itinerario: trigger, conexión, IA, salida, documentación.
- **Versiona tus prompts y documentos**: anota cambios y fecha, así el equipo sabe qué está usando.
- **No publiques asistentes sin revisar los documentos**: la seguridad no se delega en la herramienta.
- **Prueba cada vez que cambies algo**: una pequeña modificación en el prompt o la conexión puede romper el flujo.
- **Comparte pronto**: un flujo al 80% usado por el equipo vale más que uno al 100% que solo ves tú.

---

## 6. Cierre

Si ahora eres capaz de:
- detectar una tarea repetitiva,
- convertirla en un flujo con IA,
- darle instrucciones claras,
- documentarlo,
- y entregarlo,

…entonces **el itinerario 1 está cumplido**. A partir de aquí puedes mantenerte como estratega no-code de IA en tu área o dar el salto al nivel **constructor de prototipos de IA generativa**.

En cualquier caso, ha sido todo un logro que llegues hasta aquí y ya tienes la base sobre la que construir tu siguiente aventura en el uso de la IA.
