const botoaoSalvar = document.querySelectorAll('.button-salvar')

botoaoSalvar.forEach((botao) => {
  botao.addEventListener('click', () => {
    window.location.href = '/frontend/pages/professor/turmas.html'
  })
})
