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

const clickableAmenity = () => {
  const amenityBtn = document.querySelector('#btn-amenities')
  if (amenityBtn) {
    amenityBtn.addEventListener('click',( ) => {
      const selectedAmenities = document.querySelectorAll(".clickable.active")
      let relativePath = "/neighborhoods?amenities="
      const amenities = []
      selectedAmenities.forEach((amenity) => amenities.push(amenity.dataset.amenity))
      window.location.replace(relativePath + amenities.join(","))
    });
  }
};

export { initClick, clickableAmenity };


// pegar todos os elementos que com a classe active(javascript)
// por meio do data-attribute mandar para a action da controller
// form tag rails
// params


