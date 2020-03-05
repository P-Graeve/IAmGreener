const removeAppearClass = () => {
  const elems = document.querySelectorAll('.appear');
  if (elems) {
    elems.forEach(elem => {
      elem.classList.remove('appear');
    });
  }
}

export const initDashboard = () => {
  // remove all appear classes from elements on dom content loaded
  document.addEventListener('DOMContentLoaded', () => {
    removeAppearClass();
  });
}