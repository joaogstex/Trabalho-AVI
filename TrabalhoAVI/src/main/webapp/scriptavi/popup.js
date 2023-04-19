/**
 * @author João Gustavo
 */

 //pegar todos os elementos <td> com a classe "coordenador"
const coordenadores = document.querySelectorAll('.coordenador');

// adicionar evento de clique a cada elemento
coordenadores.forEach(coordenador => {
  coordenador.addEventListener('click', () => {
    const info = coordenador.dataset.coordenador;
    const modal = document.getElementById('modal');
    const modalText = document.getElementById('modal-text');
    modalText.innerText = info; 
    modal.style.display = 'block'; 
  });
});

// adicionar evento de clique ao botão de fechar o modal
const closeBtn = document.querySelector('.close');
closeBtn.addEventListener('click', () => {
  const modal = document.getElementById('modal');
  modal.style.display = 'none'; 
});