
# IA Generativa para Profesionales

> **Bienvenido/a** al curso de IA Generativa para Profesionales. Este programa está diseñado para profesionales de todo tipo que quieren aprovechar la inteligencia artificial en su trabajo diario, sin necesidad de ser programadores.

## ¿Qué encontrarás aquí?

Este curso te ofrece dos itinerarios prácticos:

- **Itinerario 1 – No Code:** Aprende a automatizar tareas y crear asistentes personalizados usando herramientas visuales, sin tocar código. Ideal para quienes buscan aplicar la IA de forma inmediata en procesos reales.

- **Itinerario 2 – Low Code:** Da el salto a la capa técnica, entendiendo cómo funcionan los modelos de lenguaje y cómo construir prototipos sencillos con código, APIs y entornos preparados.

Cada módulo está pensado para que puedas aplicar lo aprendido en tu entorno profesional, con ejemplos, recursos y buenas prácticas de seguridad y documentación.

## Propósito del curso

El objetivo no es memorizar conceptos, sino aprender a **usar la IA con criterio y autonomía**, integrándola en tus procesos y comunicando con equipos técnicos de forma efectiva. Al finalizar, tendrás casos de uso reales documentados y listos para compartir o escalar en tu organización.

La estructura, los itinerarios y los recursos reflejan aprendizajes y buenas prácticas compartidas por profesionales de la comunidad, con el objetivo de acercar la IA generativa a perfiles no técnicos y facilitar su adopción en entornos reales.

## ¿Cómo empezar?

1. Explora la [introducción del itinerario 1 (No Code)](https://jcordovilla.github.io/curso-ia-generativa-profesionales/itinerario-1/) si quieres comenzar sin programación.
2. Si ya tienes experiencia técnica o curiosidad por el código, revisa el [itinerario 2 (Low Code)](https://jcordovilla.github.io/curso-ia-generativa-profesionales/itinerario-2/) .

Tu experiencia profesional es el punto de partida; la IA es el nuevo instrumento. ¡Prepárate para aprender con ritmo y sentido!

---

## Autoría y agradecimientos

Este curso ha sido ideado y creado por [**José Cordovilla**](https://www.linkedin.com/in/josecordovilla/), inspirado y enriquecido por las contribuciones del fantástico equipo de **AgentOps** [**GenAI Global**](https://www.linkedin.com/company/gen-ai-global/): [Arturo Cuevas](https://www.linkedin.com/in/arturo-cuevas-gomez/), [Cristian Ursan](https://www.linkedin.com/in/cristianursan/), [Jhen Cano](https://www.linkedin.com/in/jhenaynacano/), [Ralph Eisenhardt](https://www.linkedin.com/in/ralph-eisenhardt-15169a39/) y [Frédérique Lambers](https://www.linkedin.com/in/frederique-lambers/). Su trabajo colaborativo ha sido la base para los casos prácticos y la autoevaluación que nutren este contenido. Gracias por vuestra colaboración y vuestro talante, siempre. 

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

### Publicar en GitHub Pages

Este repositorio está configurado para publicar automáticamente en GitHub Pages usando GitHub Actions. El workflow se ejecuta cada vez que haces push a la rama `main`.

#### Configuración inicial (solo la primera vez)

1. **Habilita GitHub Pages en tu repositorio:**
   - Ve a **Settings** → **Pages** en tu repositorio de GitHub
   - En **Source**, selecciona **GitHub Actions** (no "Deploy from a branch")
   - Guarda los cambios

2. **Asegúrate de que el workflow está en el repositorio:**
   - El archivo `.github/workflows/ci.yml` ya está creado y configurado
   - Hace commit y push de este archivo si aún no está en el repositorio

3. **Primera publicación:**
   - Haz push de cualquier cambio a `main` (o edita y guarda cualquier archivo)
   - El workflow se ejecutará automáticamente
   - Puedes ver el progreso en la pestaña **Actions** de tu repositorio
   - Una vez completado, tu sitio estará disponible en `https://[tu-usuario].github.io/[nombre-repo]/`

#### Publicaciones automáticas

Después de la configuración inicial, cada vez que hagas push a `main`:
- El workflow se ejecutará automáticamente
- Construirá el sitio con MkDocs
- Lo publicará en GitHub Pages
- El sitio se actualizará en unos minutos

#### Publicación manual (alternativa)

Si prefieres publicar manualmente sin GitHub Actions:

```zsh
# Construir el sitio
mkdocs build

# Instalar gh-pages (si no lo tienes)
pip install ghp-import

# Publicar en la rama gh-pages
ghp-import -n -p -f site/
```

Luego configura GitHub Pages para usar la rama `gh-pages` como fuente.

### Contribuir
- Edita o añade contenido en `docs/` (o en tu flujo de Obsidian que luego exporte a `docs/`).
- Prueba localmente con `mkdocs serve`.
- Haz un Pull Request cuando estés listo.
