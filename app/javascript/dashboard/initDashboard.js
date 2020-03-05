const addAppearClass = () => {
  const elems = document.querySelectorAll('.add-appear');
  if (elems) {
    elems.forEach(elem => {
      elem.classList.add('appear');
    });
  }
}

export const initDashboard = () => {
  // remove all appear classes from elements on dom content loaded
  document.addEventListener('DOMContentLoaded', () => {
    setTimeout(addAppearClass, 10)
  });
}