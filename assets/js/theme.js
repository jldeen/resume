(function () {
  var root = document.documentElement;
  var toggle = document.querySelector("[data-theme-toggle]");
  var printBtn = document.querySelector("[data-print]");
  // Dark-first: dark unless the visitor has chosen light.
  function current() {
    return root.dataset.theme === "light" ? "light" : "dark";
  }

  function sync() {
    var dark = current() === "dark";
    root.dataset.theme = dark ? "dark" : "light";
    if (toggle) {
      toggle.setAttribute("aria-pressed", String(dark));
      toggle.setAttribute("aria-label", dark ? "Switch to light mode" : "Switch to dark mode");
    }
  }

  if (toggle) {
    toggle.hidden = false;
    toggle.addEventListener("click", function () {
      var next = current() === "dark" ? "light" : "dark";
      root.dataset.theme = next;
      try { localStorage.setItem("theme", next); } catch (e) {}
      sync();
    });
  }

  if (printBtn) {
    printBtn.hidden = false;
    printBtn.addEventListener("click", function () { window.print(); });
  }

  sync();
})();
