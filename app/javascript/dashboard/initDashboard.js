const addAppearClass = () => {
  const elems = document.querySelectorAll('.add-appear');
  if (elems) {
    elems.forEach(elem => {
      const delay = parseInt(elem.dataset.delay);
      setTimeout(() => {
        elem.classList.add('appear');
      }, delay);
    });
  }
}

export const initDashboard = () => {
  // remove all appear classes from elements on dom content loaded
  document.addEventListener('DOMContentLoaded', () => {
    addAppearClass();
  });
}