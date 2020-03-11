const openInfoWindow = (e) => {
  const id = parseInt(e.currentTarget.dataset.badgeId);
  console.log(id);
  const infoWindow = document.querySelector(`#badge-${id}`);
  infoWindow.classList.add('infowindow-appear');
  infoWindow.querySelector('i.fas.fa-times').addEventListener('click', () => {
    infoWindow.classList.remove('infowindow-appear');
  });
}

const closeInfoWindow = (e) => {
  const id = parseInt(e.currentTarget.dataset.badgeId);
  console.log(e.currentTarget);
  const infoWindow = document.querySelector(`#badge-${id}`);
  infoWindow.classList.remove('infowindow-appear');
}

export const initBadgeInfoWindow = () => {
  const badges = document.querySelectorAll('.ui-badge');
  if (badges) {
    badges.forEach(badge => {
      badge.addEventListener('click', openInfoWindow);
    });
  }
}