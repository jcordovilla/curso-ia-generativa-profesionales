## Propósito del módulo

Cerramos el itinerario básico. Hasta aquí ya sabes:
1. Moverte en una herramienta no-code/low-code.
2. Montar automatizaciones con IA que hacen algo útil.
3. Crear un asistente/GPT con tus propios documentos.
4. Hablar mínimamente el idioma de las APIs y del equipo técnico.

El **Módulo 5** existe para que **todo eso no se pierda** y para que lo que has construido pueda:
- evaluarse (¿funciona bien? ¿cuándo falla?),
- mantenerse (¿quién lo toca cuando cambie la contraseña?),
- y entregarse a otra persona o equipo (handover) sin tener que volver a explicarlo entero.

Piensa este módulo como la parte “profesionalizadora” del itinerario.

---

## Resultados de aprendizaje

Al finalizar este módulo, el participante será capaz de:

1. Definir un conjunto pequeño y realista de **casos de prueba** (inputs) para su flujo o asistente.
2. Medir de forma sencilla si el caso de uso está aportando valor (tiempo ahorrado, pasos eliminados, claridad).
3. Documentar el caso de uso con una estructura estándar que incluya propósito, pasos, datos, credenciales y responsables.
4. Redactar un **handover** para IT o para el compañero del itinerario intermedio.
5. Establecer reglas básicas de mantenimiento (cuándo revisar, qué mirar cuando falla, a quién avisar).

---

## Idea central del módulo

En no-code es muy fácil crear cosas. Lo difícil es:
- que el resto del equipo las entienda,
- que sigan funcionando dentro de un mes,
- y que se puedan volver a poner en marcha si un día fallan.

La única forma de conseguirlo es **dejando rastro**: pruebas, documentación y responsables.

---

## Contenidos del módulo

### 1. Qué significa “evaluar” en este contexto

No vamos a hacer tests automatizados de ingeniería; vamos a hacer **evaluación operativa**:

- **¿Hace lo que dijimos que tenía que hacer?**
- **¿Lo hace en todos los casos habituales o solo en el “caso bonito”?**
- **¿Se entiende la salida?** (esto es crucial con IA)
- **¿Cuánto tarda la persona en obtener el resultado ahora vs antes?**

Esto se plasma en una tablita muy simple de “casos de prueba”.

---

### 2. Definir casos de prueba (prompt set / input set)

Reutilizamos la idea de las 5–10 entradas de prueba que ya vimos antes:

1. **Caso estándar** (el que enseñamos en demo).
2. **Caso largo** (texto más largo de lo habitual).
3. **Caso raro** (faltan datos, idioma distinto).
4. **Caso de error probable** (expresión ambigua, categoría no contemplada).
5. **Caso real** de la empresa (algo que de verdad se procesó la semana pasada).

Para cada caso, anotaremos:
- entrada usada,
- qué esperamos que pase (salida esperada),
- qué pasó realmente,
- acción si no coincide (ajustar prompt, añadir condición, avisar a IT).

Esto se guarda en el mismo vault de Obsidian o en la wiki del equipo.

---

### 3. Métricas sencillas de valor

Para perfiles senior y procesos de negocio, tres métricas suelen ser suficientes:

1. **Tiempo ahorrado por ejecución**  
   - Antes: 5–10 minutos leyendo y clasificando.  
   - Ahora: 1 minuto revisando lo que hizo la IA.
2. **Porcentaje de ejecuciones sin intervención**  
   - “De 10 entradas, 7 se procesan solas, 3 tuve que corregir”.
3. **Calidad percibida**  
   - ¿La salida se puede enviar tal cual?  
   - ¿O hay que reescribirla?

Si el caso de uso tiene estas métricas apuntadas aunque sea de forma informal, ya es mucho más fácil justificarlo o pedir que IT lo industrialice.

---

### 4. Documentación estándar

Proponemos una estructura de documentación que encaja tanto en Obsidian como en un repo que luego se publique con mkdocs:

**Título del caso de uso**  
**1. Propósito de negocio**  
Explica el “para qué” en 3–5 líneas.

**2. Flujo funcional**  
- Trigger:
- Pasos de IA (prompt y salida esperada):
- Condiciones / ramas:
- Salidas:

**3. Datos y fuentes**  
- Origen de los datos (correo, formulario, sheet…)
- Destino (sheet, CRM, email)
- Formatos esperados (texto, JSON, tabla)

**4. Credenciales / accesos**  
- Qué credenciales usa
- Quién las gestiona
- Cada cuánto caducan (si aplica)

**5. Casos de prueba**  
- Lista con las entradas y el resultado esperado
- Notas de problemas conocidos

**6. Responsables**  
- Quién lo creó
- Quién lo mantiene
- A quién avisar si falla

**7. Observaciones técnicas** (para IT)  
- Usa nodo HTTP con POST a X
- Usa API de modelo Y
- Requiere acceso a Z

Con esta estructura, cualquier miembro del equipo puede abrir la nota y entender el caso de uso sin pedirte una reunión.

---

### 5. Handover a IT o al itinerario intermedio

El handover es simplemente **poner la información en el idioma del técnico**. Para eso:

1. Adjuntas tu documentación estándar (la de arriba).
2. Añades un diagrama muy simple (puede ser texto):
   - “Email → IA clasifica → si comercial → email a ventas / si no → sheet”.
3. Indicas qué parte te gustaría que se sustituyera por un servicio más robusto (por ejemplo: “el paso de envío de email que ahora hago en n8n, llevarlo a nuestro sistema interno”).
4. Indicas dónde está el material (vault, repo, carpeta compartida).

Con esto, el técnico tiene todo lo necesario sin perseguirte.

---

### 6. Mantenimiento básico

Para que tu automatización o asistente no muera al primer cambio:

- **Revisión mensual rápida (10 min):**
  - ¿Se han ejecutado los flujos?
  - ¿Hay errores repetidos?
  - ¿Ha cambiado alguna contraseña o key?
- **Revisión de contenidos (si es asistente):**
  - ¿Los documentos subidos siguen siendo válidos?
  - ¿Hay una versión nueva del procedimiento? → subirla y quitar la vieja.
- **Registro de cambios:**
  - Fecha
  - Cambio realizado
  - Motivo

Esto puede estar en la misma nota markdown, al final, como un pequeño changelog.

---

## Actividad práctica guiada

**Título:** “Evalúa y entrega tu caso de uso”

1. Elige uno de los flujos o asistentes que hiciste en los módulos anteriores.
2. Define 5 casos de prueba (como en el punto 2).
3. Ejecútalos y apunta resultados.
4. Completa la documentación estándar (punto 4).
5. Añade una sección “pendiente de IT” con lo que te gustaría que hicieran.
6. Guarda la nota en el vault / repo para que el resto del grupo pueda verla.

**Variante rápida:** si el participante tiene poco tiempo, al menos que complete la documentación y añada 2 casos de prueba reales.

---

## Recursos recomendados

- Plantilla de documentación en markdown (lista para copiar y pegar en Obsidian).
- Ejemplos de “prompt sets” o colecciones de pruebas de otras automatizaciones.
- Mini-guía de n8n / Make sobre cómo ver logs e historial (para identificar errores).
- Si la organización lo tiene: procedimiento interno de “paso a producción” o “solicitud de integración”.

---

## Criterios de finalización del módulo

El módulo se considera completado cuando el participante:

1. Tiene **al menos un caso de uso documentado** con la estructura propuesta.
2. Ha ejecutado ese caso de uso con varios ejemplos y ha dejado constancia del resultado.
3. Ha identificado quién es el responsable de las credenciales y del mantenimiento.
4. Ha dejado claro, por escrito, qué parte debería tomar IT o un perfil más técnico.

Con esto se cierra el **Itinerario 1 (non coders / estrategas de IA)**: ya no solo sabes “hacer que funcione”, sino también **hacer que perdure y que otros lo puedan llevar más lejos**.