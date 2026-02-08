
# IA Generativa para Profesionales

> **Bienvenido/a** al curso de IA Generativa para Profesionales. Un programa práctico para profesionales senior que quieren usar la inteligencia artificial con criterio, autonomía y resultados reales.

## Qué encontrarás aquí

Un curso de **7 módulos progresivos** que te lleva desde entender qué es la IA generativa hasta construir tu propio sistema con AI coding assistants y MCP:

1. **Entender la IA generativa** — Modelos, patrones de uso, privacidad
2. **Automatizar con IA** — Flujos entrada → IA → salida con herramientas no-code
3. **Asistentes con documentos** — GPTs, Claude Projects, Gemini Gems
4. **IA que programa por ti** — AI coding assistants, MCP, modelos locales
5. **Construir tu sistema** — RAG, agentes y APIs (profundización opcional)
6. **Evaluar y escalar** — Métricas, documentación, puente con IT
7. **Tu caso de uso** — Plantilla completa para diseñar tu propio proyecto

Cada módulo tiene una **vía rápida** con los conceptos esenciales y secciones **Profundiza** opcionales para quienes quieran entrar en la capa técnica.

## Propósito del curso

El objetivo no es memorizar conceptos, sino aprender a **usar la IA con criterio y autonomía**, integrándola en tus procesos y comunicando con equipos técnicos de forma efectiva. Al finalizar, tendrás un caso de uso documentado, listo para compartir o escalar en tu organización.

## Cómo empezar

Explora la [bienvenida del curso](https://jcordovilla.github.io/curso-ia-generativa-profesionales/) y comienza por el Módulo 1.

Tu experiencia profesional es el punto de partida; la IA es el nuevo instrumento.

---

## Autoría y agradecimientos

Este curso ha sido ideado y creado por [**José Cordovilla**](https://www.linkedin.com/in/josecordovilla/), inspirado y enriquecido por las contribuciones del fantástico equipo de **AgentOps** [**GenAI Global**](https://www.linkedin.com/company/gen-ai-global/): [Arturo Cuevas](https://www.linkedin.com/in/arturo-cuevas-gomez/), [Cristian Ursan](https://www.linkedin.com/in/cristianursan/), [Jhen Cano](https://www.linkedin.com/in/jhenaynacano/), [Ralph Eisenhardt](https://www.linkedin.com/in/ralph-eisenhardt-15169a39/) y [Frédérique Lambers](https://www.linkedin.com/in/frederique-lambers/). Su trabajo colaborativo ha sido la base para los casos prácticos y la autoevaluación que nutren este contenido. Gracias por vuestra colaboración y vuestro talante, siempre.

---

## Acceso al curso online

Puedes consultar el curso completo y navegar por los módulos en:

[Curso IA Generativa para Profesionales (GitHub Pages)](https://jcordovilla.github.io/curso-ia-generativa-profesionales/)

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
pip install mkdocs mkdocs-material mkdocs-callouts

# Servir en local (ver en http://127.0.0.1:8000)
mkdocs serve

# O generar los archivos estáticos en `site/`
mkdocs build
```

### Publicar en GitHub Pages

Este repositorio está configurado para publicar automáticamente en GitHub Pages usando GitHub Actions. El workflow se ejecuta cada vez que haces push a la rama `main`.

#### Configuración inicial (solo la primera vez)

1. **Habilita GitHub Pages en tu repositorio:**
   - Ve a **Settings** > **Pages** en tu repositorio de GitHub
   - En **Source**, selecciona **GitHub Actions** (no "Deploy from a branch")
   - Guarda los cambios

2. **Asegúrate de que el workflow está en el repositorio:**
   - El archivo `.github/workflows/ci.yml` ya está creado y configurado

3. **Primera publicación:**
   - Haz push de cualquier cambio a `main`
   - El workflow se ejecutará automáticamente
   - Tu sitio estará disponible en `https://[tu-usuario].github.io/[nombre-repo]/`

### Contribuir
- Edita o añade contenido en `docs/` (o en tu flujo de Obsidian que luego exporte a `docs/`).
- Prueba localmente con `mkdocs serve`.
- Haz un Pull Request cuando estés listo.
