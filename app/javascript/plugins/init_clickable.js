const initClick = () => {

const sports = document.querySelectorAll('.clickable');

const toggleActiveClass = (event) => {
  event.currentTarget.classList.toggle('active');
};

const toggleActiveOnClick = (sport) => {
  sport.addEventListener('click', toggleActiveClass);
};

sports.forEach(toggleActiveOnClick);

};

export { initClick };

// pegar todos os elementos que com a classe active(javascript)
// por meio do data-attribute mandar para a action da controller
// form tag rails
// params
