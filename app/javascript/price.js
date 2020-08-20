function input () {
  const price = document.getElementById('item-price')
  const tax = document.getElementById('add-tax-price')
  const profit = document.getElementById('profit')

  price.addEventListener('input', ()=>{
    tax.textContent = Math.floor(price.value / 10);
    profit.textContent = Math.floor(price.value - tax.textContent);
  })
}
window.addEventListener("load", input);
