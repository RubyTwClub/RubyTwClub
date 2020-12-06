window.addEventListener('DOMContentLoaded', function(){
    const hamberger = document.querySelector('.burgar_btn');
    const menuDropdwon = document.querySelector('.menu-dropdwon');
    hamberger.addEventListener('click',function(e){
      e.preventDefault()
      console.log('bbb')
      menuDropdwon.classList.toggle('open');
    })
})