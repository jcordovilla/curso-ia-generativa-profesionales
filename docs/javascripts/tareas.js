// Casillas de verificación que el curso recuerda.
// Guarda el estado de cada lista de comprobación en el navegador del alumno
// (localStorage), por página. Compatible con la navegación instantánea de
// Material (se re-ejecuta en cada cambio de página vía document$).
(function () {
  function init() {
    var key = "tareas:" + location.pathname;
    var saved = {};
    try {
      saved = JSON.parse(localStorage.getItem(key) || "{}");
    } catch (e) {
      saved = {};
    }
    var boxes = document.querySelectorAll(
      ".md-content .task-list-item input[type=checkbox]"
    );
    boxes.forEach(function (box, i) {
      box.disabled = false;
      if (saved[i]) {
        box.checked = true;
      }
      box.addEventListener("change", function () {
        saved[i] = box.checked;
        try {
          localStorage.setItem(key, JSON.stringify(saved));
        } catch (e) {
          /* almacenamiento no disponible: la casilla sigue funcionando en la sesión */
        }
      });
    });
  }

  // Con Material + navigation.instant, document$ emite en cada carga de página.
  if (typeof document$ !== "undefined" && document$.subscribe) {
    document$.subscribe(init);
  } else {
    document.addEventListener("DOMContentLoaded", init);
  }
})();
