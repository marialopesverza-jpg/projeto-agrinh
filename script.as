function mostrarSecao(id) {
  const secoes = document.querySelectorAll(".secao");

  secoes.forEach(secao => {
    secao.classList.add("escondido");
  });

  document.getElementById(id).classList.remove("escondido");
}
