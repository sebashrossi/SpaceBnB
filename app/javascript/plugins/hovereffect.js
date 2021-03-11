const hover = () => {
  const action = document.querySelector('.actions');
  const infos = document.querySelectorAll('.card-product-infos');
  const product = document.querySelector('.card-product');
  if (infos) {
    infos.forEach((info) => {

      info.addEventListener('mouseover', () => {
        info.querySelector('.actions').classList.remove('hide');
        info.parentElement.style.backgroundColor = 'rgba(121, 121, 121, 0.474)'
      });
      info.addEventListener('mouseout', () => {
        info.querySelector('.actions').classList.add('hide');
        info.parentElement.style.backgroundColor = 'transparent';
      })
    })
    }
  };

export { hover };
