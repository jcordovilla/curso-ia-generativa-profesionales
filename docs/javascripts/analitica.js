// Analítica de visitas con GoatCounter: sin cookies, compatible con RGPD.
// Inerte mientras GC_CODE esté vacío. Para activarla: crear el sitio en
// goatcounter.com y poner aquí su código (p. ej. "jcordovilla").
(function () {
  var GC_CODE = "";
  if (!GC_CODE) return;

  var s = document.createElement("script");
  s.async = true;
  s.src = "https://gc.zgo.at/count.js";
  s.dataset.goatcounter = "https://" + GC_CODE + ".goatcounter.com/count";

  // Con navigation.instant de Material las páginas cambian sin recarga:
  // count.js cuenta la carga inicial y aquí contamos las navegaciones internas.
  s.addEventListener("load", function () {
    if (!window.document$) return;
    var primera = true;
    window.document$.subscribe(function () {
      if (primera) {
        primera = false;
        return;
      }
      if (window.goatcounter && window.goatcounter.count) {
        window.goatcounter.count({ path: location.pathname });
      }
    });
  });

  document.head.appendChild(s);
})();
