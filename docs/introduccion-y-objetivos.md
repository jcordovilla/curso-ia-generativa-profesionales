## Introducción

Este itinerario está pensado para profesionales **senior**, con experiencia de negocio, gestión o consultoría, que **no van a convertirse en programadores**, pero sí necesitan comprender y manejar la Inteligencia Artificial Generativa de forma operativa, con autonomía y con el suficiente criterio como para hablar con equipos técnicos o proveedores.

El punto de partida de este itinerario no es “vamos a aprender herramientas”, sino **“vamos a reducir la barrera tecnológica”** que suele aparecer cuando se mezclan credenciales, APIs, conectores y paneles web que cambian cada tres meses. Por eso, los objetivos combinan conocimiento conceptual con práctica guiada, y cada módulo tendrá una versión “mínimo viable” que cualquiera pueda completar, y una versión “ampliada” para quien se sienta más cómodo.

---

## 1. Objetivo principal

Capacitar al participante para **diseñar, configurar y poner en marcha** al menos **un caso de uso de IA Generativa conectado a su actividad profesional**, utilizando herramientas no-code / low-code (n8n, Make, Zapier, constructores de GPTs, copilots corporativos), y documentarlo de forma que un equipo técnico pueda revisarlo o llevarlo a producción.

---

## 2. Objetivos específicos

### 2.1 Comprensión funcional de la GenAI
- Entender qué hace realmente un modelo generativo (qué transforma y qué no).
- Reconocer los **patrones de uso más frecuentes**: resumir, clasificar, extraer, conversar, generar contenido.
- Diferenciar entre **“usar un chat”** y **“diseñar una interacción”** (prompts estables, tono, formato de salida).
- Adoptar un vocabulario común para hablar con compañeros y con IT: *modelo, contexto, herramienta, flujo, conector, fuente de datos*.

### 2.2 Alfabetización digital mínima para automatizar
- Identificar los componentes básicos de un flujo no-code: **trigger → tarea → salida**.
- Saber qué es una **credencial** y por qué a veces hay que pedírsela a IT o Seguridad.
- Navegar una plataforma de automatización (n8n / Make / Zapier) sin perderse en la interfaz.
- Probar un flujo de forma controlada, con datos de ejemplo, sin romper nada.

### 2.3 Creación de asistentes y bots sobre información propia
- Configurar un asistente/GPT/chatbot con documentos propios o de la empresa, usando asistentes ya preparados (p. ej. GPTs personalizados o asistentes de plataforma).
- Aplicar **reglas de seguridad básicas**: qué documentos no subir, cómo anonimizar, cómo limitar la respuesta.
- Ajustar el comportamiento del asistente para tareas concretas (atención, soporte interno, elaboración de textos).

### 2.4 Documentar y comunicar el caso de uso
- Redactar una **ficha de caso de uso** con: propósito, entradas, salidas, restricciones y responsables.
- Explicar qué parte ha hecho el usuario en no-code y qué parte requiere soporte técnico.
- Dejar una guía breve tipo “cómo se usa” para el resto del equipo.

### 2.5 Evaluar y mejorar
- Definir 5–10 ejemplos de prueba (lo que luego IT llamará “prompts de regresión”).
- Medir si el caso de uso aporta valor: tiempo ahorrado, pasos eliminados, claridad de la salida.
- Iterar sobre el prompt o sobre el flujo sin volver a empezar de cero.

---

## 3. Criterios de diseño pedagógico (pensados para perfiles senior)

- **Relevancia primero**: cada ejemplo se vinculará a tareas reales del grupo (resumen de correos, actualización de CRM, análisis de feedback, generación de contenido).
- **Ritmo guiado**: cada módulo tendrá demostración en vivo / paso a paso + versión escrita con capturas.
- **Terminología estable**: evitaremos cambiar de nombre a las cosas (“nodo”, “bloque”, “paso”, “acción”) dentro del itinerario.
- **Doble nivel**: quien vaya rápido podrá activar funciones extra (ramas, condiciones, formatos JSON), pero la ruta principal será siempre alcanzable.
- **Seguridad por defecto**: todas las prácticas explicarán qué datos no se deben enviar a servicios externos sin validación.

---

## 4. Qué sabrá hacer el participante al terminar

Al completar el itinerario, el participante será capaz de:

1. **Detectar una tarea repetitiva** de su trabajo y expresarla como caso de uso de IA.
2. **Elegir la herramienta adecuada** (chat, asistente, flujo no-code) sin depender siempre de un técnico.
3. **Configurar un flujo sencillo** que conecte una fuente (correo, formulario, carpeta) con un modelo de IA y de ahí a una salida (email, documento, chat, CRM).
4. **Crear o ajustar un asistente** que responda con el tono y el formato que su organización necesita.
5. **Documentar el resultado** para que pueda ser revisado, validado y eventualmente industrializado.

---

## 5. Relación con el itinerario intermedio

- Este itinerario **no exige** instalar VS Code, trabajar con terminal ni escribir Python.
- Sin embargo, está pensado para que, si en el futuro el participante quiere pasar al itinerario intermedio, **ya lleve hecho el 60% de lo difícil**: entender el flujo, el caso de uso y la ficha funcional.
- De este modo, el itinerario intermedio se convierte en “cómo hacer lo mismo, pero con más control y más integración”, y no en “empezar de cero”.