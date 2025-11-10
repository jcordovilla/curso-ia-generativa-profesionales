
# IA Generativa para Profesionales

> **Bienvenido/a** al curso de IA Generativa para Profesionales. Este programa está diseñado para profesionales de todo tipo que quieren aprovechar la inteligencia artificial en su trabajo diario, sin necesidad de ser programadores.

## ¿Qué encontrarás aquí?

Este curso te ofrece dos itinerarios prácticos:

- **Itinerario 1 – No Code:** Aprende a automatizar tareas y crear asistentes personalizados usando herramientas visuales, sin tocar código. Ideal para quienes buscan aplicar la IA de forma inmediata en procesos reales.

- **Itinerario 2 – Low Code:** Da el salto a la capa técnica, entendiendo cómo funcionan los modelos de lenguaje y cómo construir prototipos sencillos con código, APIs y entornos preparados.

Cada módulo está pensado para que puedas aplicar lo aprendido en tu entorno profesional, con ejemplos, recursos y buenas prácticas de seguridad y documentación.

## Propósito del curso

El objetivo no es memorizar conceptos, sino aprender a **usar la IA con criterio y autonomía**, integrándola en tus procesos y comunicando con equipos técnicos de forma efectiva. Al finalizar, tendrás casos de uso reales documentados y listos para compartir o escalar en tu organización.

## ¿Cómo empezar?


1. Explora la [introducción del itinerario 1 (No Code)](https://jcordovilla.github.io/curso-ia-generativa-profesionales/itinerario-1/) si quieres comenzar sin programación.
2. Si ya tienes experiencia técnica o curiosidad por el código, revisa el [itinerario 2 (Low Code)](https://jcordovilla.github.io/curso-ia-generativa-profesionales/itinerario-2/) .

Tu experiencia profesional es el punto de partida; la IA es el nuevo instrumento. ¡Prepárate para aprender con ritmo y sentido!

---




## Autoría y agradecimientos

Este curso ha sido creado por [**José Cordovilla**](https://www.linkedin.com/in/josecordovilla/), inspirado en el trabajo colaborativo del equipo de **AgentOps** de la comunidad [**GenAI Global**](https://www.linkedin.com/company/gen-ai-global/): Arturo Cuevas, Cristian Ursan, Jhen Cano, Ralph Eisenhardt y Frédérique Lambers, gracias por vuestra colaboración, siempre. 

La estructura, los itinerarios y los recursos reflejan aprendizajes y buenas prácticas compartidas por profesionales de la comunidad, con el objetivo de acercar la IA generativa a perfiles no técnicos y facilitar su adopción en entornos reales.

---

## Acceso al curso online

Puedes consultar el curso completo y navegar por los itinerarios y módulos en:

👉 [Curso IA Generativa para Profesionales (GitHub Pages)](https://jcordovilla.github.io/curso-ia-generativa-profesionales/)

---

## Información técnica del repositorio

Este repositorio publica el curso en GitHub Pages, generado desde contenido en `docs/` usando MkDocs (origen en Obsidian).

- El contenido fuente está en `docs/` y la salida estática en `site/`.
- `mkdocs.yml` define la configuración del sitio.
- La carpeta `site/` contiene la versión generada lista para publicar.

### Ver el sitio localmente
Recomendado: usar un entorno virtual. En macOS / zsh:

```zsh
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
# instalar MkDocs (y un tema si se requiere, p. ej. mkdocs-material)
pip install mkdocs mkdocs-material

# Servir en local (ver en http://127.0.0.1:8000)
mkdocs serve

# O generar los archivos estáticos en `site/`
mkdocs build
```

Si prefieres que `site/` no esté en el repositorio (recomendado cuando se genera en CI/GitHub Actions), puedes eliminarlo del control de versiones y mantenerlo en `.gitignore`:

```zsh
git rm -r --cached site
git commit -m "Stop tracking generated site/"
```

### Contribuir
- Edita o añade contenido en `docs/` (o en tu flujo de Obsidian que luego exporte a `docs/`).
- Prueba localmente con `mkdocs serve`.
- Haz un Pull Request cuando estés listo.
