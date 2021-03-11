const hover = () => {
  const action = document.querySelector('.actions');
  const info = document.querySelector('.card-product-infos');
  const product = document.querySelector('.card-product');
  info.addEventListener('mouseover', () => {
    action.classList.remove('hide');
    product.style.backgroundColor = 'rgba(121, 121, 121, 0.474)'
  });
  info.addEventListener('mouseout', () => {
    action.classList.add('hide');
    product.style.backgroundColor = 'transparent';
  })
};

export { hover };
